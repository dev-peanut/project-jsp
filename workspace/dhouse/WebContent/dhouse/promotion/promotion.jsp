<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/promotion/promotion.css">
<title>홍보 목록페이지</title>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/header.jsp"></jsp:include>
    <div id="whole-wrapper">
        <section class="container">
            <div class="arrow prev">&lt;</div>
            <div class="banner">
                <div><img src="${pageContext.request.contextPath}/static/images/user/006.png"></div>
                <div><img src="${pageContext.request.contextPath}/static/images/user/001.png"></div>
                <div><img src="${pageContext.request.contextPath}/static/images/user/002.png"></div>
                <div><img src="${pageContext.request.contextPath}/static/images/user/003.png"></div>
                <div><img src="${pageContext.request.contextPath}/static/images/user/004.png"></div>
                <div><img src="${pageContext.request.contextPath}/static/images/user/005.png"></div>
                <div><img src="${pageContext.request.contextPath}/static/images/user/006.png"></div>
                <div><img src="${pageContext.request.contextPath}/static/images/user/001.png"></div>
            </div>
            <div id="mark-bottom"></div>
            <div id="mark-bottom2"></div>
            <div class="arrow next">&gt;</div>
            <div class="btns">
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
            </div>
        </section>
        <main>
            <div id="ranking-part-wrapper">
                <div id="ranking-title">
                    <h2 id="title-text">TOP 10</h2>
                    <p id="title">
                        기부량이 가장 높은<br id="title-br">10개의 업체들을 소개합니다.
                    </p>
                </div>
                <ol id="ranking-part">
                   <!-- 리스트 하나 시작 -->
                   <!-- 리스트 하나 끝-->
                </ol>
                <a href="${pageContext.request.contextPath}/promotion/write.promotion">
                    <button class="promotion-write-button">홍보 게시글 작성하기</button>
                </a>
            </div>
        </main>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}";
    let promotionBoards = `${promotionBoards}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/promotion/promotion.js"></script>
</html>