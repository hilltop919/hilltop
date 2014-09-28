package com.hilltop.interceptor.pageinterceptor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import com.wabacus.system.ReportRequest;
import com.wabacus.system.intercept.AbsPageInterceptor;

/**
 * 记录page打开所需时间的全局拦截器
 * 
 * @author yushan
 * 
 */
public class PageResponseTimeInterceptor extends AbsPageInterceptor {
	long startTime;
	long endTime;

	public void doStart(ReportRequest rrequest) {
		startTime = System.currentTimeMillis();
	}

	public void doEnd(ReportRequest rrequest) {
		String action_type = rrequest.isLoadedByAjax() ? "ajax" : "normal";// 是否是ajax请求
		endTime = System.currentTimeMillis();
		String page_id = rrequest.getPagebean().getId();
		HttpSession session = rrequest.getRequest().getSession();
		String user_id = (String) session.getAttribute("user_id");
		Connection conn = rrequest.getConnection();
		String sql = "INSERT INTO SYS_C_APP_RESPONSE(action_date,page_id,start_time,end_time,response_time,user_id,action_type) "
				+ " VALUES (?, ?, ?, ?, ?, ?, ?) ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setDate(1, new java.sql.Date(startTime));
			pstmt.setString(2, page_id);
			pstmt.setTimestamp(3, (Timestamp) new Timestamp(startTime));
			pstmt.setTimestamp(4, new Timestamp(endTime));
			pstmt.setLong(5, endTime - startTime);
			pstmt.setString(6, user_id);
			pstmt.setString(7, action_type);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
