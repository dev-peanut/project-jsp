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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/businessIntroduction/business-introduction-detail.css">
<title>기부기업 소개 상세</title>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/header.jsp"></jsp:include>
<main>
    <div id="whole-wrapper">
        <div id="inner-whole">
            <!-- 이미지 -->
            <div id="inner-left">
                <div id="image-wrapper">
                    <div id="image">
                        <div id="image-back"> <!-- 기업 이미지 -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- 설명 -->
            <div id="inner-right">
                <div id="text-wrapper">
                    <div id="text-top">
                        <div id="text-top-title">
                            <span id="title-text"><a href="javascript:location.href='/corp/list.corp">기업목록</a> > 기업소개</span>
                        </div>
                        <div id="under-title-wrapper">
                            <div id="under-title">
                                <span id="under-title-text">기부 기업</span>
                            </div>
                        </div>
                        <p id="p-info-title">
                            기업명
                        </p>
                        <p id="under-p-info-title">
                            마이페이지에서 작성한 기업 소개 글
                        </p>
                        <div id="top-bottom-wrapper">
                            <div id="top-bottom1">
                                <div id="top-bottom1-info">
                                    <span id="span-number">80</span>
                                    <span id="span-text">%</span>
                                </div>
                                <span id="top-bottom1-info-behind">
                                    <span id="top-bottom1-info-behind-inner">
                                        상위
                                    </span>
                                </span>
                            </div>
                            <div id="top-bottom2">
                                <p id="top-bottom2-p">
                                    대표자번호<span id="top-bottom2-p-inner"></span>
                                </p>
                                <span id="top-bottom2-span">
                                    <span id="top-bottom2-span-inner">
                                        대표자번호
                                    </span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div id="text-middle">
                        <div id="text-middle-top">
                            <div id="middle-top-left">
                                <div class="faces">
                                    <span class="face">
                                    </span>
                                    <span class="face2">
                                    </span>
                                    <span class="face3">
                                    </span>
                                    <span class="face4">
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div id="text-middle-middle">
                            <p id="text-middle-middle-top">
                                <span id="div-span-top">대표자명 </span>
                            </p>
                            <p id="text-middle-middle-bottom">
                                기본 주소
                                <br>
                                상세 주소 
                            </p>
                        </div>
                        <div id="text-middle-bottom">
                        </div>
                    </div>
                    <div id="text-bottom">

                    </div>
                </div>
            </div>

        </div>
    </div>
</main>
<div id="under-main">
    <div id="under-main-inner">
        <div id="under-main-left">
            <a href="#" id="under-left-wrapper">
                <div id="under-left">
                    <div id="under-left-top">
                        <span id="under-left-title">최근 기부 목록</span>
                    </div>
                        <div class="under-left-bottom-texts">💚이벤트💚 36,000% 달성 이벤트 + 메이커 팔로우</div>
                        <div class="under-left-bottom-texts">💚이벤트💚 36,000% 달성 이벤트 + 메이커 팔로우</div>
                        <div class="under-left-bottom-texts">💚이벤트💚 36,000% 달성 이벤트 + 메이커 팔로우</div>
                </div>
            </a>
        </div>
        <div id="under-main-right">
            <div id="under-right-wrapper">
                <div id="under-right-whole">
                    <div id="under-right-top">
                        <div id="right-top-left-wrapper">
                            <a href="#" id="right-top-left">
                                <div id="profile-wrapper">
                                    <span id="profile">

                                    </span>
                                </div>
                                <div id="right-top-left-text-wrapper">
                                    <span id="right-top-left-text">
                                        기업명
                                    </span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div id="under-right-bottom">
                        <div id="right-bottom-top">
                            <div class="right-bottom-shape"><span id="shape-star"></span></div>
                            <span class="right-bottom-text">등급</span>
                            <span class="right-bottom-text text-value">1</span>
                        </div>
                        <div id="right-bottom-middle">
                            <div class="right-bottom-shape"><span id="shape-money"></span></div>
                            <span class="right-bottom-text">누적 기부량</span>
                            <span class="right-bottom-text text-value">2500</span>
                            <span class="right-bottom-text text-value">kg</span>
                            
                        </div>
                        <div id="right-bottom-bottom">
                            <div class="right-bottom-shape"><span id="shape-person"></span></div>
                            <span class="right-bottom-text">누적 기부횟수</span>
                            <span class="right-bottom-text text-value">10</span>
                            <span class="right-bottom-text text-value">회</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<p></p>
<jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
</html>