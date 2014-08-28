package com.hilltop.interceptor.permissions;

import java.io.IOException;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.wabacus.system.*;
import com.wabacus.system.intercept.AbsPageInterceptor;

/**
 * 权限全局拦截器
 * @author yushan
 *
 */
public class GlobalPermissionsInterceptor extends AbsPageInterceptor {

	public void doStart(ReportRequest rrequest) {
		String pageid = rrequest.getPagebean().getId();
		HttpSession session = rrequest.getRequest().getSession();
		Connection conn = rrequest.getConnection();
		String user_id = (String) session.getAttribute("user_id");
		HttpServletRequest httpRequest=(HttpServletRequest)rrequest.getRequest();
		if (user_id == null || "".equals(user_id)) {
			// 用户没登录则跳转到登录页面

			String strBackUrl = "http://" + httpRequest.getServerName() //服务器地址
			                    + ":" 
			                    + httpRequest.getServerPort()       //端口号
			                    + httpRequest.getContextPath()      //项目名称
			                    + httpRequest.getServletPath()      //请求页面或其他地址
			                    + "?" + (httpRequest.getQueryString()); //参数
			
			
			String baseUrl="http://" + rrequest.getRequest().getServerName()
		                    + ":"
		                    + rrequest.getRequest().getServerPort()
		                    + httpRequest.getContextPath();
			session.setAttribute("continue_url", strBackUrl.contains("ShowReport.wx")?strBackUrl:baseUrl);

			if (rrequest.isLoadedByAjax()) {// ajax请求
				rrequest.getWResponse().addOnloadMethod("wx_sendRedirect","{url:\"" +rrequest.getRequest().getContextPath() + "\"}", false);
				rrequest.getWResponse().terminateResponse(1);
			} else {
				try {
					//跳转到home页
					rrequest.getWResponse().getResponse().sendRedirect(rrequest.getRequest().getContextPath()+"/jsp/login/login.html");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		} else {
			// 已登录用户,生成登录用户菜单,把菜单代码放到session中,在page的header中调用
			if (!rrequest.isLoadedByAjax()) {
				session.setAttribute("menu_list", MenuBuilder.createMenu(user_id, conn, rrequest));
			}
		}

		// 对要访问的页面进行授权
		StringBuffer sql = new StringBuffer();
		sql.append("select a.user_id,b.privilege_id ,c.page_id,c.component_id,c.part_type,c.part_id,c.permission_type,c.permission_value  ");
		sql.append(" from sys_c_sec_user a,sys_c_sec_gppv b,sys_c_sec_pvlt c ");
		sql.append(" where a.group_id=b.group_id and b.privilege_id=c.privilege_id ");
		sql.append(" and a.user_id=? and page_id=? ");
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, (String) session.getAttribute("user_id"));
			pstmt.setString(2, pageid);
			ResultSet rs = pstmt.executeQuery();
			boolean hasRows = false;

			while (rs.next()) {
				hasRows = true;
				// System.out.println("开始授权!");
				rrequest.authorize(rs.getString("component_id"),
						rs.getString("part_type"), rs.getString("part_id"),
						rs.getString("permission_type"),
						rs.getString("permission_value"));
			}
			if (!hasRows) {
				disablePage(pageid, conn, rrequest);
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		}
	}

	public void doEnd(ReportRequest rrequest) {
		// 增加记录点击率的功能
		if (!rrequest.isLoadedByAjax()) {// 不是ajax请求
			recordHits(rrequest, rrequest.getStringAttribute("PAGEID"));
		}
	}

	/**
	 * 如果page没有授权,这里处理默认权限,暂时定为:禁用页面<br>
	 * 请保持page里有一个common_vpanel的顶级容器
	 * @param pageid
	 * @param conn
	 * @param rrequest
	 */
	public void disablePage(String pageid, Connection conn, ReportRequest rrequest) {
		rrequest.authorize("common_vpanel", null, null, "disabled", "true");
	}


	/**
	 * 记录page的点击率,如果不是ajax请求,则点击率+1
	 * @param rrequest
	 * @param page_id
	 */
	public void recordHits(ReportRequest rrequest, String page_id) {
		String updateSql = "update sys_c_sec_page set hits=(case when hits is null then 1 else hits+1 end)  where page_id=? ";
		Connection conn = rrequest.getConnection();
		PreparedStatement pstmt2 = null;
		try {
			pstmt2 = conn.prepareStatement(updateSql);
			pstmt2.setString(1, page_id);
			pstmt2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
