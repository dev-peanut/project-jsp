<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와디즈</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link href="../../assets/css/main.css" rel="stylesheet">
</head>
<body style="overflow: auto;">
	<div id="page-container">
		<main id="main-app">
			<!-- 헤더 적용 -->
			<jsp:include page="../component/header.jsp"></jsp:include>
			<div class="MainWrapper_content"> <!-- 메인 컨텐츠 적용 -->
				<section class="container">
			        <!-- 메인 배너 -->
			        <div class="banner">
			            <div></div>
			            <div></div>
			            <div></div>
			            <div></div>
			            <div></div>
			            <div></div>
			        </div>
			
			        <div class="move-arrow">
			            <!-- 이전 버튼 -->
			            <div class="prev">
			            	<div class="prev-icon"></div>
			            </div>
			            <!-- 다음 버튼 -->
			            <div class="next">
			            	<div class="next-icon"></div>
			            </div>
			        </div>
			
			        <!-- 배너 퍼센티지 -->
			        <div class="banenr_active">
			        	<div style="width: 0%;"></div>
		        	</div>
			    </section>
				<div class="RecommendationDesktop_container Main_wrap"> <!-- 메인 컨텐츠1 - 추천관련 컨텐츠 묶음 -->
					<div class="Main_wrap_1">
						
					</div>
				</div>
				<div class="Main_wrap_2 Main_wrap"> <!-- 메인 컨텐츠2 -->
				</div>
				<div class="Main_wrap_3 Main_wrap"> <!-- 메인 컨텐츠3 -->
				</div>
				<div class="Main_wrap_4 Main_wrap"> <!-- 메인 컨텐츠4 -->
				</div>
			</div>
			<!-- footer적용 -->
			<jsp:include page="../component/footer.jsp"></jsp:include>
		</main>
	</div>
</body>
<script type="text/javascript" src="../../assets/js/main.js"></script>
</html>