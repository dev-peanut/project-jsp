<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="" translate="no">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>수정 가전제품 목록 페이지</title>
<link rel="stylesheet" href="../../assets/css/board/board_community_list.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">    
    <link rel="shortcut icon" href="../../assets/img/logo.png">
</head>
<body>
<div id="page-container">
<div class="black-bg-wrap" style="display:none;"></div>
	<jsp:include page="../components/header.jsp"></jsp:include>
			<!-- 헤더 적용  -->
			<div id="newContainer">
	<div id="wcommunityWrap">
	<div class="wcommunity-wrap">
	<div class="wcommunity-top">
	<h2><a href="/web/wcast/main"><em class="logo_wcommunity">wadiz</em></a></h2> <!-- 배너 내 문구  -->
	<div id="wcastTopPC" class="wcommunity-topmenu"></div> <!-- wcastTopPC -->
	</div> <!-- wcommunity-top -->
	<!-- 배너 끝-->
	<div class="wcommunity-content-wrap">
	<!-- 목록페이지  -->
		<div class="wcommunity-section1">
				<div class="top-category-menu">
								<h3>가전제품 기부</h3>
							</div> <!-- top-category-menu -->
		<div class="wcommunity-webzine-list"> 
								<ul>
									<li>
											<div class="wcommunity-story">
												<div class="story-info">
													<p class="title">냉장고 나눔</p>
													<p class="summary">사용하던 냉장고 나눔합니다. 곧 이사갈 예정이라서요.</p>
													<p class="info">
														<p class="editor">개인회원1</p><p class="date">23.02.22</p>
													</p>
												</div>
												<div class="img-wrap">
													<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/assets/img/notebook.jpg)"></div>
												</div>  
											</div>
									</li>
										<li>
											<div class="wcommunity-story">
												<div class="story-info">
													<p class="title">노트북, 마우스, 헤드폰 기부합니다</p>
													<p class="summary">새 제품을 선물받아 기부합니다. 역삼역 3번 출구로 오실 분</p>
													<p class="info">
														<p class="editor">개인회원2 </p><p class="date">23.02.19</p>
													</p>
												</div>
												<div class="img-wrap">
													<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/assets/img/refrigerator.jpg)"></div>
												</div>
											</div>
									</li>
											<li>
											<div class="wcommunity-story">
												<div class="story-info">
													<p class="title">노트북, 마우스, 헤드폰 기부합니다</p>
													<p class="summary">새 제품을 선물받아 기부합니다. 역삼역 3번 출구로 오실 분</p>
													<p class="info">
														<p class="editor">개인회원2</p><p class="date">23.02.19</p>
													</p>
												</div>
												<div class="img-wrap">
												<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/assets/img/refrigerator.jpg)"></div>
												</div>
											</div>
									</li>
											<li>
											<div class="wcommunity-story">
												<div class="story-info">
													<p class="title">노트북, 마우스, 헤드폰 기부합니다</p>
													<p class="summary">새 제품을 선물받아 기부합니다. 역삼역 3번 출구로 오실 분</p>
													<p class="info">
														<p class="editor">개인회원2</p><p class="date">23.02.19</p>
													</p>
												</div>
												<div class="img-wrap">
													<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/assets/img/refrigerator.jpg)"></div>
												</div>
											</div>
									</li>
											<li>
											<div class="wcommunity-story">
												<div class="story-info">
													<p class="title">노트북, 마우스, 헤드폰 기부합니다</p>
													<p class="summary">새 제품을 선물받아 기부합니다. 역삼역 3번 출구로 오실 분</p>
													<p class="info">
														<p class="editor">개인회원2</p><p class="date">23.02.19</p>
													</p>
												</div>
												<div class="img-wrap">
													<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/assets/img/refrigerator.jpg)"></div>
												</div>
											</div>
									</li>
											<li>
											<div class="wcommunity-story">
												<div class="story-info">
													<p class="title">노트북, 마우스, 헤드폰 기부합니다</p>
													<p class="summary">새 제품을 선물받아 기부합니다. 역삼역 3번 출구로 오실 분</p>
													<p class="info">
														<p class="editor">개인회원2</p><p class="date">23.02.19</p>
													</p>
												</div>
												<div class="img-wrap">
													<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/assets/img/refrigerator.jpg)"></div>
												</div>
											</div>
									</li>
											<li>
											<div class="wcommunity-story">
												<div class="story-info">
													<p class="title">와디즈는 왜 광고심의를 진행할까요?</p>
													<p class="summary">광고심의 척척박사가 되지 않아도 괜찮아요. 와디즈 프로젝트심사팀이 도와드릴게요.</p>
													<p class="info">
														<p class="editor">개인회원7</p><p class="date">22.12.25</p>
													</p>
												</div>
												<div class="img-wrap">	
												<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/assets/img/refrigerator.jpg)"></div>
												</div>
											</div>
								</li>
											<li>
											<div class="wcommunity-story">
												<div class="story-info">
													<p class="title">스토리와 콘텐츠 제작, 전문가의 도움을 받을 수 있나요?</p>
													<p class="summary">와디즈의 콘텐츠 관련 서비스, 한 눈에 살펴보기</p>
													<p class="info">
														<p class="editor">개인회원8</p><p class="date">22.12.24</p>
													</p>
												</div> 
												<div class="img-wrap">
											<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/assets/img/refrigerator.jpg)"></div>											
											</div> 
											</div> 
									</li>
								</ul>
							</div>		
			<!-- 페이징 시작 -->
							<div class="wcommunity-page-list">
								<ul>
									<li><button type="button" onclick="movePage(1)">1</button></li>
									<li class="active"><button type="button"
											onclick="movePage(2)">2</button></li>
									<li><button type="button" onclick="movePage(3)">3</button></li>
									<li><button type="button" onclick="movePage(4)">4</button></li>
									<li><button type="button" onclick="movePage(5)">5</button></li>
									<li class="next-btn"><button type="button"
											onclick="movePage(6)">&gt;</button></li>
								</ul>
							</div> <!-- //wcommunity-page-list -->
											
		</div> <!-- section1 -->
	
	
	
	
	
	
	 <!-- 사이드바 -->
			<div class="wcommunity-section2">
			<div class="inner-wrap">
								<div class="wcommunity-category-info">
									<h4>나눔의집 소개</h4>
									<p class="summary">나눔의집에 대해 알고 싶다면?</p>
								</div> <!-- 나눔의 집 소개 끝  --> <!-- wcommunity-category-info -->

								<div class="wcommunity-best-list"> <!-- 랭킹 시작 -->
									<h4>기부상점 Best 5</h4>
									<ol>
										<li><em>1</em>
										<p class="title">
												[이것만 보세요] 리워드 메이커를 위한 꿀팁 모음
											</p></li>
										<li><em>2</em>
										<p class="title">
												[에디터와 함께써요] 리워드 펀딩 스토리, 더 쉽게 쓰세요 #INTRO
											</p></li>
										<li><em>3</em>
										<p class="title">
												[리워드 비주얼 공략집 #2] 스토리 편집기 완전정복!
											</p></li>
										<li><em>4</em>
										<p class="title">
												[꿀팁모음] 캐스트 숨바꼭질은 그만! 프로젝트 오픈부터 배송까지 한 장으로 모아 보세요
											</p></li>
										<li><em>5</em>
										<p class="title">
												[조.스.바] 조금만 스토리를 바꿀 수 있는 &lt;비주얼 캐스트 모음&gt;
											</p></li>
									</ol>
								</div> <!-- 랭킹 끝 -->
								<div class="btn-wrap">
									<a href="/web/winvest/main" class="btn-db-blue">홍보하기 페이지 바로가기</a>
								</div> <!-- btn-wrap -->
							</div>  <!--  inner-wrap -->
		</div> <!-- section2  -->
	</div> <!-- wcommunity-content-wrap -->
	</div> <!--wcommunity-wrap  -->
			</div> <!-- wcommunityWrap -->
			</div> <!-- newContainer -->
			<!-- 푸터 -->
	<jsp:include page="../components/footer.jsp"></jsp:include> 
</div>
</body>
</html>