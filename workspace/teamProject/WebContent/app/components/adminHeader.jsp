<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 홈</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/components/sanitize.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/components/adminHeader.css" />
    <!-- 아레에 페이지별로 갈아 끼워야할 CSS -->
  </head>
<body>
    <header class="page">
      <div class="page-info">
        <img src="${pageContext.request.contextPath}/assets/img/menubar.png" alt="icon" class="page-info__icon" />
        <ul>
        <a href="${pageContext.request.contextPath}/app/admin/admin_home.jsp">
        	<span>
          <li class="page-info__detail page-info--current">관리자 홈</li>
          </span>
          </a>
        </ul>
      </div>
      <div class="page-language">
            <div class="PreviewButton_container__1P-_4">
              <button
                class="Button_button__1e2A2 Button_primary__PxOJr Button_md__1FRMG Button_circular__3NpOv"
                type="button"
              >
                <!-- <span>
                  <span class="Button_children__q9VCZ">현재날짜 2023-02-18</span>
                </span> -->
              </button>
            </div>
            <div class="AnnouncementButton_container__1p1gr" role="button">홈페이지</div>
            <span class="Badge_container__3mdFR AnnouncementButton_badge__2Jq25"> </span>
            <button
              class="Button_button__1e2A2 Button_tertiaryGrey__3gRf4 Button_text__3KyLl Button_md__1FRMG"
              type="button"
            >
              <span><span class="Button_children__q9VCZ">LOGOUT</span></span>
            </button>
      </div>
    </header>
</body>
</html>