<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.student.model.StudentVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- top.jsp -->
<%@ include file="/common/top.jsp" %>

<script>
$(function(){
	$("table tbody tr").on("click", function(){
		// tr태그의 data-id 속성 값을 읽어서 input 태그의 id 값으로 설정
		// form 태그를 submit
		$("#id").val($(this).data("id"));
		$("#frm").submit();
	});
});
</script>

<form id="frm" action="/studentDetail" method="get">
	<input type="hidden" name="id" id="id">
</form>

<!-- container //-->
<div class="container-fluid">
	<div class="row">
			
		<!-- left.jsp -->
		<%@ include file="/common/left.jsp" %>
		
		<!-- main //-->
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

			<div class="row">
				<!-- blog-main //-->
				<div class="col-sm-8 blog-main">
					<h2 class="sub-header">학생</h2>
					<div class="table-responsive">
						<table class="table table-striped table-hover">
							<thead>
								<tr>
									<td>학생ID</td>
									<td>학생 이름</td>
									<td>지명 횟수</td>
									<td>등록일자(yyyy-mm-dd)</td>
								</tr>
							</thead>
							<tbody>
								<%--
								<%
								for(StudentVo vo : (List<StudentVo>)request.getAttribute("studentList")){
								%>
								<tr>
									<td><%=vo.getId() %></td>
									<td><%=vo.getName() %></td>
									<td><%=vo.getCall_cnt() %></td>
								</tr>	
								<%} %>
								--%>
								<c:forEach items="${studentList }" var="vo">
								<%-- tr 태그 클릭시 상세 페이지로 이동 --%>
									<tr data-id="${vo.id}">
										<td>${vo.id}</td>
										<td>${vo.name}</td>
										<td>${vo.call_cnt}</td>
										<td><fmt:formatDate value="${vo.reg_dt }" pattern="yyyy-MM-dd"/></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
		
					<a class="btn btn-default pull-right">사용자 등록</a>
		
					<div class="text-center">
						<ul class="pagination">
							<%=request.getAttribute("pageNavi") %>
						</ul>
					</div>
				</div>
				<!--// blog-main -->
			</div>
			
		</div>
		<!--// main -->
		
	</div>
	<!--// row -->
</div>
<!--// container -->

<!-- tail.jsp -->
<%@ include file="/common/tail.jsp" %>