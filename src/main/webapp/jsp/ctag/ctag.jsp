<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.float-left {float:left}
div.box {float:left;margin-left:100px}
table {background-color:#999}
table th, table td {padding:5px 10px;background-color:#fff}
table th {background-color:#ddd}
</style>
</head>
<body>

<div class="float-left">
	<h3>logging</h3>
	<tags:logging/>
	<br>
	<table cellpadding="0" cellspacing="1" border="0">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>call_cnt</th>
			<th>date</th>
		</tr>
	
		<c:forEach items="${studentList }" var="student">
		<tr>
			<td>${student.id }</td>
			<td>${student.name }</td>
			<td>${student.call_cnt }</td>
			<td><fmt:formatDate value="${student.reg_dt }" pattern="yyyy-MM-dd"/></td>
		</tr>
		</c:forEach>
	
	</table>
	<tags:logging/>
</div>

<div class="box">
	<h3>colorLogging</h3>
	<tags:colorLogging color="blue" size="20"/>
	<br>
	<table cellpadding="0" cellspacing="1" border="0">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>call_cnt</th>
			<th>date</th>
		</tr>
	
		<c:forEach items="${studentList }" var="student">
		<tr>
			<td>${student.id }</td>
			<td>${student.name }</td>
			<td>${student.call_cnt }</td>
			<td><fmt:formatDate value="${student.reg_dt }" pattern="yyyy-MM-dd"/></td>
		</tr>
		</c:forEach>
	
	</table>
	<tags:colorLogging color="red"/>
</div>

<div class="box">
	<h3>prodSelect</h3>
	<tags:prodSelect lgu="P101"/>
</div>

</body>
</html>