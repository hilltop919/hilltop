package com.hilltop.interceptor.pageinterceptor;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.wabacus.system.*;
import com.wabacus.system.intercept.AbsPageInterceptor;

public class StartEndDateInterceptor extends AbsPageInterceptor {
	public void doStart(ReportRequest rrequest) {

		Date d = new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		String beginDate = rrequest.getStringAttribute("txtStartDate", "");// txtBeginDate为此<condition/>的name属性
		String endDate = rrequest.getStringAttribute("txtEndDate", "");// txtEndDate为此<condition/>的name属性
		if ("".equals(beginDate)) {// 没有条件值
			rrequest.setAttribute("txtBeginDate", sdf.format(new Date(d.getTime() - 0* 24 * 60 * 60 * 1000)));// 将条件值设置进去。
		}
		if ("".equals(endDate)) {// 没有条件值
			rrequest.setAttribute("txtEndDate", sdf.format(new Date(d.getTime() - 0* 24 * 60 * 60 * 1000)));// 将条件值设置进去。
		}
	}

	public void doEnd(ReportRequest rrequest) {

	}

}
