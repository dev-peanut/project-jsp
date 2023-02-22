<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>회원관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
<!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/user.css" />
</head>
<body>
	<!-- header -->
	<jsp:include page="/app/component/adminHeader.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- aside -->
	<jsp:include page="/app/component/adminAside.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- 페이지별로 class 이름 기능에 맞게 재설정 -->
	<main class="module-container">
		<article class="module--search">
			<div class="search__searchbox">
				<form action="" class="search__searchbox__form">
					<input id="searchbox" type="text"
						placeholder="이름, 전화번호, 이메일로 검색해보세요" />
					<button type="button" class="search__searchbox__button"
						style="position: relative; /* right: 0px; */ left: 410px;">
						<img
							src="${pageContext.request.contextPath}/assets/img/admin/icon/search.png"
							alt="" />
					</button>
				</form>
			</div>
		</article>
		<article class="module module--user-summary">
			<button type="button" style="margin: 0px 0 0 -28px;">정보 수정</button>
		</article>
		<article class="module module--user-controller">
			<button type="button" style="margin: 0 0 0 -28px;">선택 삭제</button>
		</article>
		<!--  <div class="buttonWrapper">
	      <button type="button" id="deleteButton">선택 삭제</button>
      	</div>  -->
		<article class="module module--user-list">
			<div class="user-list__title-container">
				<div class="user-list__title-unit">
					<input type="checkbox" id="title__checkbox" name="checkbox-all" />
					<ul class="user-list__title">
						<li class="title__id">고객번호</li>
						<li class="title__name">이름</li>
						<li class="title__user-id">회원 ID</li>
						<li class="title__email">이메일</li>
						<li class="title__phone">핸드폰 번호</li>
						<li class="title__join">가입일</li>
						<li class="title__status">상태</li>
						<li class="title__detail">상세</li>
					</ul>
				</div>
			</div>
			<div id="scroll">
				<div class="user-list__info-container">
					<div class="user-list__info-unit">
						<input type="checkbox" class="user__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="user__checkbox--label">
							<ul class="user-list__info">
								<!-- <li>등록된 회원이 없습니다.</li> -->
								<li class="user__id" name="userId">00000</li>
								<li class="user__name" name="userName">김욱성</li>
								<li class="user__user-id" name="userNickname">dev_luk</li>
								<li class="user__email" name="userEmail">kus1234@naver.com</li>
								<li class="user__phone" name="userPhoneNumber">010-1234-1234</li>
								<li class="user__join" name="userDateJoin">2023.02.22</li>
								<li class="user__status" name="">방금 전</li>
								<li class="user__detail" name="userDetail">20대</li>
							</ul>
						</label>
					</div>
				</div>
				<!-- 회원 추가 -->
				<div class="user-list__info-container">
					<div class="user-list__info-unit">
						<input type="checkbox" class="user__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="user__checkbox--label">
							<ul class="user-list__info">
								<!-- <li>등록된 회원이 없습니다.</li> -->
								<li class="user__id" name="userId">00003</li>
								<li class="user__name" name="userName">윤민우</li>
								<li class="user__user-id" name="userNickname">dev_umin</li>
								<li class="user__email" name="userEmail">ymu1234@naver.com</li>
								<li class="user__phone" name="userPhoneNumber">010-1234-1234</li>
								<li class="user__join" name="userDateJoin">2023.02.22</li>
								<li class="user__status" name="">5분 전</li>
								<li class="user__detail" name="userDetail">20대</li>
							</ul>
						</label>
					</div>
				</div>
				<div class="user-list__info-container">
					<div class="user-list__info-unit">
						<input type="checkbox" class="user__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="user__checkbox--label">
							<ul class="user-list__info">
								<!-- <li>등록된 회원이 없습니다.</li> -->
								<li class="user__id" name="userId">00001</li>
								<li class="user__name" name="userName">김세윤</li>
								<li class="user__user-id" name="userNickname">dev_ksu</li>
								<li class="user__email" name="userEmail">ksu1234@naver.com</li>
								<li class="user__phone" name="userPhoneNumber">010-1234-1234</li>
								<li class="user__join" name="userDateJoin">2023.02.22</li>
								<li class="user__status" name="">1시간 전</li>
								<li class="user__detail" name="userDetail">20대</li>
							</ul>
						</label>
					</div>
				</div>
				<div class="user-list__info-container">
					<div class="user-list__info-unit">
						<input type="checkbox" class="user__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="user__checkbox--label">
							<ul class="user-list__info">
								<!-- <li>등록된 회원이 없습니다.</li> -->
								<li class="user__id" name="userId">00004</li>
								<li class="user__name" name="userName">박다예</li>
								<li class="user__user-id" name="userNickname">dev_pdy</li>
								<li class="user__email" name="userEmail">pdy1234@naver.com</li>
								<li class="user__phone" name="userPhoneNumber">010-1234-1234</li>
								<li class="user__join" name="userDateJoin">2023.02.22</li>
								<li class="user__status" name="">1주 전</li>
								<li class="user__detail" name="userDetail">20대</li>
							</ul>
						</label>
					</div>
				</div>
				<div class="user-list__info-container">
					<div class="user-list__info-unit">
						<input type="checkbox" class="user__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="user__checkbox--label">
							<ul class="user-list__info">
								<!-- <li>등록된 회원이 없습니다.</li> -->
								<li class="user__id" name="userId">00003</li>
								<li class="user__name" name="userName">정세인</li>
								<li class="user__user-id" name="userNickname">dev_jsy</li>
								<li class="user__email" name="userEmail">jsy1234@naver.com</li>
								<li class="user__phone" name="userPhoneNumber">010-1234-1234</li>
								<li class="user__join" name="userDateJoin">2023.02.22</li>
								<li class="user__status" name="">1달 전</li>
								<li class="user__detail" name="userDetail">20대</li>
							</ul>
						</label>
					</div>
				</div>
				<!-- 회원 추가 끝 -->
			</div>



		</article>
	</main>
</body>
<script src="${pageContext.request.contextPath}/assets/js/admin/user.js"></script>
</html>