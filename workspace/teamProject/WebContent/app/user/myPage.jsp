<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../../assets/css/user/myPage.css">
<link rel="stylesheet" href="../../assets/css/components/footer.css">
</head>
<body>
	<div id="page-container">
		<div class="black-bg-wrap" style="display:none;"></div>
		<!-- header -->
		<jsp:include page="../components/header.jsp"></jsp:include>
		<!-- 메인 컨텐츠 적용 -->
		<div id="wadizContainer">
			<div id="mypageWrap">
				<div class="myprofile-wrap">
					<link rel="stylesheet" href="https://static.wadiz.kr/static/iam/main.633c705f.css">
					<div id="iam-supporter-profile-app" data-profile-image="https://static.wadiz.kr/assets/icon/profile-icon-4.png" data-nickname="별명" data-accnttype-name="개인 회원" data-is-valid-joined-premium-membership="false" data-my-self="true" data-my-funding-all-count="0" data-signature-cnt="0" data-follower-cnt="0" data-following-cnt="0" data-target-enc-user-id="" data-target-user-id="6034797" data-introduceme="" data-is-following="false" data-my-interest-user-keyword="">
						<section class="SupporterProfile_supporterProfile__2JfLr">
							<div class="SupporterProfile_inner__1C7Nk">
								<h3 class="BlindText_textHidden__2VTV6"></h3>
								<div aria-hidden="true" class="Avatar_avatar__1TTEG SupporterProfileInfo_avatar__38dOD">
									<span class="Avatar_hasImage__3msN0" style="background-image: url('https://static.wadiz.kr/assets/icon/profile-icon-4.png'); border: 1px solid rgb(221, 226, 230);"></span>
								</div>
								<div class="SupporterProfileInfo_supporterInfo__1y5hr">
									<!-- 익명의 서포터(개인회원) => 회원정보 -->
									<dl class="SupporterProfileInfo_infoBox__19gDw" aria-label="회원정보">
										<dt class="BlindText_textHidden__2VTV6">회원 닉네임</dt>
										<dd class="SupporterProfileInfo_nickname__wbBbS">닉네임</dd>
										<dt class="BlindText_textHidden__2VTV6">회원유형</dt>
										<dd class="SupporterProfileInfo_accntTypeName__1yp6P">개인 회원</dd>
									</dl>
									<strong class="BlindText_textHidden__2VTV6">관심 카테고리</strong>
									<ul class="SupporterProfileInterestKeyword_interestList__2F6Wl"></ul>
									<dl class="SupporterProfileActivityInfo_infoCountBox__lSxat">
										<!-- 참여 횟수 => 기부참여 횟수 -->
										<div>
											<dt>기부</dt>
											<dd>
												0
												<span class="BlindText_textHidden__2VTV6">회</span>
											</dd>
										</div>
										<div></div>
										<div></div>
										<div></div>
									</dl>
								</div>
								<!-- 프로필 편집 버튼 -->
								<a href="https://www.wadiz.kr/web/wmypage/myprofile/modifyprofile" class="Button_button__2_6-I Button_md__3Z8Cw Button_block__39TGk SupporterProfileInfoCTAButton_button__2aV08">
									<span>
										<span class="Button_children__weH0H">프로필 편집</span>
									</span>
								</a>
							</div>
						</section>
						<!-- 참여한, 찜한 list => 기부한 list -->
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
									</ul>
								</div>
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