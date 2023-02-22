<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="" translate="no">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>가전제품 본문 페이지</title>
<link rel="stylesheet" href="../../assets/css/board/board_community_detail.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">    
<link rel="shortcut icon" href="https://static.wadiz.kr/assets/icon/favicon.ico">
</head>
<body>
<div id="page-container">
<div class="black-bg-wrap" style="display:none;"></div>
		<jsp:include page="../component/header.jsp"></jsp:include>
			<!-- 헤더 적용  -->
		<div id="newContainer">
			<div id="wcommunityWrap">
				<div class="wcommunity-wrap">
					<div class="wcommunity-top">
						<h2><a href="/web/wcast/main"><em class="logo_wcommunity">wadiz</em></a></h2> <!-- 배너 내 문구  -->
						<div id="wcastTopPC" class="wcommunity-topmenu"></div> 
					</div> 
						<!-- 배너 끝-->
						
					<div class="wcommunity-content-wrap">
						<div class="wcommunity-section1"> <!-- 게시글 리스트 전체  -->
    					<div class="wcommunity-detail-info">
	    					<div class="story-info">
	    						<p class="board">가전제품 기부</p>
								<em class="category">서포터팁</em>
								<p class="title">노트북, 마우스, 헤드폰 기부합니다 </p>
								<p class="info"><em class="editor">와디즈 캐스트  (info@wadiz.kr)</em><em class="date">22.06.29</em><em id="topSympCount" class="symp">0</em></p>
								
							</div>
    					</div>
    					<div class="wcommunity-detail-content">
    						<div class="inner-contents">
    							<p>새 제품을 선물받아 기부합니다. 역삼역 3번 출구로 오실 분</p>
    							<p><div class="story-img" style="background-image: url(../../assets/img/notebook.jpg)"></div><br>
    						</div>
    						<div class="attach-list">
    							<ul>
    								
    							</ul>
    						</div>
    					</div>
    				</div>	<section1>

						<!-- 우측 사이드바  -->
						<div class="wcommunity-section2">
							<div class="inner-wrap"> 
							<!-- 캐스트 검색하기 시작 -->
							<div class="wcommunity-search-area sub-page">
	    						<input id="searchText" name="searchText" type="text" placeholder="캐스트 검색하기">
	    						<button type="button" class="btn-search" onclick="searchInAll()"></button>
	    					</div>
	    					
								<div class="wcommunity-detail-editor">
	    						<a href="#this" onclick="javascript:searchByUserName('info@wadiz.kr')">
		    						<h4><em>작성자</em> 개인회원 1 </h4>
		    						<div class="editor-info">
		    							<em class="photo" style="background-image:url(https://static.wadiz.kr/assets/icon/apple-touch-icon.png)"></em>
		    							<p class="summary">와디즈 캐스트, 좋은 사람들과 더 좋은 세상을 꿈꿉니다.  </p>
		    						</div>
	    						</a>
	    					</div> <!-- 작성자 소개 -->

								<div class="wcommunity-best-list detail">
	    						<h4>와디즈 캐스트 님의 다른 글</h4>
	    						<ol> 
	    								<li><em>1</em><p class="title"><a href="/web/wcast/detail/8394">[투명성 보고서] 2022년 12월 투명성 보고서 - 주요 가전제품 기부 데이터를 중심으로 #믿고가전제품 기부하는와디즈</a></p></li>
	    								<li><em>2</em><p class="title"><a href="/web/wcast/detail/8380">[투명성 보고서] 2022년 11월 투명성 보고서 - 주요 가전제품 기부 데이터를 중심으로 #믿고가전제품 기부하는와디즈</a></p></li>
	    								<li><em>3</em><p class="title"><a href="/web/wcast/detail/8358">[투명성 보고서] 2022년 10월 투명성 보고서 - 주요 가전제품 기부 데이터를 중심으로 #믿고가전제품 기부하는와디즈</a></p></li>
	    								<li><em>4</em><p class="title"><a href="/web/wcast/detail/8329">[투명성 보고서] 2022년 9월 투명성 보고서 - 주요 가전제품 기부 데이터를 중심으로 #믿고가전제품 기부하는와디즈</a></p></li>
	    								<li><em>5</em><p class="title"><a href="/web/wcast/detail/8307">[투명성 보고서] 2022년 8월 투명성 보고서 - 주요 가전제품 기부 데이터를 중심으로 #믿고가전제품 기부하는와디즈</a></p></li>
	    						</ol>
	    					</div>
	    					
								<div class="btn-wrap">
									<a href="/web/winvest/main" class="btn-db-blue">홍보하기 페이지 바로가기</a>
								</div> 
								
								

		    					
		    					
							</div>   <!-- 캐스트 검색  -->
						</div>  <!-- section2   -->
					</div>  <!--wcommunity-content-wrap  -->
					
							    					<div class="wcommunity-detail-bottom">
	    			<div class="wcommunity-comment-wrap">
	    				<div class="wcommunity-share-area">
	    					<button type="button" class="btn-symp"><span id="sympCount">0</span></button>
	    					<!-- <button class="btn-symp">234</button> -->
	    					<div class="btn-share">
	    						<button class="kakao" onclick="window.wadiz.share.kakao()"></button>
	    						<button class="facebook" onclick="window.wadiz.share.facebook();"></button>
	    						<button class="twitter" onclick="window.wadiz.share.twitter();"></button>
	    					</div>
	    				</div>
	    				
	    				<div class="wcommunity-comment">
                            <div class="wz-message-box" style="margin-top:0">
                              <p>와디즈 서비스의 건전한 운영을 위하여 운영기준 상 문제의 소지가 있거나 게시물에 관련이 없는 악의적인 댓글은 임의로 삭제될 수 있습니다.</p>
                            </div>
		    				<p class="comment-num"><em>0</em>개의 댓글이 달려있습니다.</p>
		    				<div class="main-comment">
			    				<textarea placeholder="댓글을 입력하세요." id="commentCnt" name="contents" style="overflow-y: hidden; height: 78px; resize: none;"></textarea>
			    				<div class="btn-wrap">
			    					<button id="reply-button" type="button" class="btn-pd-blue" onclick="ajaxRegistComment()">댓글달기</button>
			    				</div>
		    				</div>

		    				
		    				<div class="comment-box">
			   						<ul id="commentList">
			   						</ul>
		    				</div>
		    			</div>
		    			<div class="btn-wrap">
		    				<button type="button" id="moreComments" class="btn-pd-transp" style="display: none;">댓글 더 보기</button>
		    				<button type="button" id="hideComments" class="btn-pd-transp" style="display:none;">댓글 닫기</button>
		    			</div>
	    			</div><!-- //wcommunity-comment-wrap -->
	    			
		    			<div class="wcommunity-other-story">
		    				<h4><em>가전제품 기부</em> 카테고리의 다른글</h4>
		    				<div class="wcommunity-webzine-list">
		    						
			    						<li>
			    							<a href="/web/wcast/detail/8234">
			    								<div class="wcommunity-story">
			    									<div class="story-info">
			    										<em class="category">메이커팁</em>
			    										<p class="title2"> 서포터 유입 데이터는 어디서 볼 수 있나요?</p>
			    										<p class="summary">내 프로젝트에 들어오는 서포터들의 모든 것이 궁금할 때! 메이커 스튜디오 대시보드를 확인하세요.</p>
			    										<p class="info"><em class="editor">와디즈 캐스트 </em><em class="date">22.06.24</em><em class="symp">3</em></p>
			    									</div>
			    									<div class="img-wrap"><div class="story-img" style="background-image:url(https://cdn.wadiz.kr/ft/images/green001/2022/0624/20220624111515429_53.jpg/wadiz/resize/604/format/jpg/quality/80/optimize)"></div></div>
			    								</div>
			    							</a>
			    						</li>
		    						
		    						
			    						<li>
			    							<a href="/web/wcast/detail/8244">
			    								<div class="wcommunity-story">
			    									<div class="story-info">
			    										<em class="category">서포터팁</em>
			    										<p class="title2"> &lt;종이의 집 : 공동경제구역&gt; 과몰입러를 위한 종합선물세트를 소개합니다!</p>
			    										<p class="summary">넷플릭스 종이의 집 : 공동경제구역 공식 굿즈를 지금 바로 확인하세요!</p>
			    										<p class="info"><em class="editor">와디즈 캐스트 </em><em class="date">22.06.29</em><em class="symp">1</em></p>
			    									</div>
			    									<div class="img-wrap"><div class="story-img" style="background-image:url(https://cdn.wadiz.kr/ft/images/green001/2022/0627/20220627175600117_113.jpg/wadiz/format/jpg/quality/80/optimize)"></div></div>
			    								</div>
			    							</a>
			    						</li>
		    						</ul>
		    					</div><!-- //wcommunity-webzine-list -->
			    				<div class="btn-wrap">
			    					<button type="button" onclick="location.href='/web/wcast/list/BRD0000013?cPage=1'" class="btn-pd-transp">카테고리 더 보기</button>
			    			</div>
		    			</div><!-- //wcommunity-other-story -->
    			</div> <!--detail bottom  -->
				</div> <!-- wcommunity-wrap -->
			</div>  <!-- wcommunityWrap -->
		</div> <!-- newContainer -->
		</div> <!-- page-contatiner -->
	</body>
</html>