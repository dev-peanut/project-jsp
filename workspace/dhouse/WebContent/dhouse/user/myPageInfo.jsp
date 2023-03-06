<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2.마이페이지 정보설정</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/logo.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/user/myPageInfo.css">
</head>
<body>
	<div id="page-container">
		<main id="main-app">
			<!-- 헤더 적용 -->
			<jsp:include page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
			<!-- main -->
			<div id="accountWrap">
	            <!-- S : #newContainer -->
	            <div id="newContainer">
	                <!-- account-wrap with-footer -->
	                <div class="account-wrap with-footer">
	                    <h2 class="big">MY 정보설정</h2>
	                    <a class="my-info" href="javascript:location.href='${pageContext.request.contextPath}/user/myPageInfo.myPage?userId=${myPage.userId}'">
	                        <div class="my-info-text">
	                            <h3>기본 정보 설정</h3>
	                            <p>이름, 이메일, 휴대폰, SNS연동 등</p>
	                        </div>
	                        <div class="my-info-btn">
	                            <i class="wadizicon wa-chevron-right"></i>
	                        </div>
	                    </a>
	                    <a class="my-info" href="${pageContext.request.contextPath}/dhouse/user/myPassword.jsp">
	                       <div class="my-info-text">
	                         <h3>비밀번호 등록</h3>
	                         <p>계정 비밀번호 등록</p>
	                       </div>
	                       <div class="my-info-btn">
	                         <i class="wadizicon wa-chevron-right"></i>
	                       </div>
	                    </a>
	                    <div class="my-info">
	                        <h3><a href="${pageContext.request.contextPath}/dhouse/user/myPageWithdraw.jsp">회원 탈퇴</a></h3>
	                    </div>
	                </div>
	                <!-- //account-wrap with-footer -->
	            </div>
	            <!-- E : #newContainer -->
        	</div>
        </main>
       	<!-- footer적용 -->
	<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
	</div>
</body>
</html>