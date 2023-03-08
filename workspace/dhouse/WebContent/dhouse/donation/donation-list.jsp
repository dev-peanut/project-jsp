<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="" translate="no">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>수정 가전제품 목록 페이지</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/board/board_community_list.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/logo.png">
</head>
<body>
	<div id="page-container">
		<div class="black-bg-wrap" style="display: none;"></div>
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/header.jsp"></jsp:include>
		<!-- 헤더 적용  -->
		<div id="newContainer">
			<div id="wcommunityWrap">
				<div class="wcommunity-wrap">
					<div class="wcommunity-top">
						<h2>
							<a href="/web/wcast/main"><em class="logo_wcommunity">wadiz</em></a>
						</h2>
						<!-- 배너 내 문구  -->
						<div id="wcastTopPC" class="wcommunity-topmenu"></div>
						<!-- wcastTopPC -->
					</div>
					<!-- wcommunity-top -->
					<!-- 배너 끝-->
					<div class="wcommunity-content-wrap">
						<!-- 목록페이지  -->
						<div class="wcommunity-section1">
							<div class="top-category-menu">
								<h3>가전제품 기부</h3>
							</div>
							<!-- top-category-menu -->
							<div id="category-list" class="wcommunity-webzine-list">
 								<ul>
 									<li>
										<div class="wcommunity-story">
											<div class="story-info">
												<p class="title">노트북, 마우스, 헤드폰 기부합니다</p>
												<p class="summary">새 제품을 선물받아 기부합니다. 역삼역 3번 출구로 오실 분</p>
												<p class="info">
												<p class="editor">개인회원2</p>
												<p class="date">23.02.19</p>
												</p>
											</div>
											<div class="img-wrap">
												<div class="story-img"
													style="background-image: url(${pageContext.request.contextPath}/static/images/user/refrigerator.jpg)"></div>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<!-- 페이징 시작 -->
							<div class="wcommunity-page-list">
								<ul>
									<li><button type="button" onclick="movePage(1)">1</button></li>
									<li class="active"><button type="button" onclick="movePage(2)">2</button></li>
									<li><button type="button" onclick="movePage(3)">3</button></li>
									<li><button type="button" onclick="movePage(4)">4</button></li>
									<li><button type="button" onclick="movePage(5)">5</button></li>
									<li class="next-btn"><button type="button" onclick="movePage(6)">&gt;</button></li>
								</ul>
							</div>
							<!-- //wcommunity-page-list -->
						</div>
						<!-- section1 -->
						<!-- 사이드바 -->
						<div class="wcommunity-section2">
							<div class="inner-wrap">
								<c:if test="${prev}">
				                    <a href="javascript:location.href='/donation/listOk.donation?page=${startPage - 1}'">
			                        	<button id="left"><svg id="left-svg" width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg"><path id="left-path" d="M21 24L15 18L21 12" stroke="#868E96" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"></path></svg></button>
			                        </a>
			                	</c:if>
			                	<c:forEach var="i" begin="${startPage}" end="${endPage}">
			                    	<c:choose>
			                    		<c:when test="${i eq page}">
						                    <a href="javascript:void(0)" class="paging paging-checked">
						                    	<c:out value="${i}"/>
						                    </a>
			                    		</c:when>
			                    		<c:otherwise>
						                    <a href="javascript:location.href='/donation/list.donation?page=${i}'" class="paging">
						                    	<c:out value="${i}"/>
						                    	<!-- <span class="page-numbers"><button class="button-numbers">1</button> -->
						                    </a>
			                    		</c:otherwise>
			                    	</c:choose>
			                    </c:forEach>
		                        <!-- <span class="page-numbers"><button class="button-numbers">1</button> -->
		                        <c:if test="${next}">
			                    	<a href="javascript:location.href='/donation/list.donation?page=${endPage + 1}'">
				                        <button id="right"><svg id="right-svg" width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg"><path id="right-path" d="M15 12L21 18L15 24" stroke="#868E96" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"></path></svg></button>
			                    	</a>
			                    </c:if>
								
								<div class="wcommunity-category-info">
									<h4>나눔의집 소개</h4>
									<p class="summary">나눔의집에 대해 알고 싶다면?</p>
								</div>
								<!-- 나눔의 집 소개 끝  -->
								<!-- wcommunity-category-info -->

								<div class="wcommunity-best-list">
									<!-- 랭킹 시작 -->
									<h4>기부상점 Best 5</h4>
									<ol>
										<li><em>1</em>
											<p class="title">[이것만 보세요] 리워드 메이커를 위한 꿀팁 모음</p></li>
										<li><em>2</em>
											<p class="title">[에디터와 함께써요] 리워드 펀딩 스토리, 더 쉽게 쓰세요 #INTRO
											</p></li>
										<li><em>3</em>
											<p class="title">[리워드 비주얼 공략집 #2] 스토리 편집기 완전정복!</p></li>
										<li><em>4</em>
											<p class="title">[꿀팁모음] 캐스트 숨바꼭질은 그만! 프로젝트 오픈부터 배송까지 한
												장으로 모아 보세요</p></li>
										<li><em>5</em>
											<p class="title">[조.스.바] 조금만 스토리를 바꿀 수 있는 &lt;비주얼 캐스트
												모음&gt;</p></li>
									</ol>
								</div>
								<!-- 랭킹 끝 -->
								<div class="btn-wrap">
									<a href="/web/winvest/main" class="btn-db-blue">홍보하기 페이지
										바로가기</a>
								</div>
								<!-- btn-wrap -->
							</div>
							<!--  inner-wrap -->
						</div>
						<!-- section2  -->
					</div>
					<!-- wcommunity-content-wrap -->
				</div>
				<!--wcommunity-wrap  -->
			</div>
			<!-- wcommunityWrap -->
		</div>
		<!-- newContainer -->
		<!-- 푸터 -->
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}";
	let page = `${page}`;
	let donationBoards = `${donationBoards}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/board/donation-list.js"></script>
</html>