<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/css/components/header-my.css"
	rel="stylesheet">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/static/images/logo.png">
</head>
<body>
	<div class="web-header">
		<div class="web-header-large">
			<header class="header-wrapper">
				<div class="header-container">
					<%-- <h1 class="wadiz-logo">
						<a href="/web/main" style="width: 100px;">
							<span class="label">나눔의집</span>
							<img alt="" src="${pageContext.request.contextPath}/static/images/components/dhouse.png" style="width: 88%;">
						</a>
					</h1> --%>
					<ul class="header-menu-category-ul">
						<li class="header-menu-category-li"><a
							class="header-menu-category-a" href="/web/wreward/comingsoon">
								<h1 class="wadiz-logo">
									<span>나눔의집</span>
								</h1>
						</a></li>
						<li class="header-menu-category-li"><a
							class="header-menu-category-a" href="/web/wreward/comingsoon">
								<span>사업소개</span>
						</a></li>
						<li class="header-menu-category-li"><a
							class="header-menu-category-a" href="/web/wreward/main"> <span>기부하기</span>
						</a></li>
						<li class="header-menu-category-li"><a
							class="header-menu-category-a" href="/web/preorder/main"> <span>홍보하기</span>
						</a></li>
						<li class="header-menu-category-li"><a
							class="header-menu-category-a" href="/web/store/main"> <span>고객센터</span>
						</a></li>
					</ul>
					<div class="web-header-utils">
						<div class="header-search-div">
							<form>
								<div class="header-search-index-div" tabindex="-1">
									<div class="header-search-empty-div"></div>
									<div class="header-search-input-div">
										<input type="search" placeholder="새로운 것을 찾으시나요?"
											aria-label="검색" value="" style="">
									</div>
									<button type="submit" class="header-search-button"
										aria-label="검색">
										<svg viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__20lDO" aria-hidden="true"
											style="width: 24px; height: 24px;">
											<path fill="none" d="M0 0h40v40H0z"></path>
											<path
												d="M29.2 27.91a14.38 14.38 0 1 0-1.42 1.4l7.16 7.15.07.08 1.41-1.41zM18.45 6a12.36 12.36 0 0 1 8.35 3.23 12.24 12.24 0 0 1 4 8.59A12.39 12.39 0 1 1 17.88 6z"></path>
										</svg>
									</button>
								</div>
							</form>
						</div>
						<%-- <c:if
							test="${not empty sessionScope.memberId || not empty cookie.memberIdentification }">
							<!-- 로그아웃 버튼! -->
							<div class="buttonWrap headerButton">
								<button class="listButton logoutButton"
									onclick="location.href = '${pageContext.request.contextPath}/user/loging.user'">
								</button>
							</div>
							<!-- // 로그아웃 버튼! -->
						</c:if> --%>
						<div class="header-user-div">
							<c:if test="${not empty sessionScope.userId}">
							<div class="header-user-container">
								<button type="button" class="header-user-button" onclick="location.href='${pageContext.request.contextPath}/user/logout.user'">로그아웃</button>
								<button data-event="iam.signup" class="header-user-button" onclick="location.href='${pageContext.request.contextPath}/dhouse/user/mypage.user'">마이페이지</button>
							</div>
							</c:if>
							<c:if test="${empty sessionScope.userId}">
							<div class="header-user-container">
								<button type="button" class="header-user-button" onclick="location.href='${pageContext.request.contextPath}/user/login.user'">로그인</button>
								<button data-event="iam.signup" class="header-user-button" onclick="location.href='${pageContext.request.contextPath}/user/signUp.user'">회원가입</button>
							</div>
							</c:if>
						</div>
						<div class="web-header-funding-open funding-open">
							<div>
								<div>
									<button aria-label="기부 참여하기"
										class="header-make-button header-make-button2 header-make-button3 funding-open-button"
										type="button">
										<span> <span class="header-make-project-span">기부
												참여하기</span>
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