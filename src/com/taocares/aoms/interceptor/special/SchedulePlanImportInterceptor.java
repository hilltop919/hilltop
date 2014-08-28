package com.taocares.aoms.interceptor.special;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.wabacus.system.dataimport.DataImportItem;
import com.wabacus.system.dataimport.filetype.AbsFileTypeProcessor;
import com.wabacus.system.dataimport.interceptor.AbsDataImportInterceptorDefault;
import com.wabacus.config.*;

/**
 * 班期计划导入拦截器
 * 
 * @author yushan 2014-2-24
 */
public class SchedulePlanImportInterceptor extends
		AbsDataImportInterceptorDefault {


	private int plan_id;
	private String user_id;
	private String local_icao = Config.getInstance().getSystemConfigValue("LOCAL_ICAO", "ZSQD");
	@Override
	public boolean doImportStart(DataImportItem dataImportItem) {
		Connection conn = Config.getInstance().getDataSource("").getConnection();
		user_id=(String) dataImportItem.getSession().getAttribute("user_id");
		String fileName=dataImportItem.getDatafileObj().getName();
		String seqSql = "select seq_hbqc.nextval as seq from dual";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(seqSql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				plan_id = rs.getInt("seq");
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String sql = "insert into DM_SCH_PLAN(id,name,import_user_id,import_time,enable) values(?,?,?,sysdate,1)";
		PreparedStatement pstmt2 = null;
		try {
			pstmt2 = conn.prepareStatement(sql);
			pstmt2.setString(1, plan_id+"");
			pstmt2.setString(2, fileName.substring(0,fileName.length()-4));
			pstmt2.setString(3, user_id);
			pstmt2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return super.doImportStart(dataImportItem);
	}

	public boolean beforeImportRow(Connection conn,
			DataImportItem dataImportItem, List listColTitle, List listColValue) {
		AbsFileTypeProcessor fileProcessor = dataImportItem.getFileProcessor();
		HttpServletRequest request=dataImportItem.getRequest();
		if (fileProcessor.isEmpty()) {
			return false;
		}
		int num = listColTitle.size();
		List lstRowData = listColValue;
		int row_size = lstRowData.size();
		int add_size = num - row_size;
		if (lstRowData == null || row_size == 0) {
			return false;
		}
		for (int m = 0; m < add_size; m++) {
			lstRowData.add("");
		}

		for (int j = 2; j < row_size; j++) {

			// 如果获取的数值中含有“.0”则将其去掉
			if (String.valueOf(lstRowData.get(j)).indexOf(".0") != -1) {
				String s = String.valueOf(lstRowData.get(j));
				s = s.substring(0, s.length() - 2);
				lstRowData.set(j, s);
			} else if (lstRowData.get(j) == null) {
				lstRowData.set(j, "");
			} else if (lstRowData.get(j) == "ZGHA") {
				lstRowData.set(j, "ZGCS");
			} else {
				lstRowData.set(j, String.valueOf(lstRowData.get(j)));
			}
		}
		String qd = local_icao;
		String hz1 = "";
		String hz2 = "";
		String hz3 = "";
		String hz4 = "";
		String hz5 = "";
		if (lstRowData.get(6) == null) {
			hz1 = "";
		} else {
			hz1 = lstRowData.get(6).toString();
		}
		if (lstRowData.get(9) == null) {
			hz2 = "";
		} else {
			hz2 = lstRowData.get(9).toString();
		}
		if (lstRowData.get(12) == null) {
			hz3 = "";
		} else {
			hz3 = lstRowData.get(12).toString();
		}
		if (lstRowData.get(15) == null) {
			hz4 = "";
		} else {
			hz4 = lstRowData.get(15).toString();
		}
		if (lstRowData.get(18) == null) {
			hz5 = "";
		} else {
			hz5 = lstRowData.get(18).toString();
		}

		if (qd.equals(hz1) || qd.equals(hz2) || qd.equals(hz3)
				|| qd.equals(hz4) || qd.equals(hz5)) {


			request.setAttribute("plan_seq", plan_id+"");
			// 从数据库获取序列
			String sql = "select seq_hbqc.nextval as seq from dual";
			PreparedStatement pstmt = null;
			int seq = 0;
			try {
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					seq = rs.getInt("seq");

					request.setAttribute("plan_detail_seq", seq+"");
				}
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return true;
		} else {
			return false;
		}
	}


	@Override
	public void doImportEnd(int statuscode, DataImportItem dataImportItem,
			Exception e) {
		
		//导入完成计算计划架次数
		Connection conn = Config.getInstance().getDataSource("").getConnection();
		
		//如果导入失败，那么就删除plan信息
		
		String sql = "SELECT count(*) as cnt FROM dm_sch_plan_detail where plan_id=? ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, plan_id);
			ResultSet rs = pstmt.executeQuery();
			int cnt=0;
			while (rs.next()) {
				cnt = rs.getInt("cnt");
			}
			if(cnt==0){
				String deleteSql="delete from dm_sch_plan where id = ?";
				PreparedStatement pstmt2=null;
				pstmt2.setInt(1,plan_id);
				pstmt2.executeUpdate(deleteSql);
			}
			rs.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		

        try {
   		 //创建存储过程的对象
            CallableStatement c=conn.prepareCall("{call etl.calcPlanMovementQty(?,?)}");
            //给存储过程的参数设置值
			c.setInt(1,plan_id);
			c.setString(2,local_icao);
	        //执行存储过程
	        c.execute();
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		super.doImportEnd(statuscode, dataImportItem, e);
	}
}
