package com.hilltop.interceptor.permissions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wabacus.config.Config;
import com.wabacus.system.ReportRequest;

public class MenuBuilder {
	
	/**
	 * 根据user_id生成导航菜单
	 * @param user_id
	 * @param conn
	 * @param rrequest
	 * @return
	 */
	public static String createMenu(String user_id, Connection conn, ReportRequest rrequest) {
		String login_user = (String) rrequest.getRequest().getSession().getAttribute("user_name");
		StringBuffer sql = new StringBuffer();
		sql.append(" select id, menu_id,menu_type,menu_name,menu_seq,page_id,page_name,url_param,mt_seq  ");
		sql.append( " from ( ");
		sql.append( " 	select mt.id, mt.menu_id,m.menu_type,m.menu_name,m.seq as menu_seq,mt.page_id,mt.page_name,mt.url_param,mt.seq as mt_seq   ");
		sql.append( " 	from sys_c_sec_user u,sys_c_app_mnlt mt,sys_c_app_menu m  ");
		sql.append( " 	where user_id=? and u.is_enable='Y' and m.menu_type='normal' and u.group_id=mt.group_id and  mt.menu_id=m.menu_id  and mt.is_show='Y'  ");
		sql.append( " 	union ");
		sql.append( " 	select mt.id, 'favor' as menu_id,'normal' as menu_type,'我的收藏' as menu_name,999999 as menu_seq,mt.page_id,mt.page_name,mt.url_param,mt.seq as mt_seq ");
		sql.append( " 	from sys_c_app_mnlt mt   ");
		sql.append( " 	left join sys_c_sec_user u on u.group_id=mt.group_id and u.is_enable='Y'  ");
		sql.append( " 	left join sys_c_app_menu m on mt.menu_id=m.menu_id   ");
		sql.append( " 	left join sys_c_sec_page p on mt.page_id=p.page_id   ");
		sql.append( " 	right join sys_c_per_fvor f on mt.page_id=f.page_id and f.user_id=u.user_id   ");
		sql.append( "   where u.user_id=? and mt.is_show='Y'" );
		sql.append( "   union ");
		sql.append( "	select null as id, menu_id,'url' as menu_type,menu_name,seq,menu_type,'','',0 from sys_c_app_menu ");
		sql.append( "	where menu_type<>'normal' ) list order by menu_seq,mt_seq,page_id");
		PreparedStatement pstmt = null;
		StringBuffer sb = new StringBuffer();
		sb.append("    <link rel='shortcut icon' href='shortcut.png' />");
		sb.append("	<div id='header'>\n");
		sb.append("		<div id='masthead'>"
				+ "<table cellspacing='0' cellpadding='0' width='100%' border='0'>"
				+ "	<tbody>" 
				+ "		<tr height='46px'>"
				+ "			<td width='260' id='logo_img'>" 
				+ "			</td>    "
				+ "			<td align='left' id='logo'>"+Config.getInstance().getSystemConfigValue("system_name", "")+""
				+ "			</td>");

		if (user_id == null || "".equals(user_id)) {
			sb.append("			<td align='right' width='300' style='FONT-WEIGHT: bold; COLOR: #fff; padding-right:15px' > &nbsp;&nbsp;&nbsp;&nbsp;");
			sb.append("				<a style='COLOR: #fff;text-decoration: underline;' href='jsp/login/login.html'>请登录</a>");
		} else {
			sb.append("			<td align='right' width='300' style='FONT-WEIGHT: bold; COLOR: #fff; padding-right:15px' >欢迎您, " + login_user + "&nbsp;&nbsp;&nbsp;&nbsp;");
//			sb.append("				<a style='COLOR: #fff;text-decoration: underline;' href='jsp/login/changePassword.jsp' target='_BLANK'>修改密码</a>");
//			sb.append("				<a style='COLOR: #fff;text-decoration: underline;' href='jsp/login/logout.jsp'>退出系统</a>");
		}
		sb.append("			</td>    " + "		</tr>" + "	</tbody>" + "</table>" + "</div>\n");
		sb.append("		<div id='dd-navigation'>\n");
		sb.append("			<div id='nav-strip'>\n");
		sb.append("				<ul>\n");
		sb.append("\n");
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_id);
			ResultSet rs = pstmt.executeQuery();
			String temp_menu_type="";
			
			String tmp1=null;
			while (rs.next()) {
				String menu_type = rs.getString("menu_type");
				
				if("url".equals(menu_type)){
					sb.append("normal".equals(temp_menu_type)?"						</ul></div></div></li>\n":"");
					sb.append("					<li class='nav-item no-subnav' id='nav-item_"+ rs.getString("menu_id")+"'><a href='"+rs.getString("page_id").substring(4)+"'><span class='primary-link'>"+ rs.getString("menu_name") +"</span></a></li>\n");
				}else  if (tmp1==null) {
					sb.append("					<li class='nav-item' id='nav-item_" + rs.getString("menu_id") + "'><a href='javascript:void(0)'><span class='primary-link'>" + rs.getString("menu_name") + "</span></a>\n");
					sb.append("						<div class='subnav' id='subnav_" + rs.getString("menu_id")	+ "'><div class='subnav-inner'><ul class='one'>\n");
					sb.append("						    <li class='nav-item-li'><a href='ShowReport.wx?MENUID="+rs.getString("menu_id")+"&PAGEID=" + rs.getString("page_id") + (rs.getString("url_param") ==null?"":rs.getString("url_param"))+ "&MNID="+rs.getString("id")+"'>" + rs.getString("page_name") + "</a></li>\n");
				}else if (!tmp1.equals(rs.getString("menu_id"))) {
					sb.append("url".equals(temp_menu_type)?"":"						</ul></div></div></li>\n");
					sb.append("					<li class='nav-item' id='nav-item_" + rs.getString("menu_id") + "'><a href='javascript:void(0)'><span class='primary-link'>" + rs.getString("menu_name") + "</span></a>\n");
					sb.append("						<div class='subnav' id='subnav_" + rs.getString("menu_id") + "'><div class='subnav-inner'><ul class='one'>\n");
					sb.append("						    <li class='nav-item-li'><a href='ShowReport.wx?MENUID="+rs.getString("menu_id")+"&PAGEID=" + rs.getString("page_id") + (rs.getString("url_param") ==null?"":rs.getString("url_param")) + "&MNID="+rs.getString("id")+"'>" + rs.getString("page_name") + "</a></li>\n");
				}else {
					sb.append("						    <li class='nav-item-li'><a href='ShowReport.wx?MENUID="+rs.getString("menu_id")+"&PAGEID=" + rs.getString("page_id") + (rs.getString("url_param") ==null?"":rs.getString("url_param")) + "&MNID="+rs.getString("id")+"'>" + rs.getString("page_name") + "</a></li>\n");
				}

				tmp1=rs.getString("menu_id");
				temp_menu_type = rs.getString("menu_type");
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
		}

		sb.append("						</ul></div></div></li>\n");
		sb.append("				</ul>\n");
		sb.append("			</div>\n");
		sb.append("		</div>\n");
		sb.append("	</div>\n");
		return sb.toString();
	}
	
}
