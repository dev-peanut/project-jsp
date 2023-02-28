<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 정보 설정</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/user/myProfile.css">
</head>
<body>
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
		<!-- 프로필 정보 설정 -->
		<div id="waccountWrap">
       		<div class="waccount-wrap">   			
       			<div id="waccountContainer">
       				<h3>프로필 정보 설정</h3>
       				<div id="tabContent1" class="tab-content">
	       				<h5>프로필 사진</h5>
	       				<div class="profileimg-wrap">
	       					<button type="button" id="resultProfileImg" class="profileimg" onclick="$('#uploadProfileImg').click();"><em id="image_container" style="background-image:url(https://static.wadiz.kr/static/icon/profile-icon-4.png)"></em></button>
	       					<p class="setting-profileimg">
	       						<button type="button" onclick="$('#uploadProfileImg').click()" id="btn_updatePhoto">
	       							<span id="img">바꾸기</span>
	       						</button>
	       						<button type="button" onclick="deletePhoto()" id="btn_deletePhoto">삭제</button>
	       					</p>
	       				</div>
	       				<h5>회사 / 직책</h5>
       					<ul class="input-div2">
       						<li><input type="text" class="input-text" maxlength="50" id="belongsTo" placeholder="회사" value=""></li>
       						<li><input type="text" class="input-text" maxlength="50" id="position" placeholder="직책" value=""></li>
       					</ul>
	       				<h5>주소 변경</h5>
	       					<form id="shippingDetailForm">
		       					<input type="text" id="location1" name="address" value="[06236] 서울 강남구 테헤란로 146" class="input-text" onclick="Wpost(); $('#location1')[0].blur();">
		       					<input type="text" id="location2" maxlength="96" name="addressDetails" value="현익빌딩 3,4층 (신한은행건물)" class="input-text">
	       					</form>
	       				<h5>회사 소개를 해주세요.</h5>
						<div class="textarea-wrap">
		       				<textarea id="introduceme" maxlength="80"></textarea>
		       			</div>
	       				<div class="btn-bottom">
	       					<ul class="btn-div2">
	       						<li>
	       							<button type="button" class="wz button gray btn-darkgray" onclick="cancelModify()" id="mint">취소</button>
	       						</li>
	       						<li>
	       							<button type="button" class="wz button primary btn-mint" onclick="modify()" id="gray">확인</button>
	       						</li>
	       					</ul>
	       				</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
</html>