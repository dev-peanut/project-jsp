<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" style="-vh: 7.46px;" class="">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>배너 신청 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/user/banner-register2.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="shortcut icon" href="../../static/images/logo.png">
</head>
<body>
	<div class="body1"></div>
	<div id="root">
		<div id="AppLayout_Container">
			<div class="total_main">
				<!-- 본문 시작  -->
				<div id="form_container">
					<div id="form_container_margin">
						<div class="category_print">
						<ol class="category_name">
							<li class="form_category_small">마이페이지</li>
							<li class="form_category_small">배너 신청</li>
						</ol>
						<!-- 신청 버튼 -->
						<div class="food_donation_start">
							<div class="food_donation_container">
								<h2 class="food_donation_title">
								배너 신청하기
									<button id="bottom-button">
										<span id="button-inner-text">
											<span id="button-icon">
												<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__1VB4W" aria-hidden="true">
													<path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path>\
												</svg>
												<span id="button-text"> 작성 완료 </span>
												</span>
											</span>
										</span>
									</button>
								</h2>
							</div>
						</div>
						<!-- 기간 선택 -->
                      	<div class="SelectMenu1 SelectMenu2">
                       	<div class="Select1 Select2">
                        	<div class="Select_title">
	                        	<span class="DefaultValue">기간 선택</span>
	                        	<div class="MoreButton1 MoreButton2">
		                        	<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__20lDO" aria-hidden="true">
			                        	<path d="M16 9.6L26.4 20l-1.12 1.12L16 11.84l-9.28 9.28L5.6 20 16 9.6z"></path>
		                        	</svg>
                        		</div>
                        	</div>
                        </div>		
                       	<ul class="content1 content2">
                        	<div>
	                        	<li>
		                        	<div class="MenuItem" style="border-bottom-left-radius: 0px; border-bottom-right-radius: 0px;">
			                        	<div class="TitleWrapper">
				                        	<div class="ItemTitle">
					                        	<div class="ItemName">1개월 패키지</div>
				                        	</div>
			                        	</div>
			                        	<div class="Itembottom">
				                        	<div>50,000원</div>
			                        	</div>
		                        	</div>
	                        	</li>
	                        	<li>
		                        	<div class="MenuItem" style="border-bottom-left-radius: 0px; border-bottom-right-radius: 0px;">
			                        	<div class="TitleWrapper">
				                        	<div class="ItemTitle">
					                        	<div class="ItemName">2개월 패키지</div>
				                        	</div>
			                        	</div>
			                        	<div class="Itembottom">
				                        	<div>90,000원</div>
			                        	</div>
		                        	</div>
	                        	</li>
	                        	<li>
		                        	<div class="MenuItem" style="border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;">
			                        	<div class="TitleWrapper">
				                        	<div class="ItemTitle">
					                        	<div class="ItemName">4개월 패키지</div>
				                        	</div>
			                        	</div>
			                        	<div class="Itembottom">
				                        	<div>170,000원</div>
			                        	</div>
		                        	</div>
	                        	</li>
							</div>
						</ul>
					</div>
					<!-- 글 내용 - 설명란 -->
					<section class="form_section">
						<div style="max-width: 600px;">
							<div class="form_container">
								<h2 class="Section_title">배너 내용</h2>
								<div class="Section_guide"></div>
							</div>
							<div class="Section_description">기부하실 음식의 무게를 작성해주세요.(kg 기준)</div>
								<div class="Section_content"></div>
								<div class="Section_content">
								<div class="textarea_field">
								<div class="textarea_field_form">
								<div class="wide_column_1"></div>
								<div class="wide_column_2">
								<div class="wz input">
								<textarea placeholder="음식 무게" helper="[object Object]" name="storyInfo.coreMessage" rows="2" class="weightData"></textarea>
								<div id="weight-warning">필수 정보입니다</div>
								</div>
								</div>
								</div>
								</div>
							</div>
						</div>
					</section>
<section class="form_section">
<div style="max-width: 600px;">
<div class="form_container">
<h2 class="Section_title">픽업 날짜</h2>
<div class="Section_guide"></div>
</div>
<div class="Section_description">픽업차가 방문할 날짜를 작성해주세요.</div>
<div class="Section_content"></div>
<div class="Section_content">
<div class="textarea_field">
<div class="textarea_field_form">
<div class="wide_column_1"></div>
<div class="wide_column_2">
<div class="wz input">
<textarea placeholder="픽업 날짜" helper="[object Object]" name="storyInfo.coreMessage" rows="2" class="dateData"></textarea>
<div id="date-warning">필수 정보입니다</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- 사진 등록  -->
<form class="wz_form_FundingStoryFormContainer_form__326Zc_Form_form__3ASTU">
<div class="photo_submit_section"></div>
<section class="Section_container__photo">
<div style="max-width: 600px;">
<div class="Section_photo_header">
<h2 class="Section_title">사진 등록</h2>
<div class="Section_guide"></div>
</div>
<div class="Section_description">기부하실 음식의 사진을 등록해주세요.</div>
<div class="Section_content"></div>
<div class="Section_description"></div>
<div class="Section_content">
<div class="ImageField">
<div class="ImageFormField">
<div class="ImageFormField_buttonWrapper">
<label class="ImageFileButton_label">
<button type="button" class="ImageFileButton" id="photosubmit">
<i class="icon-camera-o" aria-hidden="true"></i>
등록하기
</button>
<div class="ImageFileButton_input">
<input type="file" id="image" accept="image/*" onchange="setThumbnail(event);" />
</div>
</label>
<em class="helper error"></em>
<em class="helper_ImageFormField">2MB 이하의 JPG, JPEG, GIF, PNG 파일</em>
<div class="image_space"></div>
<div id="image_container"></div>
</div>
</section>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/user/banner-register.js"></script>
</html>