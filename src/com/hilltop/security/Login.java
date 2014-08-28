package com.hilltop.security;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

import com.wabacus.config.Config;
import com.wabacus.util.*;

public class Login {
	public boolean checkPrivilege(String user_id, String password,
			HttpSession session) throws SQLException {
		boolean isLegal = false;
		Connection conn = Config.getInstance().getDataSource("").getConnection();
		String sql = " select user_id,user_name,group_id,password,is_enable from sys_c_sec_user where user_id=? and password=? ";

		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, DesEncryptTools.encrypt(password));
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String user_name = rs.getString("user_name");
				String group_id = rs.getString("group_id");
				if ("Y".equals(rs.getString("is_enable"))) {
					isLegal = true;
					// 验证通过后，将用户信息写入session对象，
					session.setAttribute("user_name", user_name);
					session.setAttribute("user_id", user_id);
					session.setAttribute("group_id", group_id);
				}
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
				
		return isLegal;
	}
	
}
