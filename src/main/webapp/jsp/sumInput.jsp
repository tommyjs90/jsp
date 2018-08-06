<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
form {width:300px;margin:0 auto;padding:20px;border:1px solid #ddd;}
form h1 {font-size:20px;letter-spacing:-0.06em;text-align:center}
table {width:100%}
table td {padding:10px;text-align:center}
table td input {width:100%;height:30px;border:1px solid #ddd;border-radius:5px}
table td input[type=submit] {height:40px;color:#fff;background-color:#999}
table td input[type=submit]:hover {background-color:#333;cursor:pointer}
</style>
</head>
<body>
	<form action="<%=application.getContextPath() %>/sumCalculationServlet" method="post">
		<h1>Sum Calculation Test</h1>
		<table>
			<tr>
				<td>start</td>
				<td><input type="text" name="start"></td>
			</tr>
			<tr>
				<td>end</td>
				<td><input type="text" name="end"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>