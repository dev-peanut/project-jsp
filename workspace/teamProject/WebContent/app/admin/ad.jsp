<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>홍보 목록</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
<!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/ad.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/components/ad_modal.css" />
</head>
<body>
	<!-- header -->
	<jsp:include page="/app/components/adminHeader.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- aside -->
	<jsp:include page="/app/components/adminAside.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- 페이지별로 class 이름 기능에 맞게 재설정 -->
	<main class="module-container">
		<article class="module--search">
			<div class="search__searchbox">
				<form action="" class="search__searchbox__form">
					<input id="searchbox" type="text" placeholder="원하시는 키워드로 찾아보세요" />
					<button type="button" class="search__searchbox__button">
						<img
							src="${pageContext.request.contextPath}/assets/img/search.png"
							alt="" />
					</button>
				</form>
			</div>
		</article>
		<!-- <article class="module module--support-summary">
			<button type="button" style="margin: 0 0 0 -33px; font-size: 16px;">내용
				수정</button>
		</article> -->
		<article class="module module--support-controller">
			<button type="button" style="margin: 0 0 0 -33px; font-size: 16px;">선택
				삭제</button>
		</article>
		<article class="module module--support-list">
			<div class="support-list__title-container">
				<div class="support-list__title-unit">
					<input type="checkbox" id="title__checkbox" name="checkbox-all" />
					<ul class="support-list__title">
						<li class="title__id">회원번호</li>
						<li class="title__type">글유형</li>
						<li class="title__user-id">회원 ID</li>
						<li class="title__title">제목</li>
						<li class="title__content">내용</li>
						<li class="title__date-post">등록시간</li>
						<li class="title__detail">상세</li>
						<!--   <li class="title__answer-check">답변여부</li>
              <li class="title__answer-date">답변시간</li>
              <li class="title__admin-id">관리자 ID</li>
              <li class="title__answer">답변</li> -->
					</ul>
				</div>
			</div>
			<div id="scroll">
				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">00000</li>
								<li class="support__type"><strong>공지사항</strong></li>
								<li class="support__user-id">admin</li>
								<li class="support__title"><strong>이용 주의사항</strong></li>
								<li class="support__content">서로에게 불편한 일을 만들지 맙시다.서로에게 불편한
									일을 만들지 맙시다.</li>
								<li class="support__date-post">2023.02.22</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;" >상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>


				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">00001</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">ksy</li>
								<li class="support__title">부어치킨</li>
								<li class="support__content">부어치킨에서 한끼당 7000원으로 행사</li>
								<li class="support__date-post">2023.02.22</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;" id="show">상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>
				<!-- 스크롤 테스트  -->
				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">test</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">testId</li>
								<li class="support__title">title</li>
								<li class="support__content">test</li>
								<li class="support__date-post">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;" >상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>

				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">test</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">testId</li>
								<li class="support__title">title</li>
								<li class="support__content">test</li>
								<li class="support__date-post">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;" >상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">test</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">testId</li>
								<li class="support__title">title</li>
								<li class="support__content">test</li>
								<li class="support__date-post">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;" >상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">test</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">testId</li>
								<li class="support__title">title</li>
								<li class="support__content">test</li>
								<li class="support__date-post">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;" >상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">test</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">testId</li>
								<li class="support__title">title</li>
								<li class="support__content">test</li>
								<li class="support__date-post">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;" >상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">test</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">testId</li>
								<li class="support__title">title</li>
								<li class="support__content">test</li>
								<li class="support__date-post">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">test</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">testId</li>
								<li class="support__title">title</li>
								<li class="support__content">test</li>
								<li class="support__date-post">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="support-list__info-container">
					<div class="support-list__info-unit">
						<input type="checkbox" class="support__checkbox" id="kus"
							name="checkbox" /> <label for="kus"
							class="support__checkbox--label">
							<ul class="support-list__info">
								<li class="support__id">test</li>
								<li class="support__type">홍보</li>
								<li class="support__user-id">testId</li>
								<li class="support__title">title</li>
								<li class="support__content">test</li>
								<li class="support__date-post">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>


				<!-- 스크롤 테스트 끝  -->
			</div>
		</article>
	</main>
	<!-- modal -->
	<jsp:include page="/app/components/ad_modal.jsp"></jsp:include>
	<!-- modal fin. -->

</body>
<script src="${pageContext.request.contextPath}/assets/js/admin/ad.js"></script>

<script
	src="${pageContext.request.contextPath}/assets/js/components/banner_modal.js"></script>
</html>