<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기부기업 소개</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/logo.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/businessIntroduction/business-introduction.css">
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/header.jsp"></jsp:include>
    <main>
    	<div id="bottom-image">
            <p id="p-text">나눔의 집과 함께 기부에 참여하고 싶다면 지금 바로 문의해보세요!</p>
            <button id="bottom-image-button">
                기부 문의하기
            </button>
        </div>
        <div id="whole-wrapper">
            <h2 id="title-text">나눔의 집을 통해 기부한 기업들입니다.</h2>
            <div id="contents-wrapper">
                <!-- <div class="content-wrapper">
                    <div class="content">
                        <a href="" class="content-a">
                            <div class="content-img"></div>
                            <div class="text-box">
                                <p class="text-top">넥스트 뷰티 브랜드</p>
                                <ul class="text-box-ul">
                                    <li class="ul-lists">기부량 <em>4,600,056,320kg</em></li>
                                    <li class="ul-lists">기부횟수 <em>37건</em></li>
                                    <li class="ul-lists">투자자 <em>16430</em>명</li>
                                </ul>
                            </div>
                        </a>
                    </div>
                </div> -->
            </div>
            <%-- <div id="paging-wrap">
            	<c:if test="${prev}">
                  <a href="javascript:location.href='/board/listOk.board?page=${startPage - 1}&sort=${sort}&type=${type}&keyword=${keyword}'" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/images/prev.png" width="15px"></a>
             	</c:if>
                 <c:forEach var="i" begin="${startPage}" end="${endPage}">
                 	<c:choose>
                 		<c:when test="${i eq page}">
                    <a href="javascript:void(0)" class="paging paging-checked"><c:out value="${i}"/></a>
                 		</c:when>
                 		<c:otherwise>
                    <a href="javascript:location.href='/board/listOk.board?page=${i}&sort=${sort}&type=${type}&keyword=${keyword}'" class="paging"><c:out value="${i}"/></a>
                 		</c:otherwise>
                 	</c:choose>
                 </c:forEach>
                 <c:if test="${next}">
                 	<a href="javascript:location.href='/board/listOk.board?page=${endPage + 1}&sort=${sort}&type=${type}&keyword=${keyword}'" class="paging paging-move"><img src="${pageContext.request.contextPath}/static/images/next.png" width="15px"></a>
                 </c:if>
                 <div></div>
             </div> --%>
        </div>
        <!-- 목록 끝 -->
    </main>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	let contextPath = "${pageContext.request.contextPath}";
	let page = `${page}`;
	let corps = `${corps}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/businessIntroduction/business-introduction.js"></script>
</html>