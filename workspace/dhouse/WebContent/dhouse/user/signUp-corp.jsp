<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원가입</title>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/static/images/logo.png">
<link
	href="${pageContext.request.contextPath}/static/css/user/signUp-corp.css"
	rel="stylesheet">
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/dhouse/user/user-header.jsp"></jsp:include>

	<div id="page-container">
		<main id="iam-account-app">
			<!-- main -->
			<div class="account-container">
				<!-- sns를 통한 로그인 -->
				<h2 class="account-title">기업 회원가입</h2>
			</div>
			<div class="signup-intro"></div>
			<div class="account-container-email">
				<h3 class="signup-intro-email">이메일 간편가입</h3>
				<form action="${pageContext.request.contextPath}/user/signUpOk.user"
					name="joinForm" method="post">
					<div class="email-signup-form-container">
						<div class="email-field-container">
							<label class="EmailAuthField">아이디</label>
							<div class="email-field-input-continer">
								<div class="EmailAuthField_inputField">
									<input name="identification" placeholder="아이디 입력" type="text"
										class="email-field" id="identification-input">
								</div>
							</div>
							<!-- email-field-input-continer -->
							<em class="identification-error error-message">아이디를 입력해주세요.</em>
						</div>
						<!-- email-field -->
						<!-- 한줄 복사 -->
						<div class="password-field">
							<label>비밀번호</label>
							<!-- 비밀번호 -->
							<div class="password-field-text">
								<input name="password" placeholder="비밀번호 입력" type="password"
									class="input-password-container" id="password-input"
									aria-invalid="false">
								<button aria-label="비밀번호 보기" class="Button_TextField_icon"
									type="button">
									<span class="eye"> <span class="Button_children_pw">
									</span>
									</span>
								</button>
							</div>
							<em class="password-error error-message">최소 8자입니다.</em>
						</div>
						<!-- password 1  -->

						<div class="recheck-password">
							<label></label>
							<div class="TextField_field__1B2AH">
								<input name="verifyPassword" placeholder="비밀번호 확인"
									type="password" class="re-input-password-container"
									aria-invalid="false">
								<button aria-label="비밀번호 보기" class="Button_TextField_icon"
									id="eye-wrapper" type="button">
									<span class="eye"> <span class="Button_children">
									</span>
									</span>
								</button>
							</div>
						</div>
						<!-- test -->
						<em class="recheck-password-error error-message">비밀번호가 일치하지
							않습니다.</em>

						<div class="email-field-container" id="nickName-title">
							<label class="EmailAuthField">닉네임</label>
							<div class="email-field-input-continer">
								<div class="EmailAuthField_inputField">
									<input name="nickName" placeholder="닉네임 입력" type="text"
										class="nickname-field email-field" id="nickname">
								</div>
							</div>
							<!-- email-field-input-continer -->
							<em class="nickname-error error-message">최소 2자입니다.</em>
						</div>
						<!-- email-field -->
						<!-- 한줄 복사 -->
						<div class="email-field-container">
							<label class="EmailAuthField">기업명</label>
							<div class="email-field-input-continer">
								<div class="EmailAuthField_inputField">
									<input name="coprName" placeholder="기업명 입력" type="text"
										class="email-field corp-name-field" id="corp-name">
								</div>
							</div>
							<!-- email-field-input-continer -->
							<em class="corp-name-error error-message">기업명을 입력하세요.</em>
						</div>
						<!-- email-field -->
					</div>
					<div class="name-field" id="name-name">
						<label>이메일</label>
						<div class="TextField_field__1B2AH">
							<input name="email" placeholder="이메일 입력" type="text"
								class="name-input" id="email-input">
						</div>
						<em class="email-error error-message">이메일을 입력해주세요.</em>
					</div>
					<!-- email 끝 -->
					<div class="name-field" id="name-name">
						<label>대표 번호</label>
						<div class="TextField_field__1B2AH">
							<input name="phoneNumber" placeholder="대표 번호 입력" type="text"
								class="name-input" id="input-phone-number" maxlength="11">
						</div>
						<em class="phone-error error-message">핸드폰 번호를 입력해주세요.</em>
					</div>
					<!-- phoneNumber 끝 -->
					<div class="name-field" id="name-name">
						<label>기업 주소</label>
						<div class="TextField_field__1B2AH">
							 <!--  <input name="corpAddress" placeholder="기업 주소 입력" type="text" class="name-input" id="input-corp-address" maxlength="11"> --> 
							    <input type="text" class="name-input" id="sample6_postcode" placeholder="우편번호" onclick="sample6_execDaumPostcode()">
								<input type="text" class="name-input" id="sample6_address" placeholder="주소">
								<input type="text" class="name-input" id="sample6_extraAddress" placeholder="참고항목">
								<input type="text" class="name-input" id="sample6_detailAddress" placeholder="상세주소">
						</div>
							  <em class="corp-address error-message">기업 주소를 입력해주세요.</em>
						<!-- 주소 끝 -->
						<div class="name-field" id="name-name">
							<label>기업 등록 번호</label>
							<div class="TextField_field__1B2AH">
								<input name="corpNumber" placeholder="기업 번호 입력" type="text"
									class="name-input" id="input-corp-number" maxlength="12">
							</div>
							<em class="corp-number error-message">기업 등록 번호를 입력해주세요.</em>
						</div>
						<!-- phoneNumber 끝 -->
						<div class="SignUpAllCheckTermsCheckbox">
							<!-- 회원 약관 동의 -->
							<label for="termsUpdateRequestCheckBox" class="termscheckbox"
								id="termscheckbox"> <input
								id="termsUpdateRequestCheckBox" type="checkbox" class="Checkbox">
								<span class="checkbox-icon" aria-hidden="false"> <svg
										viewBox="0 0 16 2" focusable="false" role="presentation"
										class="withIcon_icon__1YH1P_Checkbox_removeIcon__12oZL"
										aria-hidden="true">
										<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg> <svg
										id="check-box" viewBox="0 0 48 48" focusable="false"
										role="presentation"
										class="withIcon_icon__1YH1P_Checkbox_checkIcon__2QgEJ"
										aria-hidden="true">
										<path
											d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span>
								<span class="Checkbox_content__1uyi7"></span></label><label
								for="termsUpdateRequestCheckBox"
								class="SignUpAllCheckTermsCheckbox_termsAllCheckLabel__3TxCG">
								<p class="checkbox-content-label-text">전체동의</p>
								<p class="checkboxDescription">회원·서비스(필수), 투자 서비스 (선택),
									스타트업찾기 서비스 (선택), 이벤트·혜택알림 동의(선택), 만 14세 이상(필수)</p>
							</label>
							<button class="Button_button" type="button">
								<span>
									<button class="SignUpAllCheckTermsCheckbox_termsMoreButton"
										type="button">
										<span> <span class="Button_children"> <svg
													viewBox="0 0 32 32" focusable="false" role="presentation"
													class="withIcon_icon__1YH1P" aria-hidden="true">
                                                <path
														d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z">
                                                </path>
                                            </svg></span></span>
									</button>
						</div>


						<button class="signup-submit-button" type="button"
							onclick="send()">
							<!-- 완료 버튼 -->
							<span><span class="signup-submit-button-text">완료</span></span>
						</button>
				</form>

				<p class="login-page-link">
					이미 와디즈 계정이 있나요?
					<!-- 하단 메세지 -->
					<a href="/web/waccount/wAccountLogin">로그인</a>
				</p>
				<!-- 여기부터 -->

			</div>
			<!-- account-container-email -->
			<!-- signup intro -->
		</main>
		<!-- main -->
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}"
</script>
<script
	src="${pageContext.request.contextPath}/static/js/user/signUp-corp.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</html>