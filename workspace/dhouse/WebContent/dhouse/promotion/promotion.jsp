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
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/promotion/promotion.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/promotion/promotion-list.css">
<title>홍보 목록페이지</title>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/header.jsp"></jsp:include>
    <div id="whole-wrapper">
        <section class="container">
            <div class="arrow prev">&lt;</div>
            <div class="banner">
                <div><img src="${pageContext.request.contextPath}/images/user/006.png"></div>
                <div><img src="${pageContext.request.contextPath}/images/user/001.png"></div>
                <div><img src="${pageContext.request.contextPath}/images/user/002.png"></div>
                <div><img src="${pageContext.request.contextPath}/images/user/003.png"></div>
                <div><img src="${pageContext.request.contextPath}/images/user/004.png"></div>
                <div><img src="${pageContext.request.contextPath}/images/user/005.png"></div>
                <div><img src="${pageContext.request.contextPath}/images/user/006.png"></div>
                <div><img src="${pageContext.request.contextPath}/images/user/001.png"></div>
            </div>
            <div id="mark-bottom"></div>
            <div id="mark-bottom2"></div>
            <div class="arrow next">&gt;</div>
            <div class="btns">
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
                <button class="btn"></button>
            </div>
        </section>
         <!-- 테스트로 추가 해봄 -->
         <div id="under-banner">
             <div class="ranking-title">
                    <h2 class="title-text">TOP 3</h2>
                    <p class="title">
                        기부량이 가장 높은<br class="title-br">3개의 업체들을 소개합니다.
                    </p>
                </div>
                <div class="Main_inner_wrap Main_inner_wrap_2">
                 <div id="contents-wrapper">
                        <!------------------------------------------- 1 ----------------------------------------- -->
                        
                    </div>
              </div>
              <!-- 테스트 추가 -->
         </div>
        <main>
            <div id="ranking-part-wrapper">
                <div class="ranking-title">
                    <h2 class="title-text">TOP 10</h2>
                    <p class="title">
                        기부량이 가장 높은<br id="title-br">10개의 업체들을 소개합니다.
                    </p>
                </div>
                <ol id="ranking-part">
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 1</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image list-image2"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 2</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 3</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image list-image2"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 4</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 5</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image list-image2"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 6</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 7</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image list-image2"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 8</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 9</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                   <!-- 리스트 하나 시작 -->
                   <li class="top10-lists">
                    <div class="list-container">
                        <!-- 이미지 감싸는 애 -->
                        <div class="list-image-wrapper">
                            <div class="list-image list-image2"></div>
                        </div>
                        <!-- 옆에 랭킹과 내용 -->
                        <a href="#" class="list-text-wrapper">
                            <!-- ::before -->
                            <div class="ranking-top-number">
                                <span class="ranking-number">TOP 10</span>
                            </div>
                            <dl class="inner-text-wrapper">
                                <dd class="middle-text-wrapper">
                                    <span class="middle-text">
                                        마스터마인딩그룹
                                    </span>
                                </dd>
                                <dd class="bottom-text-wrapper">
                                    <span class="bottom-text">
                                        홈바&홈술 필수템! 녹지 않는 얼음 쥬얼아이스
                                    </span>
                                </dd>
                            </dl>
                        </a>
                    </div>
                   </li>
                   <!-- 리스트 하나 끝-->
                </ol>
            </div>
        </main>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/dhouse/components/footer.jsp"></jsp:include>
</body>
<script src="${pageContext.request.contextPath}/assets/js/promotion/promotion.js"></script>
</html>