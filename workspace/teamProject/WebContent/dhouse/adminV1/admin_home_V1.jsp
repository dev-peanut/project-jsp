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
<!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin/home.css" />
</head>
<body>
	<!-- header -->
	<jsp:include page="/app/component/adminHeader.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- aside -->
	<jsp:include page="/app/component/adminAside.jsp"></jsp:include>
	<!-- -------------- header end --------------  -->
	<!-- 페이지별로 class 이름 기능에 맞게 재설정 -->
	<main class="module-container">
		<article class="module--welcome">
			<h1 class="welcome__text">안녕하세요!</h1>
			<h1 class="welcome__user-name">관리자님</h1>
		</article>
		<article class="module module--resolution">
			<p class="module__title">접속 정보</p>
			<div class="tt-list">
				<span class="text-danger">전체접속자0</span>
				<span class="text-danger">오늘접속자0</span>
				<span class="text-danger">어제접속자0</span>
				<span class="text-danger">현재접속자0</span>
			</div>
		</article>
		<article class="module module--daily-summary">
			<p class="module__title">회원 정보</p>
		</article>
		<article class="module module--todo-today">
			<p class="module__title">게시글 현황</p>
		</article>
		<article class="module module--monthly-statistics">
			<p class="module__title">배너 신청 현황</p>
		</article>
		<article class="module module--new-dispute">
			<p class="module__title">홍보 신청</p>
		</article>
		<article class="module module--closed-qna">
			<p class="module__title">결제 현황</p>
		</article>
		<article class="module module--new-articles">
			<p class="module__title">신규 글 목록</p>
		</article>
		<article class="module module--new-reviews">
			<p class="module__title">신규 후기 목록</p>
		</article>
	</main>
</body>
</html>
