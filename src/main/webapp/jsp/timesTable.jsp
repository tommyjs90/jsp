<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body {padding-top:50px}
	table {background-color:#ddd}
	table td {padding:10px;background-color:#fff}
</style>
</head>
<body>
	<table cellpadding="0" cellspacing="1" border="0" align="center">
		<%for (int i = 1; i < 10; i++) {%>
			<tr>
			<%for (int j = 2; j < 10; j++) {%>
				<td> <%=j %> * <%=i %> = <%=j*i %></td>
			<%} %>
			</tr>
		<%}%>
	</table>
</body>
</html>