<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>관리자 페이지</title>
    <link rel="stylesheet" href="../../assets/css/admin/admin_user.css" />
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

          <!-- 회원탈퇴 조회 -->
          <div id="content">
            <form name="mform" method="post" onsubmit="return checkSrchFrm();">
              <!-- 회원 탈퇴 조회 검색박스-->
              <div class="headingArea">
                <div class="mTitle">
                  <h1>회원 탈퇴 관리</h1>
                </div>
              </div>

              <!-- 회원탈퇴 조회 input칸  -->
              <div class="section" id="QA_profile1">
                <div class="optionArea">
                  <div class="mOption" style="display: block">
                    <table border="1" >
                      <caption>
                        회원정보 조회
                      </caption>
                      <colgroup>
                        <col style="width: 145px" />
                        <col style="width: auto" />
                        <col style="width: 145px" />
                        <col style="width: auto" />
                      </colgroup>
                      <ta>
                        <tr>
                          <th scope="row">아이디</th>
                          <td colspan="3">
                            <input
                              type="text"
                              name="type"
                              value=""
                              class="fText"
                              style="width: 130px"
                            />
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">탈퇴유형</th>
                          <td colspan="3">
                            <input type="hidden" id="grp_sel" name="grp_sel" value="0" />
                            <select name="group_no" onchange="checkGroup(this)" class="fSelect">
                              <option value="" selected="selected">전체</option>
                              <option value="1">일반탈퇴</option>
                              <option value="2">강제탈퇴</option>
                            </select>
                          </td>
                        </tr>
                        
                        <tr>
                          <th scope="row" >
                            기간
                          </th>
                          <td  colspan="3">
                            <a href="#none" class="btnDate selected" title="0"><span>오늘</span></a> 
                            <a href="#none" class="btnDate" title="7"><span>7일</span></a>
                            <a href="#none" class="btnDate" title="30"><span>1개월</span></a>
                            <a href="#none" class="btnDate" title="93"><span>3개월</span></a>
                            <a href="#none" class="btnDate" title="365"><span>1년</span></a>
                            <input type="text" id="startDate" name="start_date" class="fText gDate" value="2023-02-21" readonly="readonly">
                            <a href="#none" id="btnStartCalendar" class="btnIcon icoCal"><span>달력보기</span></a>
                            ~
                            <input type="text" id="endDate" name="end_date" class="fText gDate" value="2023-02-21" readonly="readonly">
                            <a href="#none" id="btnEndCalendar" class="btnIcon icoCal"><span>달력보기</span></a>
                          </td>
                        </tr>
                        
                        </table>
                    </div>
                    <!-- 검색버튼 -->
                    <div class="mButton gCenter">
                        <a href="#none" onclick="doSrchFrm();" class="btnSearch"><span>검색</span></a>
                    </div>
                    <!-- 검색버튼 끝 -->
                </div>

                <!-- 회원 목록 -->
                <div class="mTitle">
                  <h2>탈퇴 회원 목록</h2>
                </div>
                <div class="mState">
                  <div class="gLeft">
                      <p class="total">
                      [총 회원수 <strong>0</strong>명]
                      검색결과 <strong>0</strong>건
                      </p>
                   </div>
                </div>
                <div class="mCtrl typeHeader">
                  <div class="gLeft">
                       <a href="#none" onclick="delete_choice()" class="btnNormal"><span> 탈퇴</span></a>
                   </div>
                 </div>

                    <!-- 목록 표, 등록일, 이름 등등 -->
                    <div class="mBoard gScroll gCellNarrow typeList">
                        <table border="1" summary="" class="eChkColor">
                            <colgroup>
                                <col class="chk">
                                <col style="width:150px">
                                <col style="width:200px;">
                                <col style="width:200px;">
                            </colgroup>

                            <thead>
                                <tr>
                                    <th scope="col"><input type="checkbox" onclick="check_all('use_check[]', this);" class="allChk">
                                    </th>
                                    <th scope="col">
                                        <strong class="array ">
                                            <span onclick="submitSearch('member_id', '')">아이디</span>
                                        </strong>
                                    </th>
                                    <th scope="col">
                                        <strong class="array ">
                                            <span onclick="submitSearch('group_name', '')">회원 탈퇴일</span>
                                        </strong>
                                    </th>
                                    <th scope="col">
                                    <strong class="array ">
                                        탈퇴사유
                                      </strong>
                                    </th>
                                </tr>
                            </thead>
                        </table>
                        <p class="empty" style="display:block;">검색된 회원 내역이 없습니다.</p>
                       
                    
                </div>
                <!-- 회원 목록 끝 -->
                
                
                
                
                
            </form>
        </div>
    </div>
    
    <!-- 회원정보 조회 끝 -->
</div>
</div>
</div>
  </body>
</html>
