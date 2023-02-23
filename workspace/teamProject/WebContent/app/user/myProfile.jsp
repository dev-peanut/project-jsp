<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 정보 설정</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../../assets/css/user/myProfile.css">
</head>
<body>
		<!-- 프로필 정보 설정 -->
		<div id="waccountWrap">
       		<div class="waccount-wrap">   			
       			<div id="waccountContainer">
       				<h3>프로필 정보 설정</h3>
       				<div id="tabContent1" class="tab-content">
	       				<h5>프로필 사진</h5>
	       				<div class="profileimg-wrap">
	       					<button type="button" id="resultProfileImg" class="profileimg" onclick="$('#uploadProfileImg').click();"><em id="image_container" style="background-image:url(https://static.wadiz.kr/assets/icon/profile-icon-4.png)"></em></button>
	       					<p class="setting-profileimg">
	       						<button type="button" onclick="$('#uploadProfileImg').click()" id="btn_updatePhoto">
	       							<span id="img">바꾸기</span>
	       						</button>
	       						<button type="button" onclick="deletePhoto()" id="btn_deletePhoto">삭제</button>
	       					</p>
	       				</div>
	       				<h5>회사 / 직책</h5>
       					<ul class="input-div2">
       						<li><input type="text" class="input-text" maxlength="50" id="belongsTo" placeholder="회사" value=""></li>
       						<li><input type="text" class="input-text" maxlength="50" id="position" placeholder="직책" value=""></li>
       					</ul>
	       				<h5>주소 변경</h5>
	       					<form id="shippingDetailForm">
		       					<input type="text" id="location1" name="address" value="[06236] 서울 강남구 테헤란로 146" class="input-text" onclick="Wpost(); $('#location1')[0].blur();">
		       					<input type="text" id="location2" maxlength="96" name="addressDetails" value="현익빌딩 3,4층 (신한은행건물)" class="input-text">
	       					</form>
	       				<h5>회사 소개를 해주세요.</h5>
						<div class="textarea-wrap">
		       				<textarea id="introduceme" maxlength="80"></textarea>
		       			</div>
	       				<div class="btn-bottom">
	       					<ul class="btn-div2">
	       						<li>
	       							<button type="button" class="wz button gray btn-darkgray" onclick="cancelModify()">취소</button>
	       						</li>
	       						<li>
	       							<button type="button" class="wz button primary btn-mint" onclick="modify()">확인</button>
	       						</li>
	       					</ul>
	       				</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
			      var referer = "https://www.wadiz.kr/web/mywadiz/participation";
			      var paramReferer = "";
			      var paramAnchor = "";
			      var presenteeNameV = wadiz.helper.unescapeXml('박다예');
			      var contactNumberV = wadiz.helper.unescapeXml('010-4615-2639');
			      var addressV = wadiz.helper.unescapeXml('[15802] 경기 군포시 고산로677번길 12 (산본동, 동백(우성)아파트)');
			      var addressDetailsV = wadiz.helper.unescapeXml('1305-1101');
			      var shippingMemoV = wadiz.helper.unescapeXml('');
			      var zipCodeV = wadiz.helper.unescapeXml('15802');
			
			      var $btnChangeDeliveredStatus = $('#btn-change-delivered-status');
			      var whenPayFor = "2023-03-08";
			
			      function modifyPaydetail() {
			        $('.funding-detail .done').hide();
			        $('.funding-detail .modify').show();
			        $('.funding-detail .modify').find("input[name='cardNum1']").focus();
			      }
			
			      function cancelModifyPaydetail() {
			        $('.funding-detail .done').show();
			        $('.funding-detail .modify').hide();
			        $('input[name=cardNum1]').val('');
			        $('input[name=cardNum2]').val('');
			        $('input[name=cardNum3]').val('');
			        $('input[name=cardNum4]').val('');
			        $('input[name=cardExpMM]').val('');
			        $('input[name=cardExpYY]').val('');
			        $('input[name=cardPwd]').val('');
			        $('input[name=buyerAuthNum]').val('');
			        if (isIos || isAndroid) {
			          var $topOffset = $('#fundingDetail').offset().top;
			          $(window).scrollTop($topOffset);
			        }
			      }
			
			      function modifyShippingDetail() {
			        $('.shipping-detail .done').hide();
			        $('.shipping-detail .modify').show();
			      }
			
			      function cancelModifyShippingDetail() {
			        $('.shipping-detail .done').show();
			        $('.shipping-detail .modify').hide();
			        $('#presenteeName').val(presenteeNameV);
			        $('#contactNumber').val(contactNumberV);
			        $('#location1').val(addressV);
			        $('#location2').val(addressDetailsV);
			        $('#shippingMemo').val(shippingMemoV);
			        $('#zipCode').val(zipCodeV);
			        if (isIos || isAndroid) {
			          var $topOffset = $('#shippingDetail').offset().top;
			          $(window).scrollTop($topOffset);
			        }
			      }
			
			      });
    		</script>
		</div>
</body>
</html>