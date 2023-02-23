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
	       					<button type="button" id="resultProfileImg" class="profileimg" onclick="$('#uploadProfileImg').click();"><em style="background-image:url(https://static.wadiz.kr/assets/icon/profile-icon-4.png)"></em></button>
	       					<p class="setting-profileimg">
	       						<button type="button" onclick="$('#uploadProfileImg').click()" id="btn_updatePhoto">
	       							<span>바꾸기</span>
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
			<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
			    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
			    function sample4_execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			                var roadAddr = data.roadAddress; // 도로명 주소 변수
			                var extraRoadAddr = ''; // 참고 항목 변수
			
			                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                    extraRoadAddr += data.bname;
			                }
			                // 건물명이 있고, 공동주택일 경우 추가한다.
			                if(data.buildingName !== '' && data.apartment === 'Y'){
			                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                }
			                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			                if(extraRoadAddr !== ''){
			                    extraRoadAddr = ' (' + extraRoadAddr + ')';
			                }
			
			                // 우편번호와 주소 정보를 해당 필드에 넣는다.
			                document.getElementById('sample4_postcode').value = data.zonecode;
			                document.getElementById("sample4_roadAddress").value = roadAddr;
			                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
			                
			                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
			                if(roadAddr !== ''){
			                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
			                } else {
			                    document.getElementById("sample4_extraAddress").value = '';
			                }
			
			                var guideTextBox = document.getElementById("guide");
			                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
			                if(data.autoRoadAddress) {
			                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
			                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
			                    guideTextBox.style.display = 'block';
			
			                } else if(data.autoJibunAddress) {
			                    var expJibunAddr = data.autoJibunAddress;
			                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
			                    guideTextBox.style.display = 'block';
			                } else {
			                    guideTextBox.innerHTML = '';
			                    guideTextBox.style.display = 'none';
			                }
			            }
			        }).open();
			    }
			</script>
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