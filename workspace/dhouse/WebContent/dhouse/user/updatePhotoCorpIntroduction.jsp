<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3.프로필 정보 설정</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/static/images/logo.png">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/user/myProfile.css">
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
	<!-- 프로필 정보 설정 -->
	<div id="waccountWrap">
		<div class="waccount-wrap">
			<div id="waccountContainer">
				<form action="${pageContext.request.contextPath}/updatePhotoCorpIntroduction.myPage" enctype="multipart/form-data" method="post">
				<h3>프로필 정보 설정</h3>
				<div id="tabContent1" class="tab-content">
					<h5>프로필 사진</h5>
					<div class="profileimg-wrap">
						<label for="file">
							<div class="setting-profileimg">
								<div class="btn-upload">
									<span>바꾸기</span>
								</div>
								<input type="file" id="file" name="fileSystemName" onchange="readURL(this);">
								<img id="preview" />
						</label>
					</div>
					
			<!-- 세인 수정/프로필 사진 변경 JS 적용-->
			
				<h5> 회사 / 사업자 등록 번호 </h5>
      					 <ul class="input-div2">
      						<li><input type="text" class="input-text" maxlength="50" id="belongsTo" placeholder="회사" value=""></li>
      						<li><input type="text" class="input-text" maxlength="50" name="registerNumber" id="position" placeholder="사업자 등록 번호" value=""></li> 
      					</ul> 
       				<h5>주소 변경</h5>
       					<form id="shippingDetailForm">
	      					<ul class="input-div2">
	      						<li><input type="text" id="sample4_postcode" name="address" onclick="sample4_execDaumPostcode()" class="input-text" maxlength="50" placeholder="우편번호" value=""></li>
	      						<li></li>
	      					</ul>
	      					<ul class="input-div2">
	      						<li><input type="text" id="sample4_roadAddress" class="input-text" maxlength="50" placeholder="도로명주소" value=""></li>
	      						<li><input type="text" id="sample4_jibunAddress" class="input-text" maxlength="50" placeholder="지번주소" value=""></li>
	      					</ul>
	      						<span id="guide" style="color: rgb(153, 153, 153);display: block;font-size: 12px;margin-left: 5px;margin-bottom: 10px;"></span>
	      					<ul class="input-div2">
	      						<li><input type="text" id="sample4_detailAddress" class="input-text" maxlength="50" placeholder="상세주소" value=""></li>
	      						<li><input type="text" id="sample4_extraAddress" class="input-text" maxlength="50" placeholder="참고항목" value=""></li>
	      					</ul>
       					</form>
       				<h5>회사 소개를 해주세요.</h5>
					<div class="textarea-wrap">
	       				<textarea id="introduceme" name="introduction" maxlength="80"></textarea>
	       			</div>
       				<div class="btn-bottom">
       					<ul class="btn-div2">
       						<li>
       							<button type="button" class="wz button gray btn-darkgray" onclick="cancelModify()" id="mint">취소</button>
       						</li>
       						<li>
       							<button type="submit" class="wz button primary btn-mint" onclick="modify()" id="gray">확인</button>
       						</li>
       					</ul></form>
       				</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/user/myProfile.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>

