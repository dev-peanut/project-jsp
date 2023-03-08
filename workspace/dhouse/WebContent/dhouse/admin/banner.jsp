<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>배너관리</title>

    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/components/sanitize.css" />
    <!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/banner.css" />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/components/banner_modal.css" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.png" />
  </head>
  <body>
    <!-- header -->
    <jsp:include page="/dhouse/components/adminHeader.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <!-- aside -->
    <jsp:include page="/dhouse/components/adminAside.jsp"></jsp:include>
    <!-- -------------- header end --------------  -->
    <!-- 페이지별로 class 이름 기능에 맞게 재설정 -->
    <main class="module-container">
      <article class="module--search">
        <div class="search__searchbox">
          <form class="search__searchbox__form">
            <input id="searchbox" type="text" placeholder="원하시는 키워드로 찾아보세요" />
            <button type="button" class="search__searchbox__button">
              <img src="${pageContext.request.contextPath}/static/images/user/search.png" alt="" />
            </button>
          </form>
        </div>
      </article>
      <article class="module module--content-controller" id="show">
        <button type="button" style="margin: 0 0 0 -33px; font-size: 16px">배너 설정</button>
      </article>
      <article class="module module--content-summary">
        <button type="button" class="banner-delete" style="margin: 0 0 0 -33px; font-size: 16px">
          선택 삭제
        </button>
      </article>
      <article class="module module--content-list">
        <div class="content-list__title-container">
          <div class="content-list__title-unit">
            <ul class="content-list__title">
              <li style="margin: 0 12px;">선택</li>
              <li class="title__id">번호</li>
              <li class="title__id">순서</li>
              <li class="title__user-id">ID</li>
              <li class="title__status">상태</li>
              <li class="title__date-detail">기간</li>
              <li class="title__date">등록일</li>
            </ul>
          </div>
        </div>
        <div id="scroll">
          <!-- 배너 추가 -->
        </div>
        <div class="desktop-only">
          <c:if test="${prev}">
            <a
              href="javascript:location.href='${pageContext.request.contextPath}/admin/banner/list.admin?page=${startPage - 1}'"
              class="paging paging-move">
              이전
            </a>
          </c:if>

          <!-- 데스크탑용 페이지 리스트 -->

          <c:forEach var="i" begin="${startPage}" end="${endPage}">
            <c:choose>
              <c:when test="${i eq page}">
                <a href="javascript:void(0)" style="cursor: default" class="paging paging-checked"
                  ><c:out value="${i}"
                /></a>
              </c:when>
              <c:otherwise>
                <a
                  href="javascript:location.href='${pageContext.request.contextPath}/admin/banner/list.admin?page=${i}'"
                  class="paging"
                  ><c:out value="${i}"
                /></a>
              </c:otherwise>
            </c:choose>
          </c:forEach>

          <c:if test="${next}">
            <a
              href="javascript:location.href='${pageContext.request.contextPath}/admin/banner/list.admin?page=${endPage + 1}'"
              class="paging paging-move">
              다음
            </a>
          </c:if>
        </div>
      </article>
    </main>
    <!-- modal -->
    <jsp:include page="/dhouse/components/banner_modal.jsp"></jsp:include>
    <!-- modal fin. -->
  </body>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <script>
    let banners = `${banners}`;
    let contextPath = `${pageContext.request.contextPath}`;
    let startPage = `${startPage}`;
    let endPage = `${endPage}`;
    let prev = `${prev}`;
    let next = `${next}`;
  </script>
  <script src="${pageContext.request.contextPath}/static/js/admin/app.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/admin/banner.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/components/banner_modal.js"></script>
</html>
