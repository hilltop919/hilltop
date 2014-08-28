<%@ page contentType="text/html; charset=UTF-8"%>

<%
	session.setAttribute("menu_list", "");
		session.invalidate();
		out.print("<script>window.location.href='login.html'</script>");
%>