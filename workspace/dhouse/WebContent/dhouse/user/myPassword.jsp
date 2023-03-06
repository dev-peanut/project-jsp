<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/user/myPassword.css">
</head>
<body>
	<div id="page-container">
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
		<div id="accountWrap">
            <!-- S : #newContainer -->
            <div id="newContainer">
                <!-- account-wrap -->
                <div class="account-wrap">
                    <h2 class="small">비밀번호 변경</h2>
	                    <div class="email-input-wrap">
	                    	<form id="saveForm">
	                        	<input type="password" id="newPassword" name="newPassword" class="input-text passwordval" placeholder="비밀번호" maxlength="17">
	                        	<p id="passwordError" class="pwd-text">영문,숫자,특수문자를 조합한 8자 이상</p>
	                        	<input type="password" id="newPasswordConfirm" name="newPasswordConfirm" class="input-text passwordvalconfirm" placeholder="비밀번호 확인" maxlength="17">
	                        	<p class="error-text">비밀번호가 같지 않습니다.</p>
	                        	<div class="email-input-wrap small">
                            		<div class="btn-wrap smaller">
                                		<button id="saveBtn" type="submit" class="wz button primary block">확인</button>
	                            	</div>
	                        	</div>
	                       </form>
	                    </div>
	                </div>
	            </div>
            <!-- E : #newContainer -->
        </div>
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/user/myPassword.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
</body>
<script>
let contextPath = "${pageContext.request.contextPath}";
</script>
</html>