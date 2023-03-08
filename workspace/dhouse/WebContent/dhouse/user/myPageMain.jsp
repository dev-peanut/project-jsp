<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1.마이페이지-개인</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/logo.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/user/myPage.css">
</head>
<body>
	<div id="page-container">
		<!-- 헤더 적용 -->
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/header-my.jsp"></jsp:include>
		<!-- 메인 컨텐츠 적용 -->
		<div id="container">
			<div id="mypageWrap">
				<div class="myprofile-wrap">
					<div id="iam-profile-app" data-profile-image="https://static.wadiz.kr/static/icon/profile-icon-4.png" data-nickname="익명의 서포터 993" data-accnttype-name="개인 회원" data-is-valid-joined-premium-membership="false" data-my-self="true" data-my-funding-all-count="0" data-signature-cnt="0" data-follower-cnt="0" data-following-cnt="0" data-target-enc-user-id="" data-target-user-id="6034797" data-introduceme="" data-is-following="false" data-my-interest-user-keyword="">
						<section class="ProfileCorp">
							<div class="ProfileCorp_inner">
								<h3 class="BlindText"></h3>
								<!-- 프로필 이미지 -->
								<div aria-hidden="true" class="Avatar">
									<span class="Avatar_image" style="background-image: url('https://static.wadiz.kr/static/icon/profile-icon-4.png'); border: 1px solid rgb(221, 226, 230);"></span>
								</div>
								<!-- 사업자 회원 정보 -->
								<div class="ProfileCorp_info">
									<dl class="ProfileInfo_box" aria-label="회원정보">
										<dt class="BlindText">회원닉네임</dt>
										<dd class="ProfileInfo_nickname">땅콩이</dd>
										<dt class="BlindText">회원유형</dt>
										<dd class="ProfileInfo_type">개인 회원</dd>
									</dl>
									<strong class="BlindText">관심 카테고리</strong>
									<!-- 가상요소 -->
									<ul class="ProfileInterestKeyword"></ul>
									<!-- 카테고리 박스 -->
									<dl class="ProfileActivityInfo_infoCountBox">
										<div>
											<dt>게시글</dt>
											<dd>
												0
												<span class="BlindText"></span>
											</dd>
										</div>
										<div>
											<dt>댓글</dt>
											<dd>
												0
												<span class="BlindText">회</span>
											</dd>
										</div>
										<!--  -->
										<div>
											<dt></dt>
											<dd>
												<span class="BlindText"></span>
											</dd>
										</div>
										<div>
											<dt></dt>
											<dd>
												<span class="BlindText"></span>
											</dd>
										</div>
									</dl>
								</div>
								<!-- 프로필 설정 버튼 -->
								 <a class="ProfileSet Mint" id="apply" href="javascript:location.href='${pageContext.request.contextPath}/myPage/banner-register.myPage?userId=${myPage.userId}'">
									<span>
										<span class="ProfileSet_button">배너 신청하기</span>
									</span>
								</a>
								 <a class="ProfileSet" href="javascript:location.href='${pageContext.request.contextPath}/myPage/myPageInfo.myPage?userId=${myPage.userId}'">
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
								</ul>
							</div>
							<!-- 기부 참여 리스트 -->
							<div class="project-list" id="tabFunding" tabindex="0">
								<div class="top-area">
									<p id="fundingInfoMessage" class="status-text fundingCount" style="display: none">공개로 참여한 기부현황입니다.</p>
								</div>
								<!-- 공개 참여 현황 -->
								<div id="projectCardList" class="card-list">
									<p id="emptyProjectText" style="display: none;">공개로 참여한 기부현황이 없습니다.</p>
									<ul>
										<!-- 기부목록 -->
										<li class="reward " data-hiddentype="F" data-campaintype="RWD" data-campaignid="155943" data-campaignhiddenseq="">
											<a href="/web/campaign/detail/155943">
												<div class="project-card">
													<div class="card-img-section">
                                  						<em class="project-img" style="background-image:url(/images/user/microwave.jpg)"></em>
														<em class="project-type reward">기부</em>
													</div>
													<div class="card-info-section">
														<h4>전자레인지 무료나눔</h4>
														<h5>일시 : 2023.02.20</h5>
														<div class="card-category">
															<span class="category1">가전제품</span>
															<span class="category2"></span>
														</div>
													</div>
												</div>
											</a>
										</li>
										<li class="reward " data-hiddentype="F" data-campaintype="RWD" data-campaignid="155943" data-campaignhiddenseq="">
											<a href="/web/campaign/detail/155943">
												<div class="project-card">
													<div class="card-img-section">
                                  						<em class="project-img" style="background-image:url(/images/user/washer.jpg)"></em>
														<em class="project-type reward">기부</em>
													</div>
													<div class="card-info-section">
														<h4>세탁기 무료나눔</h4>
														<h5>일시 : 2023.02.21</h5>
														<div class="card-category">
															<span class="category1">가전제품</span>
															<span class="category2"></span>
														</div>
													</div>
												</div>
											</a>
										</li>
										<li class="reward " data-hiddentype="F" data-campaintype="RWD" data-campaignid="155943" data-campaignhiddenseq="">
											<a href="/web/campaign/detail/155943">
												<div class="project-card">
													<div class="card-img-section">
                                  						<em class="project-img" style="background-image:url(/images/user/screen.png)"></em>
														<em class="project-type reward">기부</em>
													</div>
													<div class="card-info-section">
														<h4>모니터 무료나눔</h4>
														<h5>일시 : 2023.02.22</h5>
														<div class="card-category">
															<span class="category1">가전제품</span>
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
		<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
	</div>
</body>
<script>
let contextPath = "${pageContext.request.contextPath}";
</script>
</html>