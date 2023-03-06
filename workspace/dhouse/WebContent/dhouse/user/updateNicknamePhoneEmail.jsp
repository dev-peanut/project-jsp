<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3.기본정보 설정</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/logo.png">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/user/mySet.css">
</head>
<body>
	<div>
		<!-- 헤더 적용 -->
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
		<!-- 메인 적용 -->
		<div>
			<div id="accountWrap">
            <!-- S : #newContainer -->
            <div id="newContainer">
                <!-- account-wrap -->
                <div class="account-wrap">
                    <h2>기본 정보 설정</h2>
                    <form action="${pageContext.request.contextPath}/updateNicknamePhoneEmail.myPage" id="saveForm">
		                 <div class="email-input-wrap">
                       <input type="text" name="nickName" class="input-text" maxlength="20" placeholder="닉네임" value="익명의 서포터 993">
                       <input type="text" name="realName" class="input-text disable hide" maxlength="20" placeholder="이름" value="" disabled="" style="display: none;">
                       <div class="input-btn-wrap">
	                        	<div class="input">
	                            	<input type="email" id="userEmail" name="userEmailAddress" class="disable input-text" placeholder="이메일 계정" value="${tbl_user.userEmail}" disabled="" onclick="click">
	                          	</div>
	                          	<div id="emailChangeBtn" class="emailAuthBtn btn" data-status="change">
	                            	<a href="#" onclick="return false;">
	                                	<span>변경</span>
	                              	</a>
	                          	</div>
	                          	<div id="emailCheckBtn" class="emailAuthBtn btn" style="display:none;" data-status="check">
	                            	<a href="#" onclick="return false;">
	                                	<span>등록하기</span>
	                              	</a>
	                          	</div>
	                          	<div id="emailRetryBtn" class="emailAuthBtn btn" style="display:none;" data-status="retry">
	                              	<a href="#" onclick="return false;">
	                                  	<span>재전송</span>
	                              	</a>
	                          	</div>
	                        </div>
	                        <div id="emailConfirmArea" class="input-btn-wrap" style="display:none;">
	                            <div class="input">
	                                <input type="text" id="emailAuthCode" class="input-text" placeholder="인증번호">
	                                <input type="hidden" id="emailConfirmId" value="">
	                                <time class="limit_time" style="position:relative;top:-39px;left:85%;text-align:right;">
	                                	<span id="emailMs_timer" style="color:#50e3c2;font-size:13px;"></span>
	                                </time>
	                            </div>
	                            <div id="emailConfirmBtn" class="emailAuthBtn btn" data-status="confirm">
	                                <a href="#" onclick="return false;">
	                                    <span>인증완료</span>
	                                </a>
	                            </div>
	                        </div>
	                        <p id="emailSuccessNumberCheckMsg" class="error-text emailMsg" style="color:#50e3c2;">인증이 완료되었습니다.</p>
	                        <p id="emailError" class="error-text emailMsg">이메일 형식이 올바르지 않습니다.</p>
	                        <div class="input-btn-wrap">
	                          <div class="input">
	                              <input id="mobileNumber" name="mobileNumber" type="tel" class="disable input-text" placeholder="휴대폰 번호" value="${tbl_user.userPhone}" disabled="">
	                          </div>
	                          <div id="mobileCheckBtn" class="mobileAuthBtn btn" style="display:none;" data-status="check">
	                              <a href="#" onclick="return false;">
	                                  <span>등록하기</span>
	                              </a>
	                          </div>
	                          <div id="mobileChangeBtn" class="mobileAuthBtn btn" data-status="change">
	                              <a href="#" onclick="return false;">
	                                  <span>변경</span>
	                              </a>
	                          </div>
	                          <div id="mobileRetryBtn" class="mobileAuthBtn btn" style="display:none;" data-status="retry">
	                              <a href="#" onclick="return false;">
	                                  <span>재전송</span>
	                              </a>
	                          </div>
	                        </div>
	                        <div id="mobileConfirmArea" class="input-btn-wrap" style="display:none;">
	                            <div class="input">
	                                <input type="text" id="authCode" name="mobileNumber" class="input-text" placeholder="휴대폰 번호">
	                                <input type="hidden" id="confirmId" value="">
	                                <time class="limit_time" style="position:relative;top:-39px;left:85%;text-align:right;">
	                                	<span id="smsMs_timer" style="color:#50e3c2;font-size:13px;"></span>
	                                </time>
	                            </div>
	                            <div id="confirmMobileBtn" class="mobileAuthBtn btn" data-status="confirm">
	                                <a href="#" onclick="return false;">
	                                    <span>인증완료</span>
	                                </a>
	                            </div>
	                        </div>
	                        <p id="mobileNumberError" class="checkMobileError error-text mobileMsg">유효한 전화번호를 입력해주세요.</p>
	                        <p id="mobileCheckNumberError" class="error-text mobileMsg">인증번호를 잘못 입력하셨습니다. 다시 입력해주세요.</p>
	                        <p id="mobileTimeOutError" class="error-text mobileMsg">시간이 종료되었습니다. 다시 인증해주세요.</p>
	                        <p id="mobileSuccessNumberCheckMsg" class="error-text mobileMsg" style="color:#50e3c2;">인증이 완료되었습니다.</p>
	                        <div class="social-account-wrap">
                            <h3 class="title">SNS 연동</h3>
                            <p>카카오를 연동하시면 피드에서 친구의 활동을 확인할 수 있어요</p>
	                            <ul>
									<li class="facebook">
										<a href="#" id="facebookLink" class="unlinked">
											<i class="wadizicon wa-facebook"></i>
										</a>
									</li>
									<li class="naver">
										<a href="#" id="naverLink" class="unlinked">
											<i class="wadizicon wa-naver"></i>
										</a>
									</li>
									<li class="kakao ">
										<a href="#" id="kakaoLink" class="unlinked">
											<i class="wadizicon wa-kakao"></i>
										</a>
									</li>
									<li class="google">
										<a href="#" id="googleLink">
											<i></i>
										</a>
									</li>
	                            </ul>	
	                        </div>
							 <div class="email-input-wrap small">
								 <div class="btn-wrap">
									 <button type="submit" id="saveBtn" class="wz button primary block btn-block-mint">확인</button>
								 </div>
							 </div>
	                    </div>
                    	<input type="hidden" id="validEmailFirstCheck" value="Y">
                   		<input type="hidden" id="validEmail" value="1">
                    </form>
                </div>
                <!-- //account-wrap -->
            </div>
            <!-- E : #newContainer -->
        </div>
		</div>
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
	</div>
</body>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/user/myId.js"></script>
</html>