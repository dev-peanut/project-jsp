<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>식품 기부</title>


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/components/sanitize.css" />
<!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/admin/food_board.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/components/food_modal.css" />	
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/logo.png">	
</head>
<body>
	<!-- header -->
	<jsp:include page="/dhouse/components/adminHeader.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- aside -->
	<jsp:include page="/dhouse/components/adminAside.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- 페이지별로 class 이름 기능에 맞게 재설정 -->
	<main class="module-container">
		<article class="module--search">
			<div class="search__searchbox">
				<form action="" class="search__searchbox__form">
					<input id="searchbox" type="text" placeholder="원하시는 키워드로 찾아보세요" />
					<button type="button" class="search__searchbox__button">
						<img
							src="${pageContext.request.contextPath}/static/images/user/search.png"
							alt="" />
					</button>
				</form>
			</div>
		</article>
		
		<!-- <article class="module module--content-controller" id="show">
			<button type="button"
				style="font-size: 16px; margin: -3px 0 0 -26px;">글 수정</button>
		</article> -->
		<article class="module module--content-summary">
			<button type="button" class="modal_test"
				style="margin: 0 0 0 -33px; font-size: 16px;">선택 삭제</button>
		</article>
		<article class="module module--content-list">
			<div class="content-list__title-container">
				<div class="content-list__title-unit">
					<input type="checkbox" id="title__checkbox" name="checkbox-all" />
					<ul class="content-list__title">
						<li class="title__id">번호</li>
						<li class="title__title">식품</li>
						<li class="title__user">작성자</li>
						<!-- <li class="title__date-detail">신청일수</li> -->
						<li class="title__date">등록일</li>
						<li class="title__detail">상세</li>

					</ul>
				</div>
			</div>
			<div id="scroll">
				<div class="content-list__info-container">
					<!-- <ul class="user-list__info">
							<li>등록된 가이드가 없습니다.</li>
						</ul> -->
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="hds"
							name="checkbox" /> <label for="kus"
							class="content__checkbox--label">
							<ul class="content-list__info">
								<li class="content__id">00001</li>
								<li class="content__title">돈까스</li>
								<li class="content__user">ksy</li>
							<!-- 	<li class="content__date-detail">2개월</li> -->
								<!--2개월 ,4개월  -->
								<li class="content__date">2023-02-23</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;" id="show">상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>
				<!-- 배너 추가 -->
				<div class="content-list__info-container">
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="ksy"
							name="checkbox" />
						<ul class="content-list__info">
							<li class="content__id">00002</li>
							<li class="content__title">부어치킨</li>
							<li class="content__user">김세윤</li>
							<!-- <li class="content__date-detail">4개월</li> -->
							<!--2개월 ,4개월  -->
							<li class="content__date">2022-10-23</li>
							<li class="user__detail" name="userDetail"><button
									class="custom-btn btn-16" style="font-weight: 10px;">상세
									정보</button></li>
						</ul>

					</div>
				</div>

				<div class="content-list__info-container">
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="ymw"
							name="checkbox" /> <label for="ymw"
							class="content__checkbox--label">
							<ul class="content-list__info">
								<li class="content__id">00004</li>
								<li class="content__title">베트남 쌀국수</li>
								<li class="content__user">윤민우</li>
							<!-- 	<li class="content__date-detail">2개월</li> -->
								<!--2개월 ,4개월  -->
								<li class="content__date">2023-01-23</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">상세
										정보</button></li>
							</ul>
						</label>
					</div>
				</div>

				<div class="content-list__info-container">
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="ymw"
							name="checkbox" /> <label for="ymw"
							class="content__checkbox--label">
							<ul class="content-list__info">
								<li class="content__id">test</li>
								<li class="content__title">test</li>
								<li class="content__user">test</li>
							<!-- 	<li class="content__date-detail">test</li> -->
								<!--2개월 ,4개월  -->
								<li class="content__date">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">test</button></li>
							</ul>
						</label>
					</div>
				</div>
				
				<div class="content-list__info-container">
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="ymw"
							name="checkbox" /> <label for="ymw"
							class="content__checkbox--label">
							<ul class="content-list__info">
								<li class="content__id">test</li>
								<li class="content__title">test</li>
								<li class="content__user">test</li>
							<!-- 	<li class="content__date-detail">test</li> -->
								<!--2개월 ,4개월  -->
								<li class="content__date">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">test</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="content-list__info-container">
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="ymw"
							name="checkbox" /> <label for="ymw"
							class="content__checkbox--label">
							<ul class="content-list__info">
								<li class="content__id">test</li>
								<li class="content__title">test</li>
								<li class="content__user">test</li>
							<!-- 	<li class="content__date-detail">test</li> -->
								<!--2개월 ,4개월  -->
								<li class="content__date">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">test</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="content-list__info-container">
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="ymw"
							name="checkbox" /> <label for="ymw"
							class="content__checkbox--label">
							<ul class="content-list__info">
								<li class="content__id">test</li>
								<li class="content__title">test</li>
								<li class="content__user">test</li>
							<!-- 	<li class="content__date-detail">test</li> -->
								<!--2개월 ,4개월  -->
								<li class="content__date">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">test</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="content-list__info-container">
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="ymw"
							name="checkbox" /> <label for="ymw"
							class="content__checkbox--label">
							<ul class="content-list__info">
								<li class="content__id">test</li>
								<li class="content__title">test</li>
								<li class="content__user">test</li>
							<!-- 	<li class="content__date-detail">test</li> -->
								<!--2개월 ,4개월  -->
								<li class="content__date">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">test</button></li>
							</ul>
						</label>
					</div>
				</div>
				<div class="content-list__info-container">
					<div class="content-list__info-unit">
						<input type="checkbox" class="content__checkbox" id="ymw"
							name="checkbox" /> <label for="ymw"
							class="content__checkbox--label">
							<ul class="content-list__info">
								<li class="content__id">test</li>
								<li class="content__title">test</li>
								<li class="content__user">test</li>
							<!-- 	<li class="content__date-detail">test</li> -->
								<!--2개월 ,4개월  -->
								<li class="content__date">yyyy-mm-dd</li>
								<li class="user__detail" name="userDetail"><button
										class="custom-btn btn-16" style="font-weight: 10px;">test</button></li>
							</ul>
						</label>
					</div>
				</div>
				<!-- 배너 추가 끝 -->
			</div>
			<div class="desktop-only">
              <!-- 데스크탑용 버튼 -->
              <button class="prev-page icon-chevron-left" onclick="movePage(0)" disabled="">
                <span class="text-hidden">이전</span>
              </button>

              <!-- 데스크탑용 페이지 리스트 -->
              
                <a class="current" href="#" onclick="movePage(1)">1</a>
              
                <a href="#" onclick="movePage(2)">2</a>
              
                <a href="#" onclick="movePage(3)">3</a>
              
                <a href="#" onclick="movePage(4)">4</a>
              
                <a href="#" onclick="movePage(5)">5</a>
              
                <a href="#" onclick="movePage(6)">6</a>
              
              

              <!-- 데스크탑용 버튼 -->
              <button class="next-page icon-chevron-right" onclick="movePage(7)">
                <span class="text-hidden">다음</span>
              </button>
            </div>
			
		</article>
	</main>
	
	<!-- modal -->
	<jsp:include page="/dhouse/components/food_modal.jsp"></jsp:include>
	<!-- modal fin. -->
	
</body>
<script
	src="${pageContext.request.contextPath}/static/js/admin/banner.js"></script>
<script src="${pageContext.request.contextPath}/static/js/components/food_modal.js"></script>


</html>