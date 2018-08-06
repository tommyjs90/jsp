<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- top.jsp -->
<%@ include file="/common/top.jsp" %>

<script>
$(function() {
	$("button[type=submit]").on("click", function(){
		$("#frm").submit();
	});
});
</script>

	<!-- container //-->
	<div class="container-fluid">
		<!-- row //-->
		<div class="row">
			
			<!-- left.jsp -->
			<%@ include file="/common/left.jsp" %>

			<!-- main //-->
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

				<form id="frm" class="form-horizontal" role="form" action="/studentUpdate" method="get">
				
					<input type="hidden" name="id" value="${studentVo.id }">

					<!-- 프로필 -->
					<div class="form-group">
						<label for="pic" class="col-sm-2 control-label">프로필</label>
						<div class="col-sm-10">
							<img src="/pic?id=${studentVo.id }">
						</div>
					</div>

					<!-- 학생 아이디 -->
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">학생 아이디</label>
						<div class="col-sm-10">
							<label name="id" class="control-label">${studentVo.id }</label>
						</div>
					</div>

					<!-- 학생 이름 -->
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">학생 이름</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.name }</label>
						</div>
					</div>
					
					<!-- 호출횟수 -->
					<div class="form-group">
						<label for="call_cnt" class="col-sm-2 control-label">호출횟수</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.call_cnt }</label>
						</div>
					</div>
					
					<!-- 주소1 -->
					<div class="form-group">
						<label for="addr1" class="col-sm-2 control-label">주소1</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.addr1 }</label>
						</div>
					</div>
					
					<!-- 주소2 -->
					<div class="form-group">
						<label for="addr2" class="col-sm-2 control-label">주소2</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.addr2 }</label>
						</div>
					</div>
					
					<!-- 우편번호 -->
					<div class="form-group">
						<label for="zipcd" class="col-sm-2 control-label">우편번호</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.zipcd }</label>
						</div>
					</div>

					<!-- 수정 btn -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">수정</button>
						</div>
					</div>
				</form>
			</div>
			<!--// main -->
			
		</div>
		<!--// row -->
	</div>
	<!--// container -->

<!-- tail.jsp -->
<%@ include file="/common/tail.jsp" %>












