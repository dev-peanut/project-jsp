<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와디즈</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="../../assets/css/main/main.css" rel="stylesheet">
</head>
<body style="overflow: auto;">
	<div id="page-container">
		<main id="main-app">
			<!-- 헤더 적용 -->
			<jsp:include page="../component/header.jsp"></jsp:include>
			<div class="MainWrapper_content"> <!-- 메인 컨텐츠 적용 -->
				<section class="container">
			        <!-- 메인 배너 -->
			        <div class="banner">
			            <div></div>
			            <div></div>
			            <div></div>
			            <div></div>
			            <div></div>
			            <div></div>
			        </div>
			
			        <div class="move-arrow">
			            <!-- 이전 버튼 -->
			            <div class="prev">
			            	<div class="prev-icon"></div>
			            </div>
			            <!-- 다음 버튼 -->
			            <div class="next">
			            	<div class="next-icon"></div>
			            </div>
			        </div>
			
			        <!-- 배너 총 퍼센티지. 투명 바 -->
			        <div class="banenr_active">
			        	<div></div> <!-- 배너 현재 퍼센티지. 흰색 바 -->
		        	</div>
			    </section>
				<div class="RecommendationDesktop_container Main_wrap_1"> <!-- 메인 컨텐츠1 - 추천관련 컨텐츠 묶음 -->
					<div class="Main_inner_wrap">
						<section class="recommendation-section-container">
							<div class="recommendation-section-inner-container-title-container">
								<div class="recommendation-section-inner-container-subtitle">
									<h2 class="recommendation-title">취향 맞춤 프로젝트</h2>
									<p class="recommendation-subtitle">지금 함께 만드는 성공</p>
								</div>
								<div class="recommendation-section-inner-container-tooltip-container">
									<div class="recommendation-tooltip-symbol">
										<span class="AITooltip_icon"></span>
										<div aria-hidden="true" style="display: none;"> <!-- 마우스 오버 후 표시 이미지 -->
											<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__20lDO Tooltip_tooltipActive__2JjBs" aria-hidden="true">
												<path fill="none" d="M0 0h40v40H0z"></path><path d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm0 29.5a1.8 1.8 0 1 1 1.8-1.79 1.8 1.8 0 0 1-1.8 1.75zm6-16.13a6.28 6.28 0 0 1-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 0 1 2.3-5.7L22 18a4.29 4.29 0 0 0 2-3.7 3.7 3.7 0 0 0-4-4 3.7 3.7 0 0 0-4 4h-2a5.7 5.7 0 0 1 6-6 5.7 5.7 0 0 1 6 6z"></path>
											</svg>
										</div>
										<div aria-hidden="true" style="display: block;"> <!-- 마우스 오버 전 표시 이미지 -->
											<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__20lDO Tooltip_tooltip__2SdxS" aria-hidden="true">
												<path fill="none" d="M0 0h40v40H0z"></path><path d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path><path d="M24.34 10A5.75 5.75 0 0 0 20 8.33a5.7 5.7 0 0 0-6 6h2a3.7 3.7 0 0 1 4-4 3.7 3.7 0 0 1 4 4A4.29 4.29 0 0 1 22 18l-.7.6a6.51 6.51 0 0 0-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 0 0 2.7-5.2 5.73 5.73 0 0 0-1.66-4.3zM20 26.87a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6z"></path>
											</svg>
										</div>
									</div>
								</div>
							</div>
							<div class="recommendation-section-inner-container-content">
								<div class="recommendation-card"> <!-- 추천 카드 썸네일 -->
									<div>
										<a class="card-type-recommendation-a" href="/web/campaign/detail/180055?_refer_section_st=PersonalCurator_0">
											<article>
												<div class="CardType_thumbnail">
													<div aria-hidden="true" class="CardType_thumbnail_image" style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0201/20230201144847483_180055.png/wadiz/resize/240/format/jpg/quality/85/&quot;);"></div>
												</div>
												<div class="CardType_content">
													<em class="commons_title_CardType_content">[월 2.5억인증]단 1년만에 억대연봉,월3천 벌게한 스마트스토어 노하우</em>
													<p class="commons_summary_CardType_content">
														<span class="commons_rate_CardType_content">24,292%</span>출판
													</p>
												</div>
											</article>
										</a>
									</div>
								</div>
								<div class="recommendation-card"> <!-- 추천 카드 썸네일 -->
									<div>
										<a class="card-type-recommendation-a" href="/web/campaign/detail/180055?_refer_section_st=PersonalCurator_0">
											<article>
												<div class="CardType_thumbnail">
													<div aria-hidden="true" class="CardType_thumbnail_image" style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0201/20230201144847483_180055.png/wadiz/resize/240/format/jpg/quality/85/&quot;);"></div>
												</div>
												<div class="CardType_content">
													<em class="commons_title_CardType_content">[월 2.5억인증]단 1년만에 억대연봉,월3천 벌게한 스마트스토어 노하우</em>
													<p class="commons_summary_CardType_content">
														<span class="commons_rate_CardType_content">24,292%</span>출판
													</p>
												</div>
											</article>
										</a>
									</div>
								</div>
								<div class="recommendation-card"> <!-- 추천 카드 썸네일 -->
									<div>
										<a class="card-type-recommendation-a" href="/web/campaign/detail/180055?_refer_section_st=PersonalCurator_0">
											<article>
												<div class="CardType_thumbnail">
													<div aria-hidden="true" class="CardType_thumbnail_image" style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0201/20230201144847483_180055.png/wadiz/resize/240/format/jpg/quality/85/&quot;);"></div>
												</div>
												<div class="CardType_content">
													<em class="commons_title_CardType_content">[월 2.5억인증]단 1년만에 억대연봉,월3천 벌게한 스마트스토어 노하우</em>
													<p class="commons_summary_CardType_content">
														<span class="commons_rate_CardType_content">24,292%</span>출판
													</p>
												</div>
											</article>
										</a>
									</div>
								</div>
								<div class="recommendation-card"> <!-- 추천 카드 썸네일 -->
									<div>
										<a class="card-type-recommendation-a" href="/web/campaign/detail/180055?_refer_section_st=PersonalCurator_0">
											<article>
												<div class="CardType_thumbnail">
													<div aria-hidden="true" class="CardType_thumbnail_image" style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0201/20230201144847483_180055.png/wadiz/resize/240/format/jpg/quality/85/&quot;);"></div>
												</div>
												<div class="CardType_content">
													<em class="commons_title_CardType_content">[월 2.5억인증]단 1년만에 억대연봉,월3천 벌게한 스마트스토어 노하우</em>
													<p class="commons_summary_CardType_content">
														<span class="commons_rate_CardType_content">24,292%</span>출판
													</p>
												</div>
											</article>
										</a>
									</div>
								</div>
							</div>
							<div class="recommendation-section-inner-container-button">

							</div>
						</section>
						<section class="ranking-section-container">
							<div class="ranking-section-inner-container-title">
								<h2 class="ranking-section-title">실시간 랭킹</h2>
							</div>
							<div>
								<div class="ranking-tab-container">
									<div>
										<div class="tab-button-container">
											<button type="button" class="tab-button-ranking select-tab-button-ranking">펀딩/프리오더</button>
										</div>
										<div class="tab-button-container">
											<button type="button" class="tab-button-ranking">스토어</button>
										</div>
									</div>
								</div>
								<div class="ranking-section-inner-container-content">
									<ol>
										<li class="select-ranking-tab-content">
											<div>
												<a class="card-type-content-ranking" href="/web/campaign/detail/158604?_refer_section_st=ranking_0">
													<article>
														<div class="ranking-content">
															
														</div>
													</article>
												</a>
											</div>
										</li>
									</ol>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="Main_wrap_2 Main_wrap"> <!-- 메인 컨텐츠2 -->
				</div>
				<div class="Main_wrap_3 Main_wrap"> <!-- 메인 컨텐츠3 -->
				</div>
				<div class="Main_wrap_4 Main_wrap"> <!-- 메인 컨텐츠4 -->
				</div>
			</div>
			<!-- footer적용 -->
			<jsp:include page="../component/footer.jsp"></jsp:include>
		</main>
	</div>
</body>
<script type="text/javascript" src="../../assets/js/main/main.js"></script>
</html>