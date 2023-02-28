<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/components/header.css" rel="stylesheet">
<link rel="shortcut icon" href="https://static.wadiz.kr/assets/icon/favicon.ico">
<link rel="shortcut icon" href="https://static.wadiz.kr/static/icon/favicon.ico">
</head>
<body>
	<div class="web-header">
		<div class="web-header-large">
			<header class="header-wrapper">
				<div class="header-container">
					<h1 class="wadiz-logo">
						<a href="/web/main">
							<span class="label">와디즈</span>
							<svg xmlns="http://www.w3.org/2000/svg" width="85" height="25" viewBox="0 0 85 25">
								<path fill="#1D2129" fill-rule="nonzero" d="M58.49 2.23h2.11v21.29H59a1.73 1.73 0 0 1-1.62-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29 7.65 7.65 0 0 1 12.79-5.07V4.23a2 2 0 0 1 2-2zm-6.3 18.62a4.36 4.36 0 0 0 4.16-4.52 4.19 4.19 0 1 0-8.35 0 4.36 4.36 0 0 0 4.19 4.52zM42 23.52h-1.52a1.73 1.73 0 0 1-1.64-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29A7.65 7.65 0 0 1 38 10.72a2 2 0 0 1 1.9-1.79H42v14.59zm-8.41-2.67h.02a4.35 4.35 0 0 0 4.15-4.52 4.35 4.35 0 0 0-4.17-4.51 4.35 4.35 0 0 0-4.17 4.51 4.36 4.36 0 0 0 4.17 4.52zM83.47 8.94v2.11l-7.07 9.06h7.06v3.47h-13v-2.1l7.08-9.07h-6.62v-1.47a2 2 0 0 1 2-2h10.55zM65.86 7.3a2.48 2.48 0 1 1 0-4.96 2.48 2.48 0 0 1 0 4.96zM21.21 8.94h4.14l-4.86 14.59h-4.15l-3.21-9.36-3.21 9.36H5.77L.92 8.94h4.13L8 18l2.5-7.74a2 2 0 0 1 1.86-1.34h2.9l3 9.08 2.95-9.06zm42.65 14.59l-.04-12.59a2 2 0 0 1 2-2h2.11v14.59h-4.07z"></path>
							</svg>
						</a>
					</h1>
					<ul class="GNBDesktop_container__3X3Cg">
						<li class="GNBDesktop_item__H8bay">
							<a class="GNBDesktop_link__1AP6q" href="/web/wreward/comingsoon">
								<span>오픈예정</span>
							</a>
						</li>
						<li class="GNBDesktop_item__H8bay">
							<a class="GNBDesktop_link__1AP6q" href="/web/wreward/main">
								<span>펀딩 +</span>
							</a>
						</li>
						<li class="GNBDesktop_item__H8bay">
							<a class="GNBDesktop_link__1AP6q" href="/web/preorder/main">
								<span>프리오더</span>
							</a>
						</li>
						<li class="GNBDesktop_item__H8bay">
							<a class="GNBDesktop_link__1AP6q" href="/web/store/main">
								<span>스토어</span>
							</a>
						</li>
					</ul>
					<div class="web-header-utils">
						<div class="DesktopSearchApp_container__2VF9O">
							<form>
								<div class="SearchController_container__35K5i" tabindex="-1">
									<div class="SearchTag_emptyTag__1Iu7r"></div>
									<div class="SearchController_keyword__3FcFo">
										<input type="search" placeholder="새로운 것을 찾으시나요?" aria-label="검색" value="" style="">
									</div>
									<button type="submit" class="SearchController_searchIcon__Zhy7F" aria-label="검색">
										<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__20lDO" aria-hidden="true" style="width: 24px; height: 24px;">
											<path fill="none" d="M0 0h40v40H0z"></path>
											<path d="M29.2 27.91a14.38 14.38 0 1 0-1.42 1.4l7.16 7.15.07.08 1.41-1.41zM18.45 6a12.36 12.36 0 0 1 8.35 3.23 12.24 12.24 0 0 1 4 8.59A12.39 12.39 0 1 1 17.88 6z"></path>
										</svg>
									</button>
								</div>
							</form>
						</div>
						<div class="HeaderDesktop_user__3zGmM">
							<div class="User_container__bqVd2">
								<button type="button" class="User_btnSign__1URTs">로그인</button>
								<button data-event="iam.signup" class="User_btnSign__1URTs">회원가입</button>
							</div>
						</div>
						<div class="web-header-funding-open funding-open">
							<div>
								<div>
									<button aria-label="프로젝트 만들기" class="Button_button__mRXZC Button_primary__1HJqX Button_md__136bx funding-open-button" type="button">
										<span>
											<span class="Button_children__3HY2l">프로젝트 만들기</span>
										</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
	</div>
</body>
</html>