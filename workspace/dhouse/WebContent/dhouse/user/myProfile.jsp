<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3.(사)프로필 정보 설정</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/logo.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/user/myProfile.css">
</head>
<body>
<<<<<<< HEAD
      <jsp:include page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
      <!-- 프로필 정보 설정 -->
      <div id="waccountWrap">
             <div class="waccount-wrap">            
                <div id="waccountContainer">
                   <h3>프로필 정보 설정</h3>
                   <div id="tabContent1" class="tab-content">
                      <h5>프로필 사진</h5>
                      <div class="profileimg-wrap">
                         <input type="file" id="resultProfileImg" class="profileimg" onchange="setThumbnail(event);">
                         <div class="image_space"></div>
                              <div id="image_container"></div> </button>
                         <p class="setting-profileimg">
                            <button type="button" id="btn_updatePhoto"/>
                               <span id="img">바꾸기</span>
                            </button>
                         <!--    <button type="button" onclick="deletePhoto()" id="btn_deletePhoto">삭제</button> -->
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
=======
	<jsp:include
		page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
	<!-- 프로필 정보 설정 -->
	<div id="waccountWrap">
		<div class="waccount-wrap">
			<div id="waccountContainer">
				<h3>프로필 정보 설정</h3>
				<div id="tabContent1" class="tab-content">
					<h5>프로필 사진</h5>
					<div class="profileimg-wrap">
						<label for="file">
							<div class="setting-profileimg">
								<div class="btn-upload">
									<span>바꾸기</span>
								</div>
								<input type="file" id="file" onchange="readURL(this);">
								<img id="preview" />
						</label>
					</div>
					<!-- 세인 수정/프로필 사진 변경 JS 적용-->
				<h5>회사 / 직책</h5>
      					<ul class="input-div2">
      						<li><input type="text" class="input-text" maxlength="50" id="belongsTo" placeholder="회사" value=""></li>
      						<li><input type="text" class="input-text" maxlength="50" id="position" placeholder="직책" value=""></li>
      					</ul>
       				<h5>주소 변경</h5>
       					<form id="shippingDetailForm">
	      					<ul class="input-div2">
	      						<li><input type="text" id="sample4_postcode" onclick="sample4_execDaumPostcode()" class="input-text" maxlength="50" placeholder="우편번호" value=""></li>
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
>>>>>>> myProfile
</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/user/myProfile.js"></script>
</html>