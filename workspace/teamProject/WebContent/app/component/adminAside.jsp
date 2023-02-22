<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자 홈</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/components/adminAside.css" />
<!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
</head>
<body>
	<aside class="sidebar">
		<header class="sidebar-header">
			<h1>A-CO Board</h1>
		</header>
		<nav>
			<ul>
				<li><details>
						<summary class="nav-menu menu--current">
							<a href="./index.html">
								<h2 class="menu__title">관리자 홈</h2>
							</a>
						</summary>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<h2 class="menu__title">회원</h2>
							<img
								src="${pageContext.request.contextPath}/assets/img/dropdown.png"
								alt="icon" class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<li class="submenu__item"><a
								href="${pageContext.request.contextPath}/admin/user.admin">
									<!-- 							<li class="submenu__item"><a href="./user.html"> -->
									<span id="sidelist">회원정보</span>
							</a></li>
							<!-- <li class="submenu__item"><a href="./user.html"> -->
							<%-- <li class="submenu__item"><a href="${pageContext.request.contextPath}/admin/user.admin">
									<span id="sidelist">탈퇴회원</span>
							</a></li> --%>
						</ul>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<h2 class="menu__title">게시판</h2>
							<img
								src="${pageContext.request.contextPath}/assets/img/dropdown.png"
								alt="icon" class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<a href="${pageContext.request.contextPath}/admin/guide.admin">
								<span id="sidelist">
									<li class="submenu__item">게시판 관리</li>
							</span>
							</a>

						</ul>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<h2 class="menu__title">배너</h2>
							<img
								src="${pageContext.request.contextPath}/assets/img/dropdown.png"
								alt="icon" class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<a href="http://localhost:8090/teamProject/app/admin/banner.jsp"> <span id="sidelist">
									<li class="submenu__item">배너 목록</li>
							</span>
							</a>
							<a href=""> <span id="sidelist">
									<li class="submenu__item">홍보 목록</li>
							</span>
							</a>
							<a href=""> <span id="sidelist">
									<li class="submenu__item">결제</li>
							</span>
							</a>
						</ul>
					</details></li>
				<li><details>
						<summary class="nav-menu">
							<h2 class="menu__title">기부</h2>
							<img
								src="${pageContext.request.contextPath}/assets/img/dropdown.png"
								alt="icon" class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<a href="./notice.html"> <span id="sidelist">
									<li class="submenu__item">기부 관리</li>
							</span>
							</a>
						</ul>
					</details></li>
				<%-- <li><details>
						<summary class="nav-menu">
							<h2 class="menu__title">필요한것 추가하기</h2>
							<img src="${pageContext.request.contextPath}/assets/img/admin/icon/dropdown.png" alt="icon"
								class="menu__icon--drop-down" />
						</summary>
						<ul class="nav-menu-submenu">
							<a href="./analytics.html">
								<h3>
									<li class="submenu__item">배고프다...</li>
								</h3>
								<h3>
									<li class="submenu__item">현재시간04시38분..</li>
								</h3>
								<h3>
									<li class="submenu__item">너무너ㅁㅜ 잠온다</li>
								</h3>
							</a>
						</ul>
					</details></li> --%>
			</ul>
		</nav>
	</aside>
</body>
</html>
