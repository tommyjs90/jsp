<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {float:left}
div.box {padding-left:50px;margin-left:50px;border-left:1px solid #ddd}
h3 {text-align:center}
table {background-color:#999;text-align:center}
table thead td, table tbody td {padding:5px 10px}
table thead td {font-weight:bold;background-color:#ddd}
table tbody td {background-color:#fff}
table tbody td:hover {color:#fff;background-color:#3498db}
</style>
</head>
<body>
<%--
<table cellpadding="0" cellspacing="1" border="0">
	<thead>
		<tr>
			<td>학생ID</td>
			<td>학생 이름</td>
			<td>지명 횟수</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${studentList }" var="vo">
		<tr>
			<td>${vo.id}</td>
			<td>${vo.name}</td>
			<td>${vo.call_cnt}</td>
		</tr>
		</c:forEach>
	</tbody>
</table> --%>
<div>
	<h3>Foreach Test</h3>
	<table cellpadding="0" cellspacing="1" border="0">
		<thead>
			<tr>
				<td>학생ID</td>
				<td>학생 이름</td>
				<td>지명 횟수</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${studentList }" var="vo" varStatus="status">
			<tr>
				<td>${vo.id} / ${status.index }</td>
				<td>${vo.name}</td>
				<td>${vo.call_cnt}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<div class="box">

	<h3>foreach map</h3>
	<%--
		map에있는 값들을 전부 조회해서 출력
		map.get("name"), map.get("alias")
	--%>
	
	<c:forEach items="${map }" var="entry">
		${entry.key } / ${entry.value }<br> 
	</c:forEach>

</div>

<div class="box">
	<h3>forTokens</h3>
	<c:forTokens items="${lineRangers }" delims="," var="ranger">
		${ranger }<br>
	</c:forTokens>
</div>

</body>
</html>
















