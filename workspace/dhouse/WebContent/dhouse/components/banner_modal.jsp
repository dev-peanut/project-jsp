<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/static/css/components/sanitize.css" />
  </head>
  <body>
    <div class="background">
      <div class="window">
        <div class="popup">
          <!-- x 이미지 -->
          <label>
            <img id="exit" src="${pageContext.request.contextPath}/static/images/user/exit.png" />
            <button id="close"></button
          ></label>
          <!-- x 이미지 끝 -->
          <!-- 배너설정 창  -->
          <div class="banner-form-container"></div>
          <!-- 배너설정 창 끝 -->
        </div>
      </div>
    </div>
  </body>
</html>
