<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 회원가입</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="https://static.wadiz.kr/assets/icon/favicon.ico">
<link href="../../assets/css/user/signUp.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="../user/user-header.jsp"></jsp:include>
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
        <main id="iam-account-app"> <!-- main -->
            <div class="account-container"> <!-- sns를 통한 로그인 -->
                <h2 class="account-title">간편가입</h2>
                <div class="first-benefit">
                    <div class="first-benefit-content">
                        <span class="first-benefit-gift-icon"></span>
                        <span class="first-benefit-gift-text">와디즈가 처음이라면? <strong>최대 2만원 혜택</strong></span>
                    </div><!-- first-benefit-content -->
                </div>

                <div><!-- sns로그인 -->
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
                </div><!-- sns 로그인 끝 -->

                <div class="equity-signup">
                    <a class="corporate" href="../../app/user/signUp-corp.jsp">기업 회원가입</a>
                    <a href="/web/waccount/wAccountRegistAsso">투자조합 가입</a>
                </div><!-- equity signup -->
            </div>
            <div class="signup-intro"> </div>
            <div class="account-container-email">
                <h3 class="signup-intro-email">이메일 간편가입</h3>
                <form>
               		 <div class="email-signup-form-container">
                        <div class="email-field-container">
                            <label class="EmailAuthField">아이디</label>
                            <div class="email-field-input-continer">
                                <div class="EmailAuthField_inputField">
                                    <input name="identification" placeholder="아이디 입력" type="text" class="email-field">
                                </div>
                            </div><!-- email-field-input-continer -->
                            <em class="identification-error error-message">아이디를 입력해주세요.</em>
                        </div><!-- email-field -->
                        <!-- 한줄 복사 -->
                        <div class="password-field"><label>비밀번호</label><!-- 비밀번호 -->
                            <div class="password-field-text">
                                <input name="password" placeholder="비밀번호 입력" type="password"
                                    class="input-password-container" id="password-input" aria-invalid="false">
                                <button aria-label="비밀번호 보기" class="Button_TextField_icon" type="button">
                                    <span class="eye" id="eye1">
                                        <span class="Button_children_pw">
                                            <svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon__1YH1P" aria-hidden="true">
                                                <path d="M23.589 7.895l.411.001c10.56 0 20.16 6.504 23.34 15.78l.132.432-.144.396c-3.216 9.168-12.816 15.6-23.328 15.6A24.84 24.84 0 0 1 .684 24.492l-.168-.432.156-.42A24.804 24.804 0 0 1 24 7.896zM24 14.46a9.6 9.6 0 1 0 0 19.2 9.6 9.6 0 0 0 0-19.2zm0 4.14a5.4 5.4 0 1 1 0 10.8 5.4 5.4 0 0 1 0-10.8z"></path>
                                            </svg>
                                        </span>
                                    </span>
                                </button>
                            </div>
                        </div>
                        <em class="password-error error-message">비밀번호를 입력해주세요.</em>
                        <!-- password 1  -->

                        <div class="recheck-password"><label></label>
                            <div class="TextField_field__1B2AH">
                                <input name="verifyPassword" placeholder="비밀번호 확인" type="password"
                                    class="re-input-password-container" aria-invalid="false">
                                <button aria-label="비밀번호 보기" class="Button_TextField_icon" id="eye-wrapper" type="button">
                                    <span class="eye">
                                        <span class="Button_children">
                                            <svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon__1YH1P" aria-hidden="true">
                                                <path d="M23.589 7.895l.411.001c10.56 0 20.16 6.504 23.34 15.78l.132.432-.144.396c-3.216 9.168-12.816 15.6-23.328 15.6A24.84 24.84 0 0 1 .684 24.492l-.168-.432.156-.42A24.804 24.804 0 0 1 24 7.896zM24 14.46a9.6 9.6 0 1 0 0 19.2 9.6 9.6 0 0 0 0-19.2zm0 4.14a5.4 5.4 0 1 1 0 10.8 5.4 5.4 0 0 1 0-10.8z"></path>
                                            </svg>
                                        </span>
                                    </span>
                                </button>
                            </div>
                        </div>
                        <!-- test -->
                        <em class="recheck-password-error error-message">비밀번호가 일치하지 않습니다.</em>
                        
                        <div class="email-field-container" id="nickName-title">
                            <label class="EmailAuthField">닉네임</label>
                            <div class="email-field-input-continer">
                                <div class="EmailAuthField_inputField">
                                    <input name="nickName" placeholder="닉네임 입력" type="text" class="email-field">
                                </div>
                            </div><!-- email-field-input-continer -->
                            <em class="nickName-error error-message">닉네임을 입력해주세요.</em>
                        </div><!-- email-field -->
                        <!-- 한줄 복사 -->
                        <div class="email-field-container">
                            <label class="EmailAuthField">이메일</label>
                            <div class="email-field-input-continer">
                                <div class="EmailAuthField_inputField">
                                    <input name="name" placeholder="이메일 입력" type="text" class="email-field">
                                </div>
                            </div><!-- email-field-input-continer -->
                            <em class="email-error error-message">이메일을 입력해주세요.</em>
                        </div><!-- email-field -->
                	</div>
                    <div class="name-field" id="name-name"><label>이름</label>
                        <div class="TextField_field__1B2AH">
                            <input name="email" placeholder="이름 입력" type="text" class="name-input">
                        </div>
                        <em class="name-error error-message">이름을 입력해주세요.</em>
                    </div>
                    <!-- 이름 끝 -->
                    <div class="phone-field" id="phone-name"><label>핸드폰 번호</label>
                        <div class="TextField_field__1B2AH">
                            <input name="phoneNumber" placeholder="핸드폰 번호 입력" type="text" class="name-input" maxlength="11">
                        </div>
                        <em class="phone-error error-message">핸드폰 번호를 입력해주세요.</em>
                    </div>
					<!-- phoneNumber 끝 -->
                    <div class="SignUpAllCheckTermsCheckbox"> <!-- 회원 약관 동의 -->
                        <label for="termsUpdateRequestCheckBox" class="termscheckbox">
                            <input id="termsUpdateRequestCheckBox" type="checkbox" class="Checkbox">
                            <span class="checkbox-icon" aria-hidden="true">
                                <svg viewBox="0 0 16 2" focusable="false" role="presentation" class="withIcon_icon__1YH1P_Checkbox_removeIcon__12oZL" aria-hidden="true"><path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
                                                <svg id="check-box" viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon__1YH1P_Checkbox_checkIcon__2QgEJ" aria-hidden="true"><path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span>
                                <span class="Checkbox_content__1uyi7"></span></label><label
                            for="termsUpdateRequestCheckBox"
                            class="SignUpAllCheckTermsCheckbox_termsAllCheckLabel__3TxCG">
                            <p class="checkbox-content-label-text">전체동의</p>
                            <p class="checkboxDescription">회원·서비스(필수), 투자 서비스 (선택), 스타트업찾기 서비스 (선택), 이벤트·혜택알림 동의(선택), 만
                                14세 이상(필수)</p>
                        </label>
                        <button class="Button_button" type="button"><span>
                                <button class="SignUpAllCheckTermsCheckbox_termsMoreButton" type="button"><span>
                                        <span class="Button_children">
                                            <svg viewBox="0 0 32 32" focusable="false" role="presentation"
                                                class="withIcon_icon__1YH1P" aria-hidden="true">
                                                <path d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z">
                                                </path>
                                            </svg></span></span></button>
                    </div>


                    <button class="signup-submit-button" type="button" > <!-- 완료 버튼 -->
                        <span><span class="signup-submit-button-text">완료</span></span></button>
                </form>

                    <p class="login-page-link">이미 와디즈 계정이 있나요?<!-- 하단 메세지 -->
                        <a href="/web/waccount/wAccountLogin">로그인</a>
                    </p>
                <!-- 여기부터 -->

            </div><!-- account-container-email -->
            <!-- signup intro -->
        </main><!-- main -->
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/user/signUp.js"></script>
</html>