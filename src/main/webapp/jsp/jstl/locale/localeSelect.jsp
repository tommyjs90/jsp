<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<%@include file="/common/jquery.jsp" %>

<script type="text/javascript">
// select box 변경시 요청이 되도록 수정
$(function(){
	// 페이지 로딩시 select box 설정
	$("select[name=locale]").val("${param.locale}").prop("selected", true);
		
	// select box 변경 이벤트
	$("select[name=locale]").change(function() {
		$("form").submit();
	});	
});
</script>

</head>
<body>

<form action="/localeSelect" method="get">
	<select name="locale">
		<option value="ko" name="ko">한국어</option>
		<option value="jp" name="jp">日本語</option>
		<option value="en" name="en">English</option>
	</select>
<!-- 	<input type="submit" value="submit"/> -->
</form>

<hr>

<%-- c:set --%>
<c:set var="userId" value="brown"/>

<%-- setLocale 태그를 통해 임의로 로케일을 수정 --%>
<%-- <fmt:setLocale value="${locale }"/> --%>
<fmt:setLocale value="${param.locale }"/>

<fmt:bundle basename="kr.or.ddit.msg.msg">
	<fmt:message key="hello"/><br>
	<fmt:message key="visitor">
		<fmt:param value="${userId }"/>
	</fmt:message>
</fmt:bundle>

</body>
</html>