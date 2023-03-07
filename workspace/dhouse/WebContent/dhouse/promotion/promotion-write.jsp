<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" style="--vh:7.46px;" class="">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>홍보 글쓰기 페이지</title>
    <link rel="stylesheet" href="../../static/css/promotion/promotion-write.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="../../static/images/logo.png">
</head>
<body>
    <jsp:include page="../components/header.jsp"></jsp:include>
    <div class="body1"></div>
    <div id="root">
       <div id="AppLayout_Container">
          <div class="total_main">
                 <!-- 본문 시작  -->
             <div id="form_container">
                <div id="form_container_margin">
                   <div class="category_print">
                      <ol class="category_name">
                        <!-- <a href="${pageContext.request.contextPath}/promotion/listOk.promotion" style="text-decoration: none;"> -->
                        <a href="javascript:window.history.back();" style="text-decoration: none;">
                            <li class="form_category_small">홍보하기</li>
                        </a>
                         <li class="form_category_small">홍보 게시글 작성</li>
                      </ol>
                          
 
                   <!-- 본문 -->
                <form action="${pageContext.request.contextPath}/promotion/writeOk.promotion" name="promotionWriteForm" method="post" enctype="multipart/form-data">
                    <div class="food_donation_start">
                       <div class="food_donation_container">
                         <h2 class="food_donation_title">홍보 게시글 작성하기
                             <!-- 제출 버튼 -->
                             <button id="bottom-button" type="submit">
                                 <span id="button-inner-text"> 
                                     <span id="button-icon"> <svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__1VB4W" aria-hidden="true">
                                             <path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
                                             <span id="button-text"> 작성 완료 </span>
                                     </span>
                                 </span>
                             </button>
                         </h2>
                          
                          <!-- 글 제목 -->
                          <section class="form_section">
                              <div style="max-width: 600px;">
                                  <div class="form_container">
                                      <h2 class="Section_title">글 제목
                                       </h2>
                                      <div class="Section_guide"></div>
                                  </div>
                                  <div class="Section_content">
                                      <div class="textarea_field">
                                          <div
                                              class="textarea_field_form">
                                              <div class="wide_column_1"></div>
                                              <div class="wide_column_2">
                                                  <div class="wz input">
                                                      <textarea placeholder="글 제목" helper="[object Object]"
                                                          name="promotionBoardTitle" rows="2" class="titleData"></textarea>
                                                      <div id="title-warning">필수 정보입니다</div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              </section>
        
                      <!-- 글 내용 - 설명란 -->
                        <section class="community_container" style="max-width: 720px;">
                                  <div class="community_container spacing-4">
                                      <h2 class="Section_title">글 내용</h2>
                                      <div class="Section_guide">
                                      </div>
                                  </div>
                                  <div class="Section_content_notice">
                                      <div color="basic" class="MessageBox_basic_notice">
                                          <span>
                                              <svg viewBox="0 0 40 40" focusable="false" role="presentation" class="MessageBox_icon" aria-hidden="true">
                                                  <path fill="none" d="M0 0h40v40H0z"></path>
                                                  <path d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z">
                                                  </path>
                                              </svg></span>
                                          <div class="MessageBox_content"></div>
                                              <p class="MessageBox_title">읽어주세요!</p>
                                              <div class="MessageBox_description">
                                                  <ul>
                                                      <li class="imagenotice">올바른 게시판 문화를 위해 욕설, 반말은 삼가해주세요.</li>
                                                      <li class="imagenotice">정확한 정보 전달을 위해 제품의 상태를 상세히 기재해주세요.</li>
                                                      <li class="imagenotice">소중한 가전제품을 기부해주셔서 감사합니다.</li>
                                                  </ul>
                                              </div>
                                          </div>
                                      </div>
                                      
                                      
                                <!-- 글 내용 -->      
                                <section class="form_section">
                                  <div style="max-width: 600px;">
                                      <div class="form_container">
                                          <div class="Section_guide"></div>
                                      </div>
                                      <div class="Section_content">
                                          <div class="textarea_field">
                                              <div
                                                  class="textarea_field_form">
                                                  <div class="wide_column_1"></div>
                                                  <div class="wide_column_2">
                                                      <div class="wz input">
                                                          <textarea placeholder="글 내용" helper="[object Object]"
                                                              name="promotionBoardContents" rows="3" class="contentData"></textarea>
                                                          <div id="content-warning">필수 정보입니다</div>
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  </section>
                                  
                               <!-- 사진 등록  -->   
                               <section>
                                  <div class="photo_submit_section"></div>
                                  <section class="Section_container__photo">
                                      <div style="max-width: 600px;">
                                          <div class="Section_photo_header">
                                              <h2 class="Section_title">사진 등록</h2>
                                              <div class="Section_guide"></div>
                                          </div>
                                          <div class="Section_description"></div>
                                          <div class="Section_content">
                                              <div class="ImageField">
                                                  <div class="ImageFormField">
                                                      <div class="ImageFormField_buttonWrapper">
                                                          <label
                                                              class="ImageFileButton_label" id="button-label">
                                                              <button type="button"
                                                                  class="ImageFileButton"
                                                                  id="photosubmit">
                                                                  <i class="icon-camera-o" aria-hidden="true"></i>등록하기
                                                              </button>
                                                              <div class="ImageFileButton_input">
                                                                  <input type="file" id="image" name="upload1" onchange="setThumbnail(event);">
                                                              </div>
                                                          </label> <em class="helper error"></em><em
                                                              class="helper_ImageFormField">2MB 이하의
                                                              JPG, JPEG, GIF, PNG 파일</em>
                                                          <div class="image_space"></div>
                                                          <div id="image_container"></div>
                                                      </div>
                                              </section>
                         </div>
                      </div>
                </form>
                 </div>
             </div>
         </div>
     </div>
     </div>
     <jsp:include page="../components/footer.jsp"></jsp:include>
 </body>
 <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
 <script type="text/javascript" src="../../static/js/promotion/promotion-write.js"></script>
</html>