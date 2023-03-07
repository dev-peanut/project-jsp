<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/promotion/promotion-detail.css">
<title>홍보 상세페이지</title>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/header.jsp"></jsp:include>
    <div id="whole">
        <div id="image" style="background-image: url(${contextPath}/upload/${promotionBoard.fileSystemName});">
        </div>
        <!-- 이미지 끝 -->
        <div id="bottom">
            <!-- ::before -->
            <div id="bottom-top">
                <div id="bottom-top-title">
                    <strong id="top-title">
                        ${promotionBoard.promotionBoardTitle}
                    </strong>
                    <c:if test="${sessionScope.userId == promotionBoard.userId}">
                        <div id="button-wrapper">
                            <button class="title-next-buttons" id="update-button">
                                <!-- 수정해야함 -->
                                <a class="button-a" href="${pageContext.request.contextPath}/promotion/update.promotion?promotionBoardId=${promotionBoard.promotionBoardId}">
                                    수정
                                </a>
                            </button>
                            <button class="title-next-buttons" id="delete-button">
                                <a class="button-a" href="${pageContext.request.contextPath}/promotion/deleteOk.promotion?promotionBoardId=${promotionBoard.promotionBoardId}">
                                    삭제
                                </a>
                            </button>
                        </div>
                    </c:if>
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
                    ${promotionBoard.promotionBoardContents}
                </p>
            </div>
            <div id="bottom-middle">
                <div class="bottom-middle-wrappers" id="bottom-middle-top-wrapper">
                    <span class="icons icons1"></span>
                    <span class="text">
                        ${promotionBoard.userNickname}
                    </span>
                </div>
                <div class="bottom-middle-wrappers" id="bottom-middle-middle-wrapper">
                    <span class="icons icons2"></span>
                    <span class="text">
                        총 기부량 : ${promotionBoard.foodSum} kg
                    </span>
                </div>
                <div class="bottom-middle-wrappers" id="bottom-middle-bottom-wrapper">
                    <span class="icons icons3"></span>
                    <span class="text">
                        기업 주소 : ${promotionBoard.corpAddress}
                    </span>
                </div>
            </div>
            <div id="bottom-bottom">
                <a href="javascript:window.history.back();" style="width: 100%; text-decoration: none;">
                    <button id="bottom-button">
                        <span id="button-inner-text">
                            <span id="button-icon">
                                <svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__1VB4W" aria-hidden="true"><path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
                                <span id="button-text">
                                    목록으로 돌아가기
                                </span>
                            </span>
                        </span>
                    </button>
                </a>
            </div>
        </div>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
<script>
	let contextPath = "${pageContext.request.contextPath}";
</script>
</html>