<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>

<%-- c:set --%>
<c:set var="userId" value="brown"/>
<form id="frm" name="sendForm" action="/localeSelect">
	<select id="language" name="locale">
		<option value="ko" ${lang eq 'ko' ? "selected" : '' }>한국어</option>
		<option value="en" ${lang eq 'en' ? "selected" : '' }>English</option>
		<option value="jp" ${lang eq 'jp' ? "selected" : '' }>日本語</option>
	</select>
	
	<input type="submit" id="submitBtn" value="전송">
	
	<% Object ob = request.getAttribute("lang"); %>
	
	<c:set var="sel" value="<%=ob%>"></c:set>
	
	<fmt:setLocale value="${sel }"/>

	<hr>

	<fmt:bundle basename="kr.or.ddit.msg.msg">
		<fmt:message key="hello"/><br>
		<fmt:message key="visitor">
			<fmt:param value="${userId }"/>
		</fmt:message>
	</fmt:bundle>
</form>


<%--
<select id="language" name="locale">
	<option value="ko" ${lang eq 'ko' ? "selected" : '' }>한국어</option>
	<option value="en" ${lang eq 'en' ? "selected" : '' }>English</option>
	<option value="jp" ${lang eq 'jp' ? "selected" : '' }>日本語</option>
</select>
	
<% Object ob = request.getAttribute("lang"); %>

<c:set var="sel" value="<%=ob%>"></c:set>

<fmt:setLocale value="${sel }"/>

<hr>

<fmt:bundle basename="kr.or.ddit.msg.msg">
	<fmt:message key="hello"/><br>
	<fmt:message key="visitor">
		<fmt:param value="${userId }"/>
	</fmt:message>
</fmt:bundle>

<script type="text/javascript">

</script>
 --%>



</body>
</html>

















