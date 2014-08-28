package com.hilltop.personalize;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wabacus.config.Config;
import com.wabacus.config.component.IComponentConfigBean;
import com.wabacus.system.ReportRequest;
import com.wabacus.system.serveraction.IServerAction;

/**
 * 个性化--收藏页面
 * @author yushan
 *
 */
public class FavorPage implements IServerAction {

	/**
	 * 与框架无关的ajax调用
	 */
	public String executeServerAction(HttpServletRequest request,
			HttpServletResponse response, List<Map<String, String>> lstData) {
		try {
			for (Map<String, String> mParams : lstData) {
				String pageid = mParams.get("pageid");// 从客户端取传过来的数据
				String user_id = (String) request.getSession().getAttribute("user_id");
				if(user_id!=null){
					favorPageId(request, response, pageid, user_id);
				}
			}
			return "调用成功";
		} catch (Exception e) {
			e.printStackTrace();
			return "调用失败";
		} finally {
		}
	}

	public String executeSeverAction(ReportRequest arg0,
			IComponentConfigBean arg1, List<Map<String, String>> arg2) {
		return null;
	}

	// 判断该page是否已经收藏,如果没有就收藏,如果收藏了,就取消收藏
	public void favorPageId(HttpServletRequest request, HttpServletResponse response, String pageid, String user_id) {
		boolean isFavor = false;
		Connection conn = Config.getInstance().getDataSource("").getConnection();
		String sql = " select * from sys_c_per_fvor where user_id= ? and page_id=? ";
		String insertSql = "insert into sys_c_per_fvor(user_id,page_id) values(?,?)";
		String deletSql = " delete from sys_c_per_fvor where user_id= ? and page_id=? ";
		try {
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, pageid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				PreparedStatement pstmt2 = null;
				pstmt2 = conn.prepareStatement(deletSql);
				pstmt2.setString(1, user_id);
				pstmt2.setString(2, pageid);
				pstmt2.executeUpdate();
				isFavor = true;
			}
			if (!isFavor) {
				PreparedStatement pstmt3 = null;
				pstmt3 = conn.prepareStatement(insertSql);
				pstmt3.setString(1, user_id);
				pstmt3.setString(2, pageid);
				pstmt3.executeUpdate();
				isFavor = true;
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public String executeSeverAction(ReportRequest arg0,
			IComponentConfigBean arg1, List<Map<String, String>> arg2,
			Map<String, String> arg3) {
		return null;
	}

}
