<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../../assets/css/user/myPage.css">
<link rel="stylesheet" href="../../assets/css/component/footer.css">
</head>
<body>
	<div id="page-container">
		<div id="accountWrap">
            <!-- S : #newContainer -->
            <div id="newContainer">
                <!-- account-wrap -->
                <div class="account-wrap">
                    <h2 class="small">비밀번호 등록</h2>
	                    <div class="email-input-wrap">
	                    	<form id="saveForm">
	                        	<input type="password" id="newPassword" name="newPassword" class="input-text" placeholder="비밀번호" maxlength="17">
	                        	<p id="passwordError" class="pwd-text">영문, 숫자, 특수문자 (!@#$%^&amp;*+=-)를 모두 조합한 8자 이상</p>
	                        	<input type="password" id="newPasswordConfirm" name="newPasswordConfirm" class="input-text" placeholder="비밀번호 확인" maxlength="17">
	                        	<p class="error-text">비밀번호가 같지 않습니다.</p>
	                        	<div class="email-input-wrap small">
                            		<div class="btn-wrap smaller">
                                	<button id="saveBtn" type="button" class="wz button primary block">확인</button>
	                            	</div>
	                        	</div>
	                       </form>
	                    </div>
	                </div>
	            </div>
            <!-- E : #newContainer -->
        </div>
	</div>
</body>
</html>