<%@ page contentType="text/html; charset=UTF-8"%>

<%

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
    <head>
        <title>错误页面</title>
    	<link rel='shortcut icon' href='../images/favicon.png' />
    </head>
    <body>
        <table width="100%" align="center">
            <tr>
                <td style="border-bottom:dotted 1px Gray;" colspan="2" >
                    &nbsp;&nbsp;错误提示                               
                </td><td></td>
            </tr>
            <tr>
                <td style="width: 130px" >
                </td>
                <td>尊敬的用户：<br />系统出现了异常，请重试。
                    <br />如果问题重复出现，请向系统管理员反馈。<br /><br />
                </td>
            </tr>
        </table>
        <div id="errorMessageDiv" >
            <pre>
                <%
            	String errorMessage= (String)request.getParameter("errorMessage");
                out.print("异常信息:");
                out.print(errorMessage);
                %>
            </pre>
        </div>
    </body>
</html>