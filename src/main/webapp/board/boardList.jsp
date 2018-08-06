<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.or.ddit.board.model.BoardVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {background-color:#ddd}
table th, table td {padding:10px;background-color:#fff}
table th {background-color:#ccc}
</style>
</head>
<body>
	<table cellpadding="0" cellspacing="1" border="0">
		<thead>
			<tr>
				<th>제목</th>
				<th>내용</th>
				<th>사용자 아이디</th>
				<th>별명</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
			<%
			//yyyy-mm-dd
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			for(BoardVo boardVo : (List<BoardVo>)request.getAttribute("boardList")){
			%>
			<tr>
				<td><%=boardVo.getTitle() %></td>
				<td><%=boardVo.getContent() %></td>
				<td><%=boardVo.getUserId() %></td>
				<td><%=boardVo.getAlias() %></td>
				<td><%=sdf.format(boardVo.getRegDt()) %></td>
			</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>