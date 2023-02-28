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
	href="${pageContext.request.contextPath}/assets/css/components/adminHeader.css" />
<!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
</head>
<body>
	<header class="page">
		<div class="page-info">
			<img src="${pageContext.request.contextPath}/images/user/menubar.png"
				alt="icon" class="page-info__icon" />
			<ul>
				<a
					href="${pageContext.request.contextPath}/dhouse/admin/admin_home.jsp">
					<span>
						<li class="page-info__detail page-info--current">관리자 홈</li>
				</span>
				</a>
			</ul>
		</div>
		<div class="page-language">
			<button
				class="Button_button__1e2A2 Button_tertiaryGrey__3gRf4 Button_text__3KyLl Button_md__1FRMG"
				type="button"
				href="${pageContext.request.contextPath}/dhouse/main/main.jsp">
				<div class="AnnouncementButton_container__1p1gr" role="button">
					<a href="${pageContext.request.contextPath}/dhouse/main/main.jsp"><strong>홈페이지</strong></a>
				</div>
				<!-- <span class="Badge_container__3mdFR AnnouncementButton_badge__2Jq25">
				</span> -->
			</button>
			<button
				class="Button_button__1e2A2 Button_tertiaryGrey__3gRf4 Button_text__3KyLl Button_md__1FRMG"
				type="button">
				<span><span class="Button_children__q9VCZ"><a
						href="${pageContext.request.contextPath}/dhouse/main/main.jsp"><strong>LOGOUT</strong></a></span></span>
			</button>
		</div>
	</header>
</body>
</html>