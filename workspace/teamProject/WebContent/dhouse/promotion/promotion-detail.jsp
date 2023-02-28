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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/promotion/promotion-detail.css">
<title>홍보 상세페이지</title>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/header.jsp"></jsp:include>
    <div id="whole">
        <div id="image">
        </div>
        <!-- 이미지 끝 -->
        <div id="bottom">
            <!-- ::before -->
            <div id="bottom-top">
                <div id="bottom-top-title">
                    <strong id="top-title">
                        베리베리싱글 [by 비플] 
                    </strong>
                </div>
                <div id="bottom-top-detail">
                    <span id="top-detail1">
                        도소매
                    </span>
                    <span id="top-detail2">
                        푸드
                    </span>
                </div>
                <p id="bottom-top-promotion">
                    착한농부의 정성이 가득 담긴 프리미엄 작물을 제철, 가장 맛있을때 농장에서 집으로 신선하게 바로 전달해드립니다.
                </p>
            </div>
            <div id="bottom-middle">
                <div class="bottom-middle-wrappers" id="bottom-middle-top-wrapper">
                    <span class="icons icons1"></span>
                    <span class="text">
                        만족도 4.0
                    </span>
                </div>
                <div class="bottom-middle-wrappers" id="bottom-middle-middle-wrapper">
                    <span class="icons icons2"></span>
                    <span class="text">
                        누적 액수 9억원+
                    </span>
                </div>
                <div class="bottom-middle-wrappers" id="bottom-middle-bottom-wrapper">
                    <span class="icons icons3"></span>
                    <span class="text">
                        서포터 20,520명
                    </span>
                </div>
            </div>
            <div id="bottom-bottom">
                <button id="bottom-button">
                    <span id="button-inner-text">
                        <span id="button-icon">
                            <svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__1VB4W" aria-hidden="true"><path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
                            <span id="button-text">
                                팔로우 1,314
                            </span>
                        </span>
                    </span>
                </button>
            </div>
        </div>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
</html>