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
<link rel="preconnect" href="https://fonts.gstatic.com">
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
	<!-- <header>
		<div id="wrapper">
			<h1 id="header-logo">
				<a href="#" id="header-a-tag">
					<span class="header-logo-span"></span>
					<svg id="header-svg" xmlns="http://www.w3.org/2000/svg" width="85" height="25" viewBox="0 0 85 25"><path fill="#1D2129" fill-rule="nonzero" d="M58.49 2.23h2.11v21.29H59a1.73 1.73 0 0 1-1.62-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29 7.65 7.65 0 0 1 12.79-5.07V4.23a2 2 0 0 1 2-2zm-6.3 18.62a4.36 4.36 0 0 0 4.16-4.52 4.19 4.19 0 1 0-8.35 0 4.36 4.36 0 0 0 4.19 4.52zM42 23.52h-1.52a1.73 1.73 0 0 1-1.64-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29A7.65 7.65 0 0 1 38 10.72a2 2 0 0 1 1.9-1.79H42v14.59zm-8.41-2.67h.02a4.35 4.35 0 0 0 4.15-4.52 4.35 4.35 0 0 0-4.17-4.51 4.35 4.35 0 0 0-4.17 4.51 4.36 4.36 0 0 0 4.17 4.52zM83.47 8.94v2.11l-7.07 9.06h7.06v3.47h-13v-2.1l7.08-9.07h-6.62v-1.47a2 2 0 0 1 2-2h10.55zM65.86 7.3a2.48 2.48 0 1 1 0-4.96 2.48 2.48 0 0 1 0 4.96zM21.21 8.94h4.14l-4.86 14.59h-4.15l-3.21-9.36-3.21 9.36H5.77L.92 8.94h4.13L8 18l2.5-7.74a2 2 0 0 1 1.86-1.34h2.9l3 9.08 2.95-9.06zm42.65 14.59l-.04-12.59a2 2 0 0 1 2-2h2.11v14.59h-4.07z"></path></svg>
				</a>
			</h1>
			<ul id="header-select">
				<li class="header-selects" id="header-select-login">
					<a class="header-selects-a-tag" href="../../app/user/login.jsp"><span class="header-selects-span-tag">로그인</span></a>
				</li>
				<li class="header-selects" id="header-select-signUp">
					<a class="header-selects-a-tag" href="../../app/user/signUp.jsp"><span class="header-selects-span-tag">회원가입</span></a>
				</li>
			</ul>
		</div>
	</header> -->

	<div id="page-container">
		<main id="iam-account-app">
			<!-- main -->
			<div class="account-container">
				<!-- sns를 통한 로그인 -->
				<h2 class="account-title">기업 회원가입</h2>
				<!-- <div class="first-benefit">
                    <div class="first-benefit-content">
                        <span class="first-benefit-gift-icon"></span>
                        <span class="first-benefit-gift-text">와디즈가 처음이라면? <strong>최대 2만원 혜택</strong></span>
                    </div>first-benefit-content
                </div>

                <div>sns로그인
                    <button class="kakaobutton"><span><span class="Button_children__weH0H"><svg viewBox="0 0 32 32"
                                    focusable="false" role="presentation"
                                    class="withIcon_icon__1YH1P SNSButtonList_kakaoIcon__1s6gw" aria-hidden="true">
                                    <path
                                        d="M16 4.64c-6.96 0-12.64 4.48-12.64 10.08 0 3.52 2.32 6.64 5.76 8.48l-.96 4.96 5.44-3.6 2.4.16c6.96 0 12.64-4.48 12.64-10.08S22.96 4.56 16 4.64z">
                                    </path>
                                </svg>카카오로 시작하기</span></span></button>
                    <button class="naverbutton" type="button"><span><span class="Button_children__weH0H"><svg
                                    viewBox="0 0 32 32" focusable="false" role="presentation"
                                    class="withIcon_icon__1YH1P SNSButtonList_naverIcon__3TjPM" aria-hidden="true">
                                    <path d="M19.52 5.76v10.32L12.48 5.76H4.8v20.48h7.68V15.92l7.12 10.32h7.6V5.76z">
                                    </path>
                                </svg><b>네이버로 시작하기</b></span></span></button>
                    <div class="snsbuttoncircle">
                        <button id="google">
                            <span class="google">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                                    <defs>
                                        <path id="a" d="M0 0h348v46H0z"></path>
                                    </defs>
                                    <g fill="none" fill-rule="evenodd">
                                        <g transform="translate(-16 -13)">
                                            <use></use>
                                            <path stroke="#DADCE0" d="M-.5-.5h349v47H-.5z"></path>
                                        </g>
                                        <path fill="#4285F4"
                                            d="M18.64 10.205c0-.639-.057-1.252-.164-1.841H10v3.481h4.844a4.14 4.14 0 0 1-1.796 2.716v2.259h2.908c1.702-1.567 2.684-3.875 2.684-6.615z">
                                        </path>
                                        <path fill="#34A853"
                                            d="M10 19c2.43 0 4.467-.806 5.956-2.18l-2.908-2.259c-.806.54-1.837.86-3.048.86-2.344 0-4.328-1.584-5.036-3.711H1.957v2.332A8.997 8.997 0 0 0 10 19z">
                                        </path>
                                        <path fill="#FBBC05"
                                            d="M4.964 11.71A5.41 5.41 0 0 1 4.682 10c0-.593.102-1.17.282-1.71V5.958H1.957A8.996 8.996 0 0 0 1 10c0 1.452.348 2.827.957 4.042l3.007-2.332z">
                                        </path>
                                        <path fill="#EA4335"
                                            d="M10 4.58c1.321 0 2.508.454 3.44 1.345l2.582-2.58C14.463 1.891 12.426 1 10 1a8.997 8.997 0 0 0-8.043 4.958L4.964 8.29C5.672 6.163 7.656 4.58 10 4.58z">
                                        </path>
                                        <path d="M0 0h20v20H0z"></path>
                                    </g>
                                </svg>
                            </span></button>
                        <button id="facebook">
                            <span class="facebook">
                                <svg viewBox="0 0 48 48" focusable="false" role="presentation"
                                    class="withIcon_icon__1YH1P" aria-hidden="true">
                                    <path
                                        d="M14.4 19.547h5.673v-5.256a8.559 8.559 0 0 1 2.4-6.132c2.618-2.628 6.109-2.3 11.127-1.861v5.913h-3.71a3.374 3.374 0 0 0-2.29.766 3.514 3.514 0 0 0-.655 2.3v4.27h6.437l-.873 6.57h-5.564V43.2h-6.872V26.118H14.4v-6.57z">
                                    </path>
                                </svg>
                            </span></button>
                        <button id="apple">
                            <span class="apple">
                                <svg viewBox="0 0 32 32" focusable="false" role="presentation"
                                    class="withIcon_icon__1YH1P" aria-hidden="true">
                                    <path
                                        d="M24.96 26c-1.12 1.68-2.32 3.28-4.08 3.28s-2.32-1.04-4.4-1.04-2.64 1.04-4.4 1.12S9.04 27.6 7.92 26c-2.32-3.28-4-9.36-1.68-13.44 1.098-1.973 3.148-3.299 5.512-3.36 1.688 0 3.368 1.12 4.408 1.12s3.04-1.44 5.12-1.2a6.157 6.157 0 0 1 4.867 2.62c-1.691 1.087-2.82 2.936-2.867 5.053a5.926 5.926 0 0 0 3.562 5.352 13.472 13.472 0 0 1-1.913 3.901zm-7.6-21.36a6.072 6.072 0 0 1 3.894-1.998c.038.139.045.303.045.469 0 1.44-.521 2.759-1.386 3.777A4.871 4.871 0 0 1 16.04 8.8h-.042a6.886 6.886 0 0 1-.016-.451 5.66 5.66 0 0 1 1.384-3.716z">
                                    </path>
                                </svg>
                            </span></button>
                    </div>
                </div>sns 로그인 끝 -->

				<!--                 <div class="equity-signup">
                    <a class="corporate" href="/web/waccount/wAccountRegistCorp">기업 회원가입</a>
                    <a href="/web/waccount/wAccountRegistAsso">투자조합 가입</a>
                </div>equity signup -->
			</div>
			<div class="signup-intro"></div>
			<div class="account-container-email">
				<h3 class="signup-intro-email">이메일 간편가입</h3>
				<form action="${pageContext.request.contextPath}/user/signUpOk.user"
					name="join">
					<input type="hidden" name="corp" value="y"> <input
						type="hidden" name="corpIntroductionText" value=""> <input
						type="hidden" name="fileSystemName" value="">
					<div class="email-signup-form-container">
						<div class="email-field-container">
							<label class="EmailAuthField">아이디</label>
							<div class="email-field-input-continer">
								<div class="EmailAuthField_inputField">
									<input name="userIdentification" placeholder="아이디 입력"
										type="text" class="email-field" id="identification-input">
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
								<input name="userPassword" placeholder="비밀번호 입력" type="password"
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
								<input name="userPassword" placeholder="비밀번호 확인" type="password"
									class="re-input-password-container" aria-invalid="false">
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
									<input name="userNickname" placeholder="닉네임 입력" type="text"
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
									<input name="userName" placeholder="기업명 입력" type="text"
										class="email-field corp-name-field" id="corp-name">
								</div>
							</div>
							<!-- email-field-input-continer -->
							<em class="corp-name-error error-message">기업명을 입력하세요.</em>
						</div>
						<!-- email-field -->
					</div>
					<!-- <div class="name-field email-field" id="name-name"><label>이메일</label>
                        <div class="TextField_field__1B2AH ">
                            <input name="email" placeholder="이메일 입력" type="text" class="email-input" id="email-input">
                        </div>
                        <em class="email-error error-message">이메일을 입력해주세요.</em>
                    </div> -->
					<div class="name-field" id="name-name">
						<label>이메일</label>
						<div class="TextField_field__1B2AH">
							<input name="userEmail" placeholder="이메일 입력" type="text"
								class="name-input" id="email-input">
						</div>
						<em class="email-error error-message">이메일을 입력해주세요.</em>
					</div>
					<!-- email 끝 -->
					<div class="name-field" id="name-name">
						<label>대표 전화번호</label>
						<div class="TextField_field__1B2AH">
							<input name="userPhone" placeholder="대표 번호 입력" type="text"
								class="name-input" id="input-phone-number" maxlength="11">
						</div>
						<em class="phone-error error-message">핸드폰 번호를 입력해주세요.</em>
					</div>
					<!-- phoneNumber 끝 -->
					<div class="name-field" id="name-name">
						<label>기업 주소</label>
						<div class="TextField_field__1B2AH">
							<!-- <input name="corpAddress" placeholder="기업 주소 입력" type="text"
								class="name-input" id="input-corp-address" maxlength="11"> -->
								<input class="address-inputFirst" type="text" id="sample6_postcode" onclick="sample6_execDaumPostcode()" placeholder="주소를 찾을려면 눌러주세요" maxlength="14">
								<input class="address-input" type="text" id="sample6_address" placeholder="주소">
								<input type="text" class="address-input" id="sample6_extraAddress" placeholder="참고항목">
								<input class="address-input" type="text" id="sample6_detailAddress" placeholder="상세주소">
						</div>
						<em class="corp-address error-message">기업 주소를 입력해주세요.</em>
					</div>
					<!-- 주소 끝 -->
					<div class="name-field" id="name-name">
						<label>기업 등록 번호</label>
						<div class="TextField_field__1B2AH">
							<input name="corpRegisterNumber" placeholder="기업 번호 입력"
								type="text" class="name-input" id="input-corp-number"
								maxlength="12">
						</div>
						<em class="corp-number error-message">기업 등록 번호를 입력해주세요.</em>
					</div>
					<!-- phoneNumber 끝 -->
					<div class="SignUpAllCheckTermsCheckbox">
						<!-- 회원 약관 동의 -->
						<label for="termsUpdateRequestCheckBox" class="termscheckbox"
							id="termscheckbox"> <input
							id="termsUpdateRequestCheckBox" type="checkbox" class="Checkbox">
							<span class="checkbox-icon" aria-hidden="true"> <svg
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


					<button class="signup-submit-button" type="button" onclick="send()">
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
<script>
	let contextPath = "${pageContext.request.contextPath}"
	/* 	let result = ${result}; */
</script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/user/signUp-corp.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
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
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
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
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
</html>