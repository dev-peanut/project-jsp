<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
	<div id="page-container">
		<main id="main-app">
			<!-- 헤더 -->
			<jsp:include page="../components/header.jsp">
			<div class="Wrapper">
				<section>
					<div class="Container">
						<div class="DetailContainer">
							<!-- 이미지 -->
							<div class="ImageArea">
                            	<div class="Image"></div>
                        	</div>
							<!-- 배너신청 정보 -->
							<div class="InfoArea">
								<!-- 상세 페이지 -->
								<div class="DetailInfo">
									<h2 class="TextBlind">상세 페이지</h2>
									<div class="CategoryInfo">
										<span class="CategoryName" aria-label="카테고리">신청하기</span>
									</div>
									<!-- 타이틀 : 배너 -->
									<div class="TitleInfo">
										<h3 class="Title">배너</h3>
									</div>
									<!-- 별점, 조회수 -->
									<div class="ParticipationInfo">
										<div>
											<a class="Rating" href="/web/store/detail/2479/satisfaction">
												<div class="RatingScore1 RatingScore2 RatingScore3">
													<div class="ScoreIcon"></div>
													<span class="Score">4.9</span>
												</div>
												<span class="DetailCount">(1,127)</span>
											</a>
										</div>
									</div>
									<!-- 가격 -->
									<div class="BuyInfo">
										<em class="Price">
											<span>8,900</span>
											<span class="Unit">원</span>
										</em>
										<!-- 나눔의 집 온리상품 라벨 -->
										<div class="DHouseOnly1 DHouseOnly2">
											<em class="badge" aria-label="나눔의 집 온리상품"></em>
											<div>
												<button type="button" class="Tooltip1 Tooltip2" aria-describedby="Tooltip_6">
												<span class="Tooltip_label"></span>
												<span class="Tooltip_helpIcon">
													<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="WithIcon1 WithIcon2" aria-hidden="true">
														<path fill="none" d="M0 0h40v40H0z"></path>
														<path d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path>
														<path d="M24.34 10A5.75 5.75 0 0 0 20 8.33a5.7 5.7 0 0 0-6 6h2a3.7 3.7 0 0 1 4-4 3.7 3.7 0 0 1 4 4A4.29 4.29 0 0 1 22 18l-.7.6a6.51 6.51 0 0 0-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 0 0 2.7-5.2 5.73 5.73 0 0 0-1.66-4.3zM20 26.87a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6z"></path>
													</svg>
													<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="WithIcon1 WithIcon3" aria-hidden="true">
														<path fill="none" d="M0 0h40v40H0z"></path>
														<path d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm0 29.5a1.8 1.8 0 1 1 1.8-1.79 1.8 1.8 0 0 1-1.8 1.75zm6-16.13a6.28 6.28 0 0 1-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 0 1 2.3-5.7L22 18a4.29 4.29 0 0 0 2-3.7 3.7 3.7 0 0 0-4-4 3.7 3.7 0 0 0-4 4h-2a5.7 5.7 0 0 1 6-6 5.7 5.7 0 0 1 6 6z"></path>
													</svg>
												</span>
												</button>
											</div>
										</div>
									</div>
									<div class="ProductInfo">
										<dl>
										<div class="DetailInfoHeader_termsBox__3SFti">
											<dt class="DetailInfoHeader_terms__1NMDk">배송</dt>
											<dd class="DetailInfoHeader_termsDescription__rTnUJ">
												<div class="WaDelivery_container__1rUdD WaDelivery_md__3zQ7U">
													<span class="WaDelivery_badge__3p6M4">
														<i class="WaDelivery_icon__3J5iQ"></i>
														<span class="WaDelivery_text__2E3D-">와배송 상품</span>
													</span>
													<div class="WaDelivery_infoBox__-KOnU">
													<span class="WaDelivery_text__2E3D-">평일 14시 전 주문하면 오늘 출발</span>
													<div class="WaDelivery_infoFree__2vg5K">
														<div class="DetailInfoHeader_shippingChargeContainer__1VbQ9">
															<span class="DetailInfoHeader_shippingChargeText__3pieE">배송비</span>
															<span>3,000원</span>
															<span>(제주/도서산간 5,000원)</span>
														</div>
													</div>
													</div>
												</div>
											</dd>
											</div>
											<div class="DetailInfoHeader_termsBox__3SFti">
											<dt class="DetailInfoHeader_terms__1NMDk">혜택</dt>
											<dd class="DetailInfoHeader_termsDescription__rTnUJ">
											<div class="SupporterClubJoinButton_container__tvKI-">올인원은 
											<button class="SupporterClubJoinButton_button__3FNPx">배송비 최대 3,000원 할인</button>
											</div>
											</dd>
										</div>
										</dl>
									</div>
									<div class="PopBanner"></div>
									<div class="ProductSelectMenu"></div>
									<div class="ProductBuyInfo"></div>
								</div>
							</div>
						</div>
						<div></div>
					</div>
				</section>
			</div>
			<div></div>
		</main>
	</div>
</body>
</html>