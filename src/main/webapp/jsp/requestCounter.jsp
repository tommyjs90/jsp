<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	application : requestCounterMap : Map<String, Integer>
	(el, jstl)
--%>


<h3>requestCountMap</h3>
<%--
	map에있는 값들을 전부 조회해서 출력
	map.get("name"), map.get("alias")
	uri : count
--%>

<c:forEach items="${requestCounter }" var="request">
	${request.key } : ${request.value }<br> 
</c:forEach>

</body>
</html>