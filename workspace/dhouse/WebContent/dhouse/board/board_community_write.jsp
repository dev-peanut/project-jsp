<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" style="--vh:7.46px;" class="">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>홍보 글쓰기 페이지</title>
    <link rel="stylesheet" href="../../assets/css/promotion/promotion-write.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="../../assets/img/logo.png">
</head>
<body class="ReactModal__Body--open" aria-hidden="true">
    <jsp:include page="../components/header.jsp"></jsp:include>
    <div class="body1" data-react-modal-body-trap="" tabindex="0" style="position: absolute; opacity: 0;"></div>
    <div id="root">
        <div id="AppLayout_Container" class="AppLayout_container__3zbzb">
            <div class="AppLayout_main__14bCi">
                    <div id="container" class="ContentsLayout_container__11k-W">
                        <div class="FundingStoryContainer_container__33WY0">
                            <ol class="Breadcrumb_container__3YjD4">
                                <li class="Breadcrumb_item__2r9Ym">홍보</li>
                                <li class="Breadcrumb_item__2r9Ym">홍보 글쓰기</li>
                            </ol>
                            <div class="HeaderLayout_container__3fXkO">
                                <div class="HeaderLayout_contents__F4hlC">
                                    <h2 class="FundingStoryContainer_title__1r0ZE">홍보 게시글 작성하기<!-- 제출 버튼 -->
                                        <button id="bottom-button">
                                            <span id="button-inner-text">
                                                <span id="button-icon">
                                                    <svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__1VB4W" aria-hidden="true"><path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
                                                    <span id="button-text">
                                                        작성 완료
                                                    </span>
                                                </span>
                                            </span>
                                        </button></h2>
                                </div>
                            </div>
                        </div>
                        <!-- 글 제목 -->
                            <section class="Section_container__3md8M">
                                <div style="max-width: 600px;">
                                    <div class="Section_header__1qwS7">
                                        <h2 class="Section_title__ikPIm_Section_isRequired__F8rij">글 제목</h2>
                                        <div class="Section_guide__2xeJO"></div>
                                    </div>
                                    <div class="Section_content__3OkLZ">
                                        <div class="StorySummaryField_container__25ePA">
                                            <div class="field_Form_field__35I9T_FormFieldTextarea_field__33Ncu">
                                                <div class="wide_column-2"></div>
                                                <div class="wide_column-4">
                                                    <div class="wz input">
                                                        <textarea placeholder="글 제목" helper="[object Object]" name="storyInfo.coreMessage" rows="2" class="titleData"></textarea>
                                                    </div>
                                                    <div class="title-warning"><p>필수 정보 입니다.</p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
      
                            </section>
                       <section class="Section_container__3md8M_StoryEditorWrapperItemWeb_container__3bMs8" style="max-width: 720px;">
                                <div class="Section_header__1qwS7 spacing-4">
                                    <h2 class="Section_title__ikPIm_Section_isRequired__F8rij">글 내용</h2>
                                    <div class="Section_guide__2xeJO">
                                        <div class="Section_helperMessage__3V6GQ">
                                            <a class="link spacing-3 is-horizontal" href="https://www.wadiz.kr/link/funding_story_guide1" target="_blank" rel="nofollow noopener noreferrer" data-ga-category="펀딩_스토리_가이드" data-ga-action="클릭">펀딩 스토리 작성 가이드
                                                <svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3lrgp_withIcon_inline__3A3d_icon" aria-hidden="true" style="width: 14px; height: 14px;">
                                                    <path d="M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z">
                                                    </path>
                                                    <path d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z">
                                                    </path>
                                                </svg></a>
                                            <a class="link" href="https://www.wadiz.kr/link/preorder_story_guide" target="_blank" rel="nofollow noopener noreferrer" data-ga-category="프리오더_스토리_가이드" data-ga-action="클릭">프리오더 스토리 작성 가이드
                                                <svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3lrgp withIcon_inline__3A3d_ icon" aria-hidden="true" style="width: 14px; height: 14px;">
                                                    <path d="M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z">
                                                    </path>
                                                    <path d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z">
                                                    </path>
                                                </svg></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="Section_content__3OkLZ">
                                    <div color="basic" class="MessageBox_messageBox__3acWS_MessageBox_basic__2vbop_MessageBox_vertical__1mezf">
                                        <span>
                                            <svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__1Oal1_MessageBox_icon__31KWI" aria-hidden="true">
                                                <path fill="none" d="M0 0h40v40H0z"></path>
                                                <path d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z">
                                                </path>
                                            </svg></span>
                                        <div class="MessageBox_content__3db50"></div>
                                            <p class="MessageBox_title__23TW6">읽어주세요!</p>
                                            <div class="MessageBox_description__1bCQv">
                                                <ul>
                                                    <li class="imagenotice">올바른 게시판 문화를 위해 욕설, 반말은 삼가해주세요.</li>
                                                    <li class="imagenotice">정확한 정보 전달을 위해 제품의 상태를 상세히 기재해주세요.</li>
                                                    <li class="imagenotice">소중한 가전제품을 기부해주셔서 감사합니다.</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                        <section class="Section_container__3md8M">
                                <div style="max-width: 600px;">
                                    <div class="Section_content__3OkLZ">
                                        <div class="StorySummaryField_container__25ePA">
                                            <div class="field_Form_field__35I9T_FormFieldTextarea_field__33Ncu">
                                                <div class="wide_column-2"></div>
                                                <div class="wide_column-4">
                                                    <div class="wz input">
                                                        <textarea placeholder="내용" helper="[object Object]" name="storyInfo.coreMessage" rows="3" class="contentData"></textarea>
                                                    </div>
                                                    <div class="content-warning"><p>필수 정보 입니다.</p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </section>
                             <form class="wz_form_FundingStoryFormContainer_form__326Zc_Form_form__3ASTU">
                            <div class="Loader_loader__d9YUC_Form_loader__1YJ5I"></div>
                            <section class="Section_container__3md8M">
                                <div style="max-width: 600px;">
                                    <div class="Section_header__1qwS7">
                                        <h2 class="Section_title__ikPIm_Section_isRequired__F8rij">사진 등록</h2>
                                        <div class="Section_guide__2xeJO"></div>
                                    </div>
                                    <div class="Section_description__10Uwo">기부하실 음식의 사진을 등록해주세요.
                                    </div>
                                    <div class="Section_content__3OkLZ">
                                        <div class="StoryVideoOrImageField_container__1lnfV">
                                            <div class="field_Form_field__35I9T_required_ImageFormField_field__X1jTW_StoryImageField_field__3O6yy">
                                                <div class="ImageFormField_buttonWrapper__su3pO">
                                                    <label class="wz_label_ImageFileButton_label__3thB2_Label_label__3oH0h">
                                                        <button type="button" class="wz_button_gray_ImageFileButton_button__3gAHD" id="photosubmit">
                                                            <i class="icon-camera-o" aria-hidden="true"></i>등록하기</button>
                                                        <div class="wz_input_right_ImageFileButton_input__1Dnch">
                                                            <input type="file" id="image" accept="image/*" onchange="setThumbnail(event);"/>
                                                        </div>
                                                    </label>
                                                    <em class="helper error"></em><em class="helper_ImageFormField_helper__3XC5c">2MB 이하의 JPG, JPEG, GIF, PNG 파일</em>
                                                    <div id="image_container"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section> 
                                </div>
                        </form>
               </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <jsp:include page="../components/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="../../static/js/board/board_community_write.js"></script>
</html>