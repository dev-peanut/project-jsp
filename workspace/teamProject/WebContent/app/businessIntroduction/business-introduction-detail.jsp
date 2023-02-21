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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/businessIntroduction/business-introduction-detail.css">
    <title>기부기업 소개 상세</title>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/app/components/header.jsp"></jsp:include>
    <main>
        <div id="whole-wrapper">
            <div id="inner-whole">
                <!-- 이미지 -->
                <div id="inner-left">
                    <div id="image-wrapper">
                        <div id="image">
                            <div id="image-back">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 설명 -->
                <div id="inner-right">
                    <div id="text-wrapper">
                        <div id="text-top">
                            <div id="text-top-title">
                                <span id="title-text">뷰티</span>
                            </div>
                            <div id="under-title-wrapper">
                                <div id="under-title">
                                    <span id="under-title-text">펀딩</span>
                                </div>
                            </div>
                            <p id="p-info-title">
                                [14억 아렌시아] 미백세럼 끝판! 피부에 형광등키는 옥풀세럼
                            </p>
                            <p id="under-p-info-title">
                                "내 속살은 원래 하얘요." 형광등처럼 피부를 밝히고 주름을 피는 옥풀세럼. 진귀한 옥색 풀들을 더해 피부는 더욱 밝고, 투명하고, 탱글하게 만들어주는 아렌시아의 옥풀세럼!
                            </p>
                            <div id="top-bottom-wrapper">
                                <div id="top-bottom1">
                                    <div id="top-bottom1-info">
                                        <span id="span-number">32,079</span>
                                        <span id="span-text">%달성</span>
                                    </div>
                                    <span id="top-bottom1-info-behind">
                                        <span id="top-bottom1-info-behind-inner">
                                            14일 남음
                                        </span>
                                    </span>
                                </div>
                                <div id="top-bottom2">
                                    <p id="top-bottom2-p">
                                        160,397,100<span id="top-bottom2-p-inner">원</span>
                                    </p>
                                    <span id="top-bottom2-span">
                                        <span id="top-bottom2-span-inner">
                                            1,818명 참여
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
                                    <span id="div-span-top">215 </span>
                                    명이 지지서명 했어요
                                </p>
                                <p id="text-middle-middle-bottom">
                                    메이커의 멋진 이야기를 세상에 알려주세요.
                                    <br>
                                    지지서명을 공유하시면 
                                    <a href="#" id="text-middle-a">
                                        포인트를 드려요
                                    </a>
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
</body>
</html>