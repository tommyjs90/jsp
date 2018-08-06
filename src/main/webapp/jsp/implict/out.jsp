<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table {margin-top:20px;background-color:#ddd}
	table td {padding:10px;background-color:#fff}
</style>
</head>
<body>

<%
	// 기본객체 : request, response, session
	// out객체 : servlet의 printWriter와 유사한 객체
	// localhost:8180/jsp/implict/out.jsp
	out.write("sumResult : " + session.getAttribute("sumResult"));
%>

<%
	out.write("<table cellpadding=\"0\" cellspacing=\"1\" border=\"0\">");
	for (int i = 1; i < 10; i++) {
		out.write("<tr>");
		for (int j = 2; j < 10; j++) {
			out.write("<td>" + j + "*" + i + "=" + j*i + "</td>");
		}
		out.write("</tr>");
	}
	out.write("</table>");
%>

</body>
</html>