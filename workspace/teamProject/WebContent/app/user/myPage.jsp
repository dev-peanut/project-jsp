<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나눔의 집</title>
<link rel="stylesheet" href="../../assets/css/myPage.css">
<link rel="stylesheet" href="../../assets/css/footer.css">
</head>
<body>
	<div id="page-container">
		<div class="black-bg-wrap" style="display:none;"></div>
		<!-- header -->
		<div></div>
		<!-- main -->
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
		<div id="footer">
			<footer id="footer" class="web-footer inner-utils">
                <div class="FooterMenu_container__15kue">
                    <div class="FooterMenu_bar__22KhW">
                        <div class="FooterMenu_left__3rQKu">
                            <div class="FooterMenu_menu__3nRbk Linker_btnMore__1PEzz">
                            	정책 · 약관
                                <i class="icon chevron-right Linker_linkerIcon__1QJpf" aria-hidden="true"></i>
                            </div>
                            <div class="FooterMenu_menu__3nRbk FooterMenu_bold__2zNg0 Linker_btnMore__1PEzz">
                            	개인정보처리방침
                                <i class="icon chevron-right Linker_linkerIcon__1QJpf" aria-hidden="true"></i>
                            </div>
                        </div>
                        <div class="FooterMenu_right__28Tuu">
                           	<div class="FooterMenu_menu__3nRbk Linker_btnMore__1PEzz">
                            	제휴문의
                               	<i class="icon chevron-right Linker_linkerIcon__1QJpf" aria-hidden="true"></i>
                           	</div>
                           	<a href="https://www.wadiz.kr/web/wboard/newsBoardList" class="FooterMenu_menu__3nRbk" target="_blank" rel="noopener noreferrer">
                               	공지사항
                               	<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__1ao4d FooterMenu_openLinkIcon__3YMFQ" aria-hidden="true">
                                    <path d="M31.42 M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z"></path>
                                    <path d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z"></path>
                               </svg>
                           	</a>
                           	<a href="https://www.job.wadiz.kr/" class="FooterMenu_menu__3nRbk" target="_blank" rel="noopener noreferrer">
                               	인재채용
                               	<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon" aria-hidden="true">
                                    <path d="M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z"></path>
                                    <path d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z"></path>
                               	</svg>
                           	</a>
                           	<div class="FooterMenu_menu__3nRbk Linker_btnMore__1PEzz">
                            	SNS
                                <i class="icon chevron-right Linker_linkerIcon__1QJpf" aria-hidden="true">
                                </i>
                            </div>
                            <div class="FooterMenu_menu__3nRbk Linker_btnMore__1PEzz">
                                <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNjEiIGhlaWdodD0iMTMiIHZpZXdCb3g9IjAgMCA2MSAxMyIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9IiM0OTUwNTciIGZpbGwtcnVsZT0ibm9uemVybyI+CiAgICAgICAgPHBhdGggZD0iTTEuOTA0IDguNjJoNC41MTlWMTBILjE3NVYuMDQ3aDEuNzN6TTEyLjAwOCAxMGMtLjA3My0uMTQxLS4xMzctLjM3MS0uMTkyLS42OWEyLjU4NiAyLjU4NiAwIDAgMS0xLjk0MS44MjdjLS43NDMgMC0xLjM0OS0uMjEyLTEuODE4LS42MzZhMi4wMzQgMi4wMzQgMCAwIDEtLjcwNC0xLjU3MmMwLS43ODkuMjkyLTEuMzk0Ljg3OC0xLjgxNS41ODYtLjQyMiAxLjQyMy0uNjMzIDIuNTEyLS42MzNoMS4wMTl2LS40ODVjMC0uMzgzLS4xMDctLjY5LS4zMjItLjkyLS4yMTQtLjIzLS41NC0uMzQ1LS45NzctLjM0NS0uMzc4IDAtLjY4OC4wOTUtLjkzLjI4NGEuODc4Ljg3OCAwIDAgMC0uMzYyLjcyMUg3LjUxYzAtLjQwNS4xMzQtLjc4NS40MDMtMS4xMzguMjY5LS4zNTMuNjM1LS42MyAxLjA5Ny0uODMuNDYzLS4yLjk3OS0uMzAxIDEuNTQ5LS4zMDEuODY1IDAgMS41NTYuMjE3IDIuMDcuNjUzLjUxNi40MzUuNzggMS4wNDcuNzk0IDEuODM1djMuMzM2YzAgLjY2NS4wOTMgMS4xOTYuMjggMS41OTNWMTBoLTEuNjk1em0tMS44MjUtMS4xOTZjLjMyOCAwIC42MzYtLjA4LjkyNi0uMjQuMjktLjE2LjUwNy0uMzczLjY1My0uNjQyVjYuNTI3aC0uODk2Yy0uNjE1IDAtMS4wNzguMTA3LTEuMzg3LjMyMi0uMzEuMjE0LS40NjUuNTE3LS40NjUuOTA5IDAgLjMxOS4xMDYuNTczLjMxOC43NjIuMjExLjE5LjQ5NS4yODQuODUuMjg0ek0xNi43MDQgMi42MDRsLjA0OC44NTRjLjU0Ny0uNjYgMS4yNjUtLjk5MSAyLjE1My0uOTkxIDEuNTQgMCAyLjMyNC44ODIgMi4zNTIgMi42NDVWMTBoLTEuNjYxVjUuMjA4YzAtLjQ3LS4xMDItLjgxNy0uMzA0LTEuMDQyLS4yMDMtLjIyNi0uNTM1LS4zMzktLjk5NS0uMzM5LS42NyAwLTEuMTcuMzAzLTEuNDk3LjkxVjEwaC0xLjY2MVYyLjYwNGgxLjU2NXpNMjIuNjU4IDYuMjQ3YzAtMS4xNDguMjctMi4wNjYuODEtMi43NTEuNTQtLjY4NiAxLjI1Ny0xLjAzIDIuMTUtMS4wMy44NDMgMCAxLjUwNi4yOTUgMS45OS44ODNsLjA3NS0uNzQ1aDEuNDk3djcuMTdjMCAuOTcxLS4zMDIgMS43MzctLjkwNiAyLjI5Ny0uNjA0LjU2LTEuNDE5Ljg0MS0yLjQ0NC44NDFhMy45MzkgMy45MzkgMCAwIDEtMS41OS0uMzM4Yy0uNTE3LS4yMjYtLjkxLS41Mi0xLjE3OC0uODg2bC43ODYtLjk5OGMuNTEuNjA3IDEuMTM5LjkxIDEuODg2LjkxLjU1MiAwIC45ODctLjE1IDEuMzA2LS40NDguMzE5LS4yOTkuNDc5LS43MzcuNDc5LTEuMzE2di0uNWMtLjQ3OS41MzQtMS4xMTcuOC0xLjkxNS44LS44NjUgMC0xLjU3My0uMzQzLTIuMTIyLTEuMDMyLS41NS0uNjg4LS44MjQtMS42NC0uODI0LTIuODU3em0xLjY1NS4xNDRjMCAuNzQyLjE1MSAxLjMyNy40NTQgMS43NTMuMzAzLjQyNi43MjQuNjQgMS4yNjEuNjQuNjcgMCAxLjE2Ny0uMjg4IDEuNDktLjg2MlY0LjY2OGMtLjMxNC0uNTYtLjgwNi0uODQtMS40NzYtLjg0LS41NDcgMC0uOTcyLjIxNi0xLjI3NS42NDktLjMwMy40MzMtLjQ1NCAxLjA3LS40NTQgMS45MTR6TTM1LjM2NiA5LjI3NWMtLjQ4Ny41NzUtMS4xOC44NjItMi4wNzguODYyLS44MDIgMC0xLjQxLS4yMzUtMS44MjItLjcwNC0uNDEyLS40Ny0uNjE4LTEuMTQ5LS42MTgtMi4wMzdWMi42MDRoMS42NnY0Ljc3MWMwIC45MzkuMzkgMS40MDggMS4xNyAxLjQwOC44MDYgMCAxLjM1MS0uMjkgMS42MzQtLjg2OFYyLjYwNGgxLjY2VjEwaC0xLjU2NWwtLjA0LS43MjV6TTQzLjA4NCAxMGMtLjA3My0uMTQxLS4xMzctLjM3MS0uMTkxLS42OWEyLjU4NiAyLjU4NiAwIDAgMS0xLjk0Mi44MjdjLS43NDMgMC0xLjM0OS0uMjEyLTEuODE4LS42MzZhMi4wMzQgMi4wMzQgMCAwIDEtLjcwNC0xLjU3MmMwLS43ODkuMjkzLTEuMzk0Ljg3OC0xLjgxNS41ODYtLjQyMiAxLjQyMy0uNjMzIDIuNTEyLS42MzNoMS4wMTl2LS40ODVjMC0uMzgzLS4xMDctLjY5LS4zMjEtLjkyLS4yMTUtLjIzLS41NC0uMzQ1LS45NzgtLjM0NS0uMzc4IDAtLjY4OC4wOTUtLjkzLjI4NGEuODc4Ljg3OCAwIDAgMC0uMzYyLjcyMWgtMS42NjFjMC0uNDA1LjEzNC0uNzg1LjQwMy0xLjEzOC4yNy0uMzUzLjYzNS0uNjMgMS4wOTctLjgzLjQ2My0uMi45OC0uMzAxIDEuNTQ5LS4zMDEuODY2IDAgMS41NTYuMjE3IDIuMDcxLjY1My41MTUuNDM1Ljc4IDEuMDQ3Ljc5MyAxLjgzNXYzLjMzNmMwIC42NjUuMDkzIDEuMTk2LjI4IDEuNTkzVjEwaC0xLjY5NXptLTEuODI1LTEuMTk2Yy4zMjggMCAuNjM3LS4wOC45MjYtLjI0LjI5LS4xNi41MDctLjM3My42NTMtLjY0MlY2LjUyN2gtLjg5NmMtLjYxNSAwLTEuMDc3LjEwNy0xLjM4Ny4zMjItLjMxLjIxNC0uNDY1LjUxNy0uNDY1LjkwOSAwIC4zMTkuMTA2LjU3My4zMTguNzYyLjIxMi4xOS40OTUuMjg0Ljg1LjI4NHpNNDUuOTQ4IDYuMjQ3YzAtMS4xNDguMjctMi4wNjYuODEtMi43NTEuNTQtLjY4NiAxLjI1Ny0xLjAzIDIuMTUtMS4wMy44NDMgMCAxLjUwNi4yOTUgMS45OS44ODNsLjA3NS0uNzQ1aDEuNDk3djcuMTdjMCAuOTcxLS4zMDIgMS43MzctLjkwNiAyLjI5Ny0uNjA0LjU2LTEuNDE4Ljg0MS0yLjQ0NC44NDFhMy45MzkgMy45MzkgMCAwIDEtMS41OS0uMzM4Yy0uNTE2LS4yMjYtLjkxLS41Mi0xLjE3OC0uODg2bC43ODYtLjk5OGMuNTEuNjA3IDEuMTM5LjkxIDEuODg2LjkxLjU1MiAwIC45ODctLjE1IDEuMzA2LS40NDguMzItLjI5OS40NzktLjczNy40NzktMS4zMTZ2LS41Yy0uNDc5LjUzNC0xLjExNy44LTEuOTE0LjgtLjg2NiAwLTEuNTc0LS4zNDMtMi4xMjMtMS4wMzItLjU1LS42ODgtLjgyNC0xLjY0LS44MjQtMi44NTd6bTEuNjU1LjE0NGMwIC43NDIuMTUxIDEuMzI3LjQ1NCAxLjc1My4zMDMuNDI2LjcyNC42NCAxLjI2MS42NC42NyAwIDEuMTY3LS4yODggMS40OS0uODYyVjQuNjY4Yy0uMzE0LS41Ni0uODA2LS44NC0xLjQ3Ni0uODQtLjU0NyAwLS45NzIuMjE2LTEuMjc1LjY0OS0uMzAzLjQzMy0uNDU0IDEuMDctLjQ1NCAxLjkxNHpNNTcuNDMzIDEwLjEzN2MtMS4wNTMgMC0xLjkwNi0uMzMyLTIuNTYtLjk5NS0uNjU0LS42NjMtLjk4MS0xLjU0Ni0uOTgxLTIuNjQ5di0uMjA1YzAtLjczOC4xNDItMS4zOTguNDI3LTEuOTc5YTMuMjUyIDMuMjUyIDAgMCAxIDEuMi0xLjM1NyAzLjE3MiAzLjE3MiAwIDAgMSAxLjcyMi0uNDg1YzEuMDA3IDAgMS43ODYuMzIxIDIuMzM1Ljk2NC41NDkuNjQyLjgyMyAxLjU1MS44MjMgMi43Mjd2LjY3aC00LjgzM2MuMDUuNjEuMjU0IDEuMDk0LjYxMiAxLjQ1LjM1OC4zNTUuODA4LjUzMyAxLjM1LjUzMy43NjEgMCAxLjM4MS0uMzA4IDEuODYtLjkyM2wuODk1Ljg1NGEyLjk5IDIuOTkgMCAwIDEtMS4xODYgMS4wMjkgMy43MTMgMy43MTMgMCAwIDEtMS42NjQuMzY2ek01Ny4yMzQgMy44Yy0uNDU1IDAtLjgyMy4xNi0xLjEwNC40NzgtLjI4LjMyLS40NTkuNzY0LS41MzYgMS4zMzNoMy4xNjV2LS4xMjNjLS4wMzctLjU1Ni0uMTg1LS45NzYtLjQ0NS0xLjI2LS4yNi0uMjg2LS42Mi0uNDI4LTEuMDgtLjQyOHoiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="번역 아이콘">
                                <i class="icon chevron-right Linker_linkerIcon__1QJpf" aria-hidden="true">
                                </i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="FooterContainer_container__3LibG">
                    <div class="FooterContainer_inner__3Nket">
                        <section class="FooterContainer_leftSection__2BtHF">
                            <div class="FooterContainer_buttonBlock__FQR2E">
                            	<strong class="FooterContainer_title__1mcxQ">
                            		와디즈 고객센터
                            	</strong>
                            	<div class="FooterContainer_buttonBlock__FQR2E">
                            		<button type="button" class="FooterContainer_directBtn__2ICcT">
                            			채팅 상담하기
                            			<i class="icon chevron-right" aria-hidden="true"></i>
                            		</button>
	                                <a href="https://helpcenter.wadiz.kr/hc/ko/requests/new" class="FooterContainer_directBtn__2ICcT" target="_blank" rel="noreferrer">
	                                	문의 등록하기
	                                	<i class="icon chevron-right" aria-hidden="true"></i>
	                                </a>
	                                <a href="https://helpcenter.wadiz.kr/hc/ko" class="FooterContainer_directBtn__2ICcT FooterContainer_customcenterBtn__4TIQa" target="_blank" rel="noreferrer">
	                                	도움말 센터 바로가기
	                                	<i class="icon chevron-right" aria-hidden="true">
	                                	</i>
	                                </a>
	                            </div>
	                            <dl class="FooterContainer_enableTime__B19o3">
	                                <dt>상담 가능 시간</dt>
	                                <dd>평일 오전 9시 ~ 오후 6시 (주말, 공휴일 제외)</dd>
	                            </dl>
	                        </section>
	                        <section class="FooterContainer_rightSection__2uaQk">
	                        	<address>
		                            <ul class="FooterInfo_info__1aB0e">
		                                <li>와디즈㈜</li>
		                                <li>대표이사 신혜성</li>
		                                <li>사업자등록번호 258-87-01370</li>
		                                <li>통신판매업신고번호 2021-성남분당C-1153</li>
		                                <li>경기 성남시 분당구 판교로 242 PDC A동 402호</li>
		                            </ul>
		                            <div class="FooterInfo_contactInfoWrap__2u2vv">
		                                <ul class="FooterInfo_info__1aB0e FooterInfo_contactInfo__sPvNn">
		                                    <li>
		                                        <a href="https://helpcenter.wadiz.kr/hc/ko/requests/new" target="_blank" rel="noreferrer">이메일 상담 info@wadiz.kr</a>
		                                    </li>
		                                    <li>
		                                    	유선 상담
		                                        <a href="tel:1661-9056">1661-9056</a>
		                                    </li>
		                                </ul>
		                                <span class='FooterInfo_copyright__802qi'>© wadiz Co., Ltd.</span>
		                            </div>
		                          </address>
		                          <div class="FooterContainer_infoNotice__3m1oJ">
		                                <p>일부 상품의 경우 와디즈는 통신판매중개자이며 통신판매 당사자가 아닙니다.</p>
		                                <p>해당되는 상품의 경우 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.</p>
		                          </div>
		                          <div class="FooterContainer_appStoreSection__2zpAZ">
		                             	<a href="https://play.google.com/store/apps/details?id=com.markmount.wadiz&pli=1" target="_blank" class="icon-google-play" rel="noopener noreferrer">
		                             		Android앱
		                             	</a>
		                                <a href="https://apps.apple.com/kr/app/wadijeu/id1107828621" target="_blank"  class="icon-apple" rel="noopener noreferrer">
		                                	iOS앱
		                                </a>
		                            </div>
                        		</section>
                            </div>
                    	</div>
	                <div class="externals">
                    <div class="externals-wrap">
                        <ul>
                            <li>
                            	<span title="카카오톡 옐로아이디">
                            		<i class="icon-kakao" aria-hidden="true"></i>
                            	</span>
                                <ul>
                                    <li>
                                    	<a href="http://pf.kakao.com/_MGxgmxl" target="_blank" rel="noopener noreferrer">투자</a>
                                    </li>
                                    <li>
                                    	<a href="http://pf.kakao.com/_pEeEl" target="_blank" rel="noopener noreferrer">펀딩</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                            	<span title="페이스북">
                            		<i class="icon-facebook" aria-hidden="true"></i>
                            	</span>
                                <ul>
                                    <li>
                                    	<a href="https://www.wadiz.kr/link/fb_invest" target="_blank" rel="noopener noreferrer">투자</a>
                                    </li>
                                    <li>
                                    	<a href="https://www.wadiz.kr/link/fb_reward" target="_blank" rel="noopener noreferrer">펀딩</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul>
                            <li>
                            	<a href="https://brunch.co.kr/@wadiz" target="_blank" title="브런치" rel="noopener noreferrer">
                            		<i class="icon-brunch" aria-hidden="true"></i>
                            	</a>
                            </li>
                            <li>
                            	<a href="https://www.instagram.com/wadiz_official/" target="_blank" title="인스타그램" rel="noopener noreferrer">
                                    <i class="icon-instagram" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                            	<a href="http://blog.naver.com/wadiz_crowdfunding" target="_blank" title="네이버 블로그" rel="noopener noreferrer">
                                    <i class="icon-naver-blog" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                            	<a href="https://www.youtube.com/channel/UCF1_fHSt6Efemgy5wToafNw/featured" target="_blank" title="유튜브" rel="noopener noreferrer">
                                    <i class="icon-youtube-play" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </footer>
		</div>
	</div>
</body>
</html>