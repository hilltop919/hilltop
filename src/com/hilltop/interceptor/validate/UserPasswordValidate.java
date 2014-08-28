package com.hilltop.interceptor.validate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.wabacus.system.ReportRequest;
import com.wabacus.util.DesEncryptTools;

public class UserPasswordValidate {
	/**
	 * 校验输入的当前密码是否正确
	 * 
	 * @param rrequest
	 * @param deptno
	 * @param mValues
	 * @param lstErrorMessages
	 * @return
	 */
	public static boolean isPasswordOK(ReportRequest rrequest, String password,
			Map<String, String> mValues, List<String> lstErrorMessages) {
		if (password == null || password.trim().equals("")) {
			return true;// 为空不在这里校验，而是在isNotEmpty()中校验，所以直接返回true
		}

		boolean ok = false;
		password = password.trim();
		Connection conn = rrequest.getConnection();
		PreparedStatement pstmt = null;
		String user_id = (String) rrequest.getRequest().getSession()
				.getAttribute("user_id");
		try {
			pstmt = conn
					.prepareStatement("select * from sys_c_sec_user where user_id=? and password=? ");
			pstmt.setString(1, user_id);
			pstmt.setString(2, DesEncryptTools.encrypt(password));
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ok = true;
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return ok;
	}

}
