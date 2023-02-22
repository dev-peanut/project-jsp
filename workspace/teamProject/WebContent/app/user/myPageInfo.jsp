<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 정보설정</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../../assets/css/user/myPageInfo.css">
</head>
<body>
	<div id="page-container">
		<!-- header -->
		<div id="wz-header"></div>
		<!-- main -->
		<div id="accountWrap">
            <!-- S : #newContainer -->
            <div id="newContainer">
                <!-- account-wrap with-footer -->
                <div class="account-wrap with-footer">
                    <h2 class="big">MY 정보설정</h2>
                    <a class="my-info" href="/web/waccount/wAccountUpdateBasicInfo">
                        <div class="my-info-text">
                            <h3>기본 정보 설정</h3>
                            <p>이름, 이메일, 휴대폰, SNS연동 등</p>
                        </div>
                        <div class="my-info-btn">
                            <i class="wadizicon wa-chevron-right"></i>
                        </div>
                    </a>
                    <a class="my-info" href="/web/waccount/wAccountUpdateAddPwd">
                       <div class="my-info-text">
                         <h3>비밀번호 등록</h3>
                         <p>계정 비밀번호 등록</p>
                       </div>
                       <div class="my-info-btn">
                         <i class="wadizicon wa-chevron-right"></i>
                       </div>
                    </a>
                    <a class="my-info" href="/web/wmypage/myprofile/modifyprofile">
                        <div class="my-info-text">
                            <h3>프로필 정보 설정</h3>
                            <p>프로필 사진, 경력, 학력, 관심분야</p>
                        </div>
                        <div class="my-info-btn">
                            <i class="wadizicon wa-chevron-right"></i>
                        </div>
                    </a>
                    <a class="my-info" href="/web/waccount/notificationSetting/marketing">
                      <div class="my-info-text">
                          <h3>이벤트 혜택 알림 설정</h3>
                          <p>이메일, SMS 알림 설정</p>
                      </div>
                      <div class="my-info-btn">
                          <i class="wadizicon wa-chevron-right"></i>
                      </div>
                    </a>
                    <a class="my-info" href="/web/waccount/notificationSetting/fundingNews">
                        <div class="my-info-text">
                            <h3>새소식 알림 설정</h3>
                            <p>프로젝트 별 새소식(메일, 앱 푸시) 수신</p>
                        </div>
                        <div class="my-info-btn">
                            <i class="wadizicon wa-chevron-right"></i>
                        </div>
                    </a>
                    <a class="my-info" href="/web/social/followingmaker">
                      <div class="my-info-text">
                          <h3>팔로잉 알림 설정</h3>
                          <p>메이커 팔로잉, 소식 받기 알림 설정</p>
                      </div>
                      <div class="my-info-btn">
                          <i class="wadizicon wa-chevron-right"></i>
                      </div>
                  </a>
                    <div class="my-info">
                        <h3><a href="/web/waccount/wAccountDropOutUser">회원 탈퇴</a></h3>
                    </div>
                </div>
                <!-- //account-wrap with-footer -->
            </div>
            <!-- E : #newContainer -->
        </div>
	</div>
</body>
</html>