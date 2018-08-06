<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!-- top.jsp -->
<%@ include file="/common/top.jsp" %>

<!-- container //-->
<div class="container-fluid">
	<div class="row">
	
		<!-- left.jsp //-->
		<%@include file="/common/left.jsp" %>
		<!--// left.jsp -->
		
		<!-- main //-->
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

			<div class="row">
				<!-- blog-main //-->
				<div class="col-sm-8 blog-main">
					<h2 class="sub-header">LPROD</h2>
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<th>제품 ID</th>
								<th>제품 번호</th>
								<th>제품명</th>
							</tr>
							<c:forEach items="${lprodList }" var="vo">
								<tr>
									<td>${vo.lprod_id}</td>
									<td>${vo.lprod_gu}</td>
									<td>${vo.lprod_nm}</td>
								</tr>
							</c:forEach>
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
</div>
<!--// container -->

<!-- tail.jsp -->
<%@ include file="/common/tail.jsp" %>

