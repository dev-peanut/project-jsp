<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3.마이페이지 회원탈퇴</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/logo.png">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/user/myPageWithdraw.css">
</head>
<body>
	<div>
		<div id="wz-header"></div>
		<main class="account-drop wzui">
		<!-- 헤더 적용 -->
			<jsp:include page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
			  <div class="wrap">
			    <h1>회원 탈퇴</h1>
			    <p><strong>${user.userName}</strong>님, 나눔의집을 이용하시는데 혹시 아래와 같은 불편함이 있으셨으면, 아래 방법을 한번 이용해보세요.</p>
			    <div class="message-box">
			      <dl>
			        <dt>기업소개 / 사진 등록이 불편하신가요?</dt>
			        <dd>해당 정보는 MY 정보설정 &gt; <a href="/web/waccount/wAccountUpdateBasicInfo">기본 정보 설정</a>에서 하실 수 있습니다.</dd>
			        <dt>기타 불편한 사항이 있으시면 언제든 나눔의집에게 알려주세요.</dt>
			        <dd>
			        <a href="#" data-intercom-message="회원 탈퇴 관련 질문">나눔의집에 문의하기</a> ㅣ 1234-1234 ㅣ 카카오톡 친구추가 ‘와디즈’ ㅣ info@dhouse.kr</dd>
			      </dl>
			    </div>
<!-- 			<h2>어떤 점이 불편하셨나요?</h2>
			    <p>와디즈를 이용하면서 불편했던 점을 말씀해주시면, 와디즈의 서비스 개선에 참고하도록 하겠습니다.</p>
			    <div class="selectbox">
			      <select id="selectDropOutReason" name="reason">
			        <option value="">탈퇴사유는 무엇인가요?</option>
			        <option>재 가입을 위해</option>
			        <option>콘텐츠 품질과 서비스 정보 부족</option>
			        <option>고객 서비스의 불만</option>
			        <option>프로젝트 진행안내 및 메이커 새소식 수신거부</option>
			        <option>와디즈 광고 SMS, EMAIL수신거부</option>
			        <option>시스템 장애 (속도, 잦은 장애)</option>
			        <option>개인 정보 (통신 및 신용정보 등) 노출 우려</option>
			        <option value="etc">기타</option>
			      </select>
			      <span>탈퇴사유는 무엇인가요?</span>
			      <em id="selectDropOutReasonError" style="display:none">탈퇴 사유를 선택해주세요.</em>
			    </div> -->
			    <div class="reason-text" id="inputDropOutReason" style="display:none">
			      <input type="text" name="reason-text" id="reason-text" placeholder="사유를 입력해 주세요." class="large" maxlength="64">
			      <em id="inputDropOutReasonError" style="display:none">탈퇴 사유를 입력해주세요.</em>
			    </div>
			    <h2>탈퇴 전, 꼭 확인하세요!</h2>
			    <p>탈퇴 전 반드시 아래 유의 사항을 확인하시기 바랍니다.<br><em>등록 진행 중인 기부가 있을때는 탈퇴가 불가능합니다.</em></p>
			    <dl>
			      <dt>탈퇴 후 재가입 시 기존 정보 복구 불가</dt>
			      <dd>참여한 기부 및 레벨, 포인트 등 개인 정보 일괄 삭제</dd>
			      <dt>나눔의집 내 모든 서비스에서 탈퇴</dt>
			      <dd>기부하기, 기부기업 소개, 배너 홍보 등 나눔의집 회원으로서 이용하던 서비스 모두 이용 불가</dd>
			      <dt>포인트 미환급 불이익 감수</dt>
			      <dd>기부 kg에 따른 포인트 일괄 삭제로 추후 재가입 및 홍보 이용 시 레벨 초기화</dd>
			    </dl>
				    <label class="wz checkbox">
					<input type="checkbox" name="agree" value="Y" id="dropConfirm" onclick="test()">
					    <span>상기 와디즈 탈퇴 시 유의 사항을 확인하였습니다.</span>
				    </label>
			    </p>
<!-- 			    <h2>본인 확인</h2>
			    <p>안전한 탈퇴를 위해 본인 인증 절차를 진행합니다. 본인확인하기 버튼을 클릭해주세요.</p>
			    <div id="verify-step1" class="verify-box">
			      <input type="button" value="본인 확인하기" class="wz button primary" id="verify-next">
			    </div>
			    <div id="verify-step2" class="verify-box" style="display:none">
			      <div class="wz input action user-verify" style="padding-right:0">
			        <input type="text" name="respon" value="010-****-*639" readonly="readonly">
			        <input type="hidden" name="pfKey" id="pfKey">
			        <button type="button" class="wz button" id="verify-retry">재전송</button>
			      </div>
			      <div class="user-verify-confirm">
			        <form name="verify-code-confirm" style="padding-right:0">
			          <div class="wz input action verify-code">
			            <input type="number" name="code" id="code" placeholder="인증번호 입력" maxlength="6">
			            <span class="timer" id="timer" style="right:100px;">00:00</span>
			            <button type="button" class="wz button gray" id="verify-confirm">인증 확인</button>
			          </div>
			        </form>
			        <em id="verify-error" style="display:none">인증번호를 잘못 입력하셨습니다. 다시 입력해 주세요.</em>
			        <em id="verify-time-over" style="display:none">인증시간이 초과되었습니다. 재전송 버튼를 눌러주세요.</em>
			      </div>
			    </div> -->
			    <hr>
			    <form action="${pageContext.request.contextPath}/myPage.myPage" name="delete" method="post">
			    <div class="drop-button">
			      <input type="submit" value="회원 탈퇴" class="wz button red" disabled="disabled" id="btnDropOut">
			    </div></form>
			  </div>
			</main>
		<!-- footer적용 -->
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
	</div>
</body>
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/user/myPageWithdraw.js"></script>
	<script>
	let contextPath = "${pageContext.request.contextPath}";
	let userId = "${user.userId}";
</script>
</html>