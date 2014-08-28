<%@ page contentType="text/html; charset=UTF-8"%>
<%
	if (session.getAttribute("user_id") == null
			|| session.getAttribute("user_id") == "") {
		out.println("<script>window.location.href='jsp/login/login.html'</script>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<div style="width: 100%; height:99%;">
	<jsp:include page="/ShowReport.wx"><jsp:param value="home" name="PAGEID"/></jsp:include>
	</div>
</body>
</html>