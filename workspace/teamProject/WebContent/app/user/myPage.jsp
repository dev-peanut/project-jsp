<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../../assets/css/user/myPage.css">
</head>
<body>
	<div id="page-container">
		<!-- 헤더 적용 -->
		<jsp:include page="../components/header.jsp"></jsp:include>
		<!-- 메인 컨텐츠 적용 -->
		<div id="container">
			<div id="mypageWrap">
				<div class="myprofile-wrap">
					<div id="iam-profile-app" data-profile-image="https://static.wadiz.kr/assets/icon/profile-icon-4.png" data-nickname="익명의 서포터 993" data-accnttype-name="개인 회원" data-is-valid-joined-premium-membership="false" data-my-self="true" data-my-funding-all-count="0" data-signature-cnt="0" data-follower-cnt="0" data-following-cnt="0" data-target-enc-user-id="" data-target-user-id="6034797" data-introduceme="" data-is-following="false" data-my-interest-user-keyword="">
						<section class="ProfileCorp">
							<div class="ProfileCorp_inner">
								<h3 class="BlindText"></h3>
								<!-- 프로필 이미지 -->
								<div aria-hidden="true" class="Avatar">
									<span class="Avatar_image" style="background-image: url('https://static.wadiz.kr/assets/icon/profile-icon-4.png'); border: 1px solid rgb(221, 226, 230);"></span>
								</div>
								<!-- 사업자 회원 정보 -->
								<div class="ProfileCorp_info">
									<dl class="ProfileInfo_box" aria-label="회원정보">
										<dt class="BlindText">회원닉네임</dt>
										<dd class="ProfileInfo_nickname">땅콩이</dd>
										<dt class="BlindText">회원유형</dt>
										<dd class="ProfileInfo_type">사업자 회원</dd>
									</dl>
									<strong class="BlindText">관심 카테고리</strong>
									<!-- 가상요소 -->
									<ul class="ProfileInterestKeyword"></ul>
									<!-- 카테고리 박스 -->
									<dl class="ProfileActivityInfo_infoCountBox">
										<div>
											<dt>레벨</dt>
											<dd>
												0
												<span class="BlindText"></span>
											</dd>
										</div>
										<div>
											<dt>기부</dt>
											<dd>
												0
												<span class="BlindText">회</span>
											</dd>
										</div>
										<div>
											<dt>기부</dt>
											<dd>
												0
												<span class="BlindText">회</span>
											</dd>
										</div>
										<div>
											<dt>기부</dt>
											<dd>
												0
												<span class="BlindText">회</span>
											</dd>
										</div>
									</dl>
								</div>
								<!-- 프로필 설정 버튼 -->
								<a href="https://www.wadiz.kr/web/wmypage/myprofile/modifyprofile" class="ProfileSet Mint">
									<span>
										<span class="ProfileSet_button">배너 신청하기</span>
									</span>
								</a>
								<a href="https://www.wadiz.kr/web/wmypage/myprofile/modifyprofile" class="ProfileSet">
									<span>
										<span class="ProfileSet_button">프로필 설정</span>
									</span>
								</a>
							</div>
						</section>
						</div>
						<!-- 참여한 -->
						<div class="mypage-project bg">
							<div class="tab-list">
								<ul role="tablist">
									<!-- 기부한 -->
									<li class="active">
										<a href="https://www.wadiz.kr/web/wmypage/myprofile/fundinglist" role="tab" aria-selected="true" aria-controls="tabFunding" tabindex="0">기부한</a>
									</li>
									<!-- 찜한 -->
									<li>
										<a href="https://www.wadiz.kr/web/wmypage/myprofile/likelist/" role="tab" tabindex="-1">찜한</a>
									</li>
								</ul>
							</div>
							<div class="project-list" id="tabFunding" tabindex="0">
								<div class="top-area">
									<p id="fundingInfoMessage" class="status-text fundingCount" style="display: none">공개로 참여한 기부현황입니다.</p>
								</div>
								<div id="projectCardList" class="card-list">
									<p id="emptyProjectText" style="display: block;">공개로 참여한 기부현황이 없습니다.</p>
									<ul>
										<li class="reward " data-hiddentype="F" data-campaintype="RWD" data-campaignid="155943" data-campaignhiddenseq="">
											<div class="visibility-control">
												<button type="button" class="btn-more"><i class="wadizicon wa-more-vert"></i></button>
												<button type="button" class="btn-control hide">숨김</button>
												<button type="button" class="btn-control show">숨김취소</button>
											</div>
											<a href="/web/campaign/detail/155943">
												<div class="project-card">
													<div class="card-img-section">
                                  						<em class="project-img" style="background-image:url(https://www.wadiz.kr/wwwwadiz/green001/2023/0126/20230126132509684_155943.jpg)"></em>
														<em class="project-type reward">펀딩</em>
														<div class="progressbar-wrap">
															<dl>
																<dt>
																	<span style="width:263%"></span>
																</dt>
																<dd>
																	<span class="percent">263%</span>
	                                                                <span class="amount">1,316,898원 달성</span>
																	<span class="days">13일 남음</span>
																</dd>
															</dl>
														</div>
													</div>
													<div class="card-info-section">
														<h4>8,333원 베이비 워시/미국유명육아템 벤치마킹 품질Up! 가격Down!</h4>
														<h5>주식회사 나실패밀리</h5>
														<div class="card-category">
															<span class="category1">베이비·키즈</span>
															<span class="category2"></span>
														</div>
													</div>
												</div>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>
		<!-- footer -->
		<jsp:include page="../components/footer.jsp"></jsp:include>
	</div>
</body>
</html>