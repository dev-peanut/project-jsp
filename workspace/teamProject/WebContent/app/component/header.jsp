<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>
	body {
		overflow-y: scroll; /* 내용이 넘칠때 어떻게 보여줄지 지정 */
	    line-height: 1.5em;
	    letter-spacing: -.02em;
	    color: rgba(0,0,0,.84);
	    font-size: 15px;
	    font-weight: 400;
	    -webkit-font-smoothing: antialiased;
	}
	body, body button, body input, body select, body textarea {
	    font-family: roboto,Noto Sans KR,-apple-system,dotum,sans-serif;
	}
	div {
	    margin: 0;
	    border: 0;
	    padding: 0;
	    vertical-align: baseline;
	    font: inherit;
	    box-sizing: border-box;
	}
	a, div, header, h1, span, ul, form, input {
	    margin: 0;
	    border: 0;
	    padding: 0;
	    vertical-align: baseline;
	    font: inherit;
	    box-sizing: border-box;
	}
	div, h1 {
		margin: 0;
	    padding: 0;
	}
	div {
	    -webkit-tap-highlight-color: rgba(0,0,0,0);
	    -webkit-tap-highlight-color: transparent;
	}
	
	ul {
	    display: block;
	    list-style-type: disc;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	}
	button {
	    background: none;
	    color: inherit;
	}
	body, body button, body input, body li, 
	body ol, body select, body textarea, body ul {
	    box-sizing: border-box;
	    margin: 0;
	    border: 0;
	    padding: 0;
	}
	.web-header {
        position: relative;
	    position: -webkit-sticky;
	    position: sticky;
	    top: 0;
	    transition: top .25s;
	    z-index: 1201;
	    width: 100%;
	}
	.web-header .header-wrapper {
	    position: relative;
	    top: 0;
	    z-index: 9998;
	    background-color: #fff;
	    width: 100%;
	    height: 56px;
	    text-align: center;
	}
	.web-header .header-wrapper .header-container {
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    margin: 0 auto;
	    padding: 0 16px;
	    max-width: 1440px;
	    height: 100%;
	}
	.web-header .header-wrapper .header-container {
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    margin: 0 auto;
	    padding: 0 16px;
	    max-width: 1440px;
	    height: 100%;
	}
	.web-header .wadiz-logo {
	    display: inline-block;
	    position: absolute;
	    top: 0;
	    left: 16px;
	    margin: 0;
	    line-height: 22px;
	    font-size: 32px;
	}
	.web-header .wadiz-logo>a {
	    display: block;
	    padding: 11px 0 13px;
	}
	.web-header .wadiz-logo .label { /* wadiz 적힌 span태그 */
	    display: block;
	    position: absolute;
	    left: -9999px; /* 화면 밖으로 빼버림. */
	    visibility: none;
	    height: 1px;
	}
	a, a:visited { /* a태그 방문 시 */
	    text-decoration: none;
	    color: inherit;
	}
	.web-header .wadiz-logo .label {
	    display: block;
	    position: absolute;
	    left: -9999px;
	    visibility: none;
	    height: 1px;
	}
	svg:not(:root) {
	    overflow-clip-margin: content-box;
	    overflow: hidden;
	}
	:not(svg) { /* 해당 선택자 제외 적용 */
	    transform-origin: 0px 0px;
	}
	.GNBDesktop_container__3X3Cg { /* 헤더 상단 카테고리 메뉴 - ul태그 */
	    display: inline-block;
	    position: static;
	    right: 0;
	    bottom: 0;
	    left: 0;
	    flex-shrink: 0;
	    justify-content: space-between;
	    z-index: 1;
	    margin-left: 24px;
	    padding: 0;
	    width: auto;
	    list-style: none;
	    vertical-align: top;
	}
	.GNBDesktop_item__H8bay { /* 헤더 상단 카테고리 메뉴 - li태그 */
	    display: inline-block;
	    text-decoration: none;
	    color: #212529;
	}
	.GNBDesktop_link__1AP6q { /* 헤더 상단 카테고리 메뉴 - a태그 */
	    line-height: 30px;
	    letter-spacing: -.6px;
	    font-size: 20px;
	    font-weight: 700;
	    position: relative;
	    transition: .2s;
	    cursor: pointer;
	    padding: 14px 16px;
	    text-align: center;
	    color: #212529;
	}
	.web-header .web-header-utils { /* 헤더 검색창, 로그인, 회원가입, 프로젝트 만들기 div */
	    position: absolute;
	    top: 0;
	    right: 0;
	    vertical-align: top;
	}
	.DesktopSearchApp_container__2VF9O { /* 헤더 검색창 div */
	    display: inline-block;
	    position: relative;
	    padding: 8px 16px 8px 0;
	    min-width: 185px;
	    height: 56px;
	}
	.SearchController_container__35K5i { /* 헤더 검색창 div 내의 div */
	    line-height: 20px;
	    letter-spacing: 0;
	    font-size: 14px;
	    font-weight: 400;
	    display: flex;
	    position: relative;
	    transition-property: border-color,background-color,color;
	    transition-duration: .15s;
	    outline: none;
	    border: 1px solid #dde2e6;
	    border-radius: 4px;
	    background-color: #fff;
	    padding: 0 10px 0 0;
	    height: 40px;
	    min-height: 40px;
	    line-height: 40px;
	    color: #212529;
	    -webkit-font-smoothing: antialiased;
	    box-sizing: border-box;
	    -webkit-appearance: none;
	}
	.SearchTag_emptyTag__1Iu7r { /* 검색창 div 내 왼쪽 여백 div */
	    position: relative;
	    width: 16px;
	}
	.SearchController_keyword__3FcFo { /* 검색창 input태그로 감싼 div */
	    display: flex;
	    position: relative;
	    flex: 1 1 0%;
	    margin-right: 40px;
	}
	.SearchController_keyword__3FcFo input { /* 검색창 input태그 */
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    position: relative;
	    flex-grow: 1;
	    outline: none;
	    background: none;
	    padding-right: 32px;
	    width: 100%;
	    -webkit-appearance: none;
	    -ms-appearance: none;
	    appearance: none;
	    box-sizing: border-box;
	}
	.SearchController_searchIcon__Zhy7F { /* 헤더 검색버튼 */
	    position: absolute;
	    top: 52%;
	    right: 16px;
	    left: auto;
	    transform: translateY(-52%);
	    z-index: 1;
	    pointer-events: visible;
	}
	.withIcon_icon__20lDO { /* 검색버튼 돋보기 모양 */
    	display: block;
	    transform: scale(1);
	    transition: transform .3s ease-out;
	    width: 1em;
	    height: 1em;
	    fill: currentColor;
	}
	.HeaderDesktop_user__3zGmM { /* 로그인, 회원가입을 감싼 div를 감싼 div태그 */
	    display: inline-block;
	    position: relative;
	    vertical-align: top;
	}
	.User_container__bqVd2 { /* 로그인, 회원가입을 감싼 div태그 */
	    display: inline-block;
	    vertical-align: top;
	    white-space: nowrap;
	}
	.User_container__bqVd2 .User_btnSign__1URTs { /* 로그인, 회원가입 버튼 태그 */
	    display: inline-block;
	    cursor: pointer;
	    padding: 0 8px;
	    text-align: center;
	    line-height: 56px;
	    color: #60656a;
	    font-size: 15px;
	}
	.web-header .web-header-funding-open { /* 프로젝트 만들기 버튼을 감싼 div */
	    display: inline-block;
	    vertical-align: top;
	}
	.web-header .web-header-utils .funding-open { /* 프로젝트 만들기 버튼을 감싼 div */
	    margin-left: 12px;
	}
	.Button_button__mRXZC { /* 프로젝트 버튼 */
	    position: relative;
	    transition-property: background-color,border-color,color,opacity;
	    transition-duration: .15s;
	    border: 1px solid #cdd3d8;
	    border-radius: 4px;
	    background-color: transparent;
	    cursor: pointer;
	    padding: 9px 16px;
	    vertical-align: middle;
	    text-decoration: none;
	    line-height: 1.43;
	    white-space: nowrap;
	    color: #495057;
	    font-size: 14px;
	    font-weight: 500;
	    box-sizing: border-box!important;
	    -webkit-appearance: none;
	    -webkit-font-smoothing: antialiased;
	}
	.Button_button__mRXZC.Button_primary__1HJqX { /* 프로젝트 만들기 버튼 */
	    border-color: #00c4c4;
	    color: #00a2a2;
	}
	.Button_button__mRXZC.Button_md__136bx { /* 프로젝트 만들기 버튼 */
	    padding: 9px 16px;
	    line-height: 1.45;
	    font-size: 14px;
	}
	.web-header .web-header-funding-open .funding-open-button { /* 프로젝트 만들기 버튼 */
	    margin-top: 9px;
	    border-radius: 4px;
	    vertical-align: top;
	}
	.Button_button__mRXZC span { /* 프로젝트 만들기가 적힌 span태그를 감싼 span태그 */
	    display: inline-flex;
	    align-items: center;
	    vertical-align: top;
	}
	.Button_button__mRXZC span { /* 프로젝트 만들기가 적힌 span태그 */
	    display: inline-flex;
	    align-items: center;
	    vertical-align: top;
	}
	
	input[type=search]::placeholder {
		color: c2c8ce !important; /* c2c8ce */
	}
	
	
	
	
	
	
	
	
	
	/* 헤더 반응형 */
	@media screen and (min-width: 1097px){
		.web-header {
		    position: static;
		}
	}
	
	@media screen and (min-width: 1097px){
		.web-header .header-wrapper {
		    position: relative;
		    border-bottom: 1px solid #f0f2f5;
		    padding: 0;
		    height: 56px;
		    text-align: left;
		}
	}
	@media screen and (min-width: 1097px){
		.web-header .header-wrapper .header-container {
		    padding: 0 80px;
		}
	}
	@media screen and (min-width: 1097px){
		.web-header .wadiz-logo {
		    position: static;
		}
	}
	@media screen and (min-width: 1097px){
		.web-header .wadiz-logo>a {
		    padding: 14px 0 18px;
		}
	}
	@media screen and (min-width: 1097px){
		.web-header .web-header-utils { /* 헤더 검색창, 로그인, 회원가입, 프로젝트 만들기 div */
		    display: flex;
		    position: relative;
		    margin-left: auto;
		}
	}
	@media screen and (min-width: 1360px){
		.DesktopSearchApp_container__2VF9O { /* 헤더 검색창 div */
		    min-width: 360px;
		}
	}
	@media screen and (min-width: 1097px){
		.SearchController_container__35K5i { /* 헤더 검색창 div 내의 div */
		    border: 1px solid #00c4c4;
		}
	}
	
	
	
	
	
</style>
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