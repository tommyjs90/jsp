<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- top.jsp -->
<%@ include file="/common/top.jsp" %>

	<!-- container //-->
	<div class="container-fluid">
		<!-- row //-->
		<div class="row">
			
			<!-- left.jsp -->
			<%@ include file="/common/left.jsp" %>

			<!-- main //-->
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

				<form id="frm" action="/studentUpdate" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">

					<!-- 프로필 -->
					<div class="form-group">
						<label for="pic" class="col-sm-2 control-label">프로필</label>
						<div class="col-sm-10">
							<img src="/pic?id=${studentVo.id }">
							<input type="file" name="pic">
						</div>
					</div>

					<!-- 학생 아이디 -->
					<div class="form-group">
						<label for="id" class="col-sm-2 control-label">학생 아이디</label>
						<div class="col-sm-10">
							<label class="control-label">${studentVo.id }</label>
							<input type="hidden" class="form-control" id="id" name="id" value="${studentVo.id }">
						</div>
					</div>

					<!-- 학생 이름 -->
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">학생 이름</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="name" name="name" placeholder="학생 이름" value="${studentVo.name }">
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
						<label for="addr1" class="col-sm-2 control-label">주소</label>
						<div class="col-sm-10">
							<label id="addr1Label" class="control-label">${studentVo.addr1 }</label>
							<input id="addr1Input" type="hidden" name="addr1" value="${studentVo.addr1 }">
							<button type="button" id="findAddr" style="margin-left:20px">주소검색</button>
						</div>
					</div>
					
					<!-- 주소2 -->
					<div class="form-group">
						<label for="addr2" class="col-sm-2 control-label">상세주소</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="addr2" name="addr2" placeholder="상세주소" value="${studentVo.addr2 }">
						</div>
					</div>
					
					<!-- 우편번호 -->
					<div class="form-group">
						<label class="col-sm-2 control-label">우편번호</label>
						<div class="col-sm-10">
							<label id="zipcdLabel" class="control-label">${studentVo.zipcd }</label>
							<input id="zipcdInput" type="hidden" name="zipcd" value="${studentVo.zipcd }">
						</div>
					</div>

					<!-- 수정 btn -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button id="updateBtn" type="button" class="btn btn-default">수정</button>
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












