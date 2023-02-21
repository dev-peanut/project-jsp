<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel="stylesheet" href="../../assets/css/admin/admin_board.css" />
</head>
<body>
     <!-- 전체 박스 -->
     <div id="root">
        <div id="AppLayout_Container" class="AppLayout_container__3zbzb">
          <!-- header -->
          <div class="header">
            <div style="width: 129px; height: 48px; cursor: pointer"></div>
            <div class="admin_name">
              <div class="Avatar_avatar__2DI5d Avatar_xs__i50kh"><span></span></div>
              <div>통합관리자 시스템</div>
            </div>
            <div class="AppNavbar_buttonGroup__UcLfm">
              <div class="PreviewButton_container__1P-_4">
                <button
                  class="Button_button__1e2A2 Button_primary__PxOJr Button_md__1FRMG Button_circular__3NpOv"
                  type="button"
                >
                  <span>
                    <span class="Button_children__q9VCZ">현재시간 2023-02-18-17:41:28</span>
                  </span>
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
          </div>
  
          <!-- main -->
          <div class="AppLayout_main__14bCi">
            <!-- 사이드바 -->
            <div class="AppSidebarLayout_contents__2thGr" id="sidebar">
              <!-- 사이드바 맨 윗부분 -->
              <div
                class="AppSidebarRewardProjectInfo_container__2Ykhp AppSidebarRewardProjectInfo_defaultBackgroundImage__1rWVS"
              >
                <div class="AppSidebarRewardProjectInfo_projectFlagGroup__2GdB4">
                  <!--    <span class="AppSidebarRewardProjectInfo_flag__2Ctnr">회원 관리</span>
                          <span class="AppSidebarRewardProjectInfo_flag__2Ctnr">수정 중</span> -->
                </div>
                <a
                  class="AppSidebarRewardProjectInfo_projectName__1Hf5o"
                  href="/web/campaign/detail/191898?preview=Y"
                  target="_blank"
                  rel="nofollow noopener noreferrer"
                  >"에코위원회" 의<br />관리페이지</a
                >
                <button
                  class="Button_button__1e2A2 Button_info__Nu98q Button_text__3KyLl Button_md__1FRMG Button_endIcon__3ZOY3 AppSidebarRewardProjectInfo_projectNumberButton__1izF_"
                  type="button"
                >
                  <span>
                    <span class="Button_children__q9VCZ"></span>
                  </span>
                </button>
              </div>
              <!-- 사이드바 아랫부분 -->
              <nav class="AppSidebarMenuList_container__199gJ">
                <div class="AppSidebarMenuList_margin__3qjoc"></div>
                <ul>
                  <li>
                    <a
                      id="slide_title"
                      class="AppSidebarMenuList_navLink__1FytL AppSidebarMenuList_disabled__3yitR"
                      href="/studio/reward/191898/settlement"
                      >사이트 관리<i
                        class="icon-lock-o AppSidebarMenuList_lockIcon__3H-rC"
                        aria-hidden="true"
                      ></i
                    ></a>
                  </li>
                  <li>
                    <a
                      aria-current="page"
                      id="slide_title"
                      class="AppSidebarMenuList_navLink__1FytL AppSidebarMenuList_active__tbFuL"
                      href="/studio/reward/191898/funding"
                      >회원 
                      <i
                        class="icon-chevron-left AppSidebarMenuList_chevronIcon__2YV-z"
                        aria-hidden="true"
                      ></i>
                    </a>
                    <ul class="AppSidebarRewardSubList_container__2zCmr">
                      <li>
                        <a
                          class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
                          href="/studio/reward/192259/funding/plan"
                          >회원정보 조회 및 목록</a
                        >
                      </li>
                      <li>
                        <a
                          class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
                          href="/studio/reward/192259/funding/screening"
                          >회원탈퇴 관리</a
                        >
                      </li>
                      <!-- <li><a class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa" href="/studio/reward/192259/funding/baseinfo">기본 정보</a>
                                </li>
                                <li><a class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa" href="/studio/reward/192259/funding/story">스토리 작성</a>
                                </li>
                                <li><a class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa" href="/studio/reward/192259/funding/condition">리워드 설계</a>
                                </li>
                                <li><a class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa" href="/studio/reward/192259/funding/policy">정책</a>
                                </li>
                                <li><a class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa" href="/studio/reward/192259/funding/makerInfo">메이커 정보</a>
                                </li>
                                <li><a class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa" href="/studio/reward/192259/funding/contractInfo">대표자 및 정산 정보</a>
                                </li> -->
                    </ul>
                  </li>
                  <li>
                    <a
                      id="slide_title"
                      class="AppSidebarMenuList_navLink__1FytL AppSidebarMenuList_disabled__3yitR"
                      href="/studio/reward/191898/settlement"
                      >게시판<i
                        class="icon-lock-o AppSidebarMenuList_lockIcon__3H-rC"
                        aria-hidden="true"
                      ></i
                    ></a>
                    <ul class="AppSidebarRewardSubList_container__2zCmr">
                      <li>
                        <a
                          class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
                          href="/studio/reward/192259/funding/plan"
                          >게시판 관리</a
                        >
                      </li>
                      <li>
                        <a
                          class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
                          href="/studio/reward/192259/funding/screening"
                          >게시물 관리</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a
                      id="slide_title"
                      class="AppSidebarMenuList_navLink__1FytL"
                      href="/studio/reward/191898/ads"
                      >배너 및 홍보</a
                    >
                    <ul class="AppSidebarRewardSubList_container__2zCmr">
                      <li>
                        <a
                          class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
                          href="/studio/reward/192259/funding/screening"
                          >배너 관리</a
                        >
                      </li>
                      <li>
                        <a
                          class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
                          href="/studio/reward/192259/funding/plan"
                          >홍보 관리</a
                        >
                      </li>
                      <li>
                        <a
                          class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
                          href="/studio/reward/192259/funding/plan"
                          >결제</a
                        >
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a
                      id="slide_title"
                      href="http://www.wadiz.kr/link/studio_makerguide"
                      class="AppSidebarMenuList_navLink__1FytL"
                      target="blank"
                      rel="nofollow noopener noreferrer"
                      >기부</a
                    >
                    <ul class="AppSidebarRewardSubList_container__2zCmr">
                      <li>
                        <a
                          class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
                          href="/studio/reward/192259/funding/plan"
                          >기부관리</a
                        >
                      </li>
                    </ul>
                  </li>
                </ul>
              </nav>
              <!-- 사이드바 끝 -->
            </div>

            <!-- 게시판 관리 -->
            <div id="content">
                <!-- 게시판 관리 제목 -->
                <div class="headingArea">
                    <div class="mTitle">
                        <h1>게시판 관리</h1>
                    </div>
                </div>
                <!-- 게시판 관리 제목 끝-->

                <!-- 게시판 목록 -->
                <form name="frm" id="frm" method="post" action="board_admin_a.php">
                    <div class="section">
                        <div class="mTitle">
                            <h2>게시판목록</h2>
                        </div>
                        <div class="mState">
                            <div class="gLeft">
                                <p class="total">추가 게시판 <strong>0</strong>개 / 총 <strong>0</strong>개</p>
                            </div>
                            
                        </div>
                        <!-- 삭제  -->
                        <div class="mCtrl typeFooter">
                            <div class="gLeft">
                                <a href="#none" class="btnNormal" onclick="delete_choice();return false;"><span><em class="icoDel"></em>삭제</span></a>
                            </div>
                        </div>
                        <!-- 삭제 끝 -->
                        <div class="mBoard gScroll gCell">
                            <table border="1" summary="" class="eChkTr">
                                <colgroup>
                                    <col class="chk">
                                    <col style="width:90px;">
                                    <col style="width:230px;">
                                    <col style="width:80px;">
                                    <col style="width:110px;">
                                    <col style="width:90px;">
                                    <col style="width:360px;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col"><input type="checkbox" class="allChk" onclick="javascript:check_all('use_board[]', this);"></th>
                                        <th scope="col">분류</th>
                                        <th scope="col">게시판제목</th>
                                        <th scope="col">게시판 ID</th>
                                        <th scope="col">권한(쓰기/읽기) <div class="cTip eSmartMode" code="BD.BE.220"></div></th>
                                        <th scope="col">새글/총갯수</th>
                                        <th scope="col">게시물 관리</th>
                                    </tr>
                                </thead>
                                <tbody class="center">
                                    <!-- 게시판 목록 한줄 -->
                                    
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="1"></td>
                                        <td>운영</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">공지사항</a>
                                        </td>
                                        <td>1</td>
                                        <td>관리자</td>
                                        <td>0/1</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <!-- 게시판 목록 한줄 끝-->
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="4"></td>
                                        <td>홍보</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">기업 홍보</a>
                                        </td>
                                        <td>4</td>
                                        <td>기업/개인</td>
                                        <td>0/0</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="6"></td>
                                        <td>일반</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">상품Q&A</a>
                                        </td>
                                        <td>6</td>
                                        <td>기업/개인</td>
                                        <td>0/1</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="5"></td>
                                        <td>일반</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">자유게시판</a>
                                        </td>
                                        <td>5</td>
                                        <td>기업/개인</td>
                                        <td>0/1</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    
                                    <!-- 게시판 목록은 추가할때마다 증가 (지금은 예시로 써둠) -->
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="4"></td>
                                        <td>홍보</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">기업 홍보</a>
                                        </td>
                                        <td>4</td>
                                        <td>기업/개인</td>
                                        <td>0/0</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="6"></td>
                                        <td>일반</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">상품Q&A</a>
                                        </td>
                                        <td>6</td>
                                        <td>기업/개인</td>
                                        <td>0/1</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="5"></td>
                                        <td>일반</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">자유게시판</a>
                                        </td>
                                        <td>5</td>
                                        <td>기업/개인</td>
                                        <td>0/1</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="4"></td>
                                        <td>홍보</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">기업 홍보</a>
                                        </td>
                                        <td>1</td>
                                        <td>기업/개인</td>
                                        <td>0/0</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="6"></td>
                                        <td>일반</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">상품Q&A</a>
                                        </td>
                                        <td>1</td>
                                        <td>기업/개인</td>
                                        <td>0/1</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="rowChk" name="use_board[]" value="5"></td>
                                        <td>일반</td>
                                        <td class="left">
                                            <a href="javascript:open_board_info('1');" class="txtLink">자유게시판</a>
                                        </td>
                                        <td>1</td>
                                        <td>기업/개인</td>
                                        <td>0/1</td>
                                        <td>
                                            <a href="javascript:open_board1( '1', '1' )" class="btnNormal"><span>글보기<em class="icoLink"></em></span></a>
                                            <a href="javascript:open_board2( '1', '1' )" class="btnNormal"><span>글삭제<em class="icoLink"></em></span></a>
                                        </td>
                                    </tr>
                                    <!-- 목록 예시 끝 -->

                                </tbody>
                            </table>
                        </div>
                        
                    </form>
                    <!-- 게시판 목록 끝 -->
                    
                    <div style="border: 0.05px solid #d9dadc;"></div>
                    </div>
                </div>
            <!-- 게시판 관리 끝 -->

</body>
</html>