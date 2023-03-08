<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/logo.png">
<link
	href="${pageContext.request.contextPath}/static/css/user/login.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/user/login_modal.css">
</head>
<body>
	<jsp:include page="../user/user-header.jsp"></jsp:include>
	<!-- 헤더 -->
	<main class="account-intro-login">
		<!-- login -->
		<div class="wz-container">
			<div class="user-sign-container">
				<h2 class="wz-text-display2">로그인</h2>
				<form action="${pageContext.request.contextPath}/user/loginOk.user"
					name="login" method="post">
					<div class="field">
						<div class="wz-input info-container info-container-first">
							<span> <input type="text" id="id"
								name="userIdentification" placeholder="아이디 입력"
								autocomplete="off" title="아이디 입력">
							</span>
							<p class="help"></p>
						</div>
					</div>
					<div class="field">
						<div class="wz-input info-container">
							<span> <input type="password" id="password"
								name="userPassword" maxlength="20" placeholder="비밀번호 입력"
								title="비밀번호 입력">
							</span>
							<p class="help"></p>
						</div>
					</div>
					<div class="login-action"></div>
					<p class="forgot go-login-corp">
						<a 
							></a>
					</p>
					<p class="forgot real-forgot">
						<a href="${pageContext.request.contextPath}/user/findId.user">로그인 정보를
							잊으셨나요?</a>
					</p>
					<!-- <button type="submit" class="login" >로그인</button> -->
					<button type="button" class="login" onclick="send()">로그인</button>
					<!-- login button -->
				</form>


				<div class="iam-account-app">
					<!--SNS 사이트를 통한 로그인 -->
					<button class="kakaobutton">
						<span><span class="Button_children__weH0H"><svg
									viewBox="0 0 32 32" focusable="false" role="presentation"
									class="withIcon_icon__1YH1P SNSButtonList_kakaoIcon__1s6gw"
									aria-hidden="true">
									<path
										d="M16 4.64c-6.96 0-12.64 4.48-12.64 10.08 0 3.52 2.32 6.64 5.76 8.48l-.96 4.96 5.44-3.6 2.4.16c6.96 0 12.64-4.48 12.64-10.08S22.96 4.56 16 4.64z"></path></svg>카카오로
								시작하기</span></span>
					</button>
					<button id="naver" class="loginbutton" type="button">
						<span id="naver-span"><span id="naver-span-span"
							class="Button_children__weH0H"><svg id="naver-svg"
									viewBox="0 0 32 32" focusable="false" role="presentation"
									class="withIcon_icon__1YH1P SNSButtonList_naverIcon__3TjPM"
									aria-hidden="true">
									<path
										d="M19.52 5.76v10.32L12.48 5.76H4.8v20.48h7.68V15.92l7.12 10.32h7.6V5.76z"></path></svg>네이버로
								시작하기</span></span>
					</button>
				</div>
				<div class="bottom-message">
					<!-- 하단 메세지 -->
					<p>
						아직 와디즈 계정이 없나요? <a class="join"
							href="${pageContext.request.contextPath}/user/signUp.user">회원가입</a>
					</p>
				</div>
			</div>
		</div>
	</main>
	<!-- login -->
	<!-- 모달 -->
	<div class="modal">
		<div class="warn-modal">
			<div id="content-wrap"></div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/user/login.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/user/login_modal.js"></script>
</html>
<c:if test="${not empty param.login}">
	<script>
		showWarnModal("아이디 또는 비밀번호를<br>확인해주세요");
	</script>
</c:if>
