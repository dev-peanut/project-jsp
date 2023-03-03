/*myProfile.js*/

function readURL(input) {
  if (input.files && input.files[0]) {
	alert('들어옴');
    var reader = new FileReader();
    reader.onload = function(e) {
      document.getElementById('preview').src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
  } else {
    document.getElementById('preview').src = "";
  }
}

/*myProfile.js*/

     function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("#resultProfileImg");
          img.setAttribute("src", event.target.result);
          document.querySelector("em#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }




    /*        $(document).ready(function() {
               if (0 < "0") {
               }

               var defaultPhotoUrl = 'https://www.wadiz.kr/wwwwadiz/green001/sns_profile_pics/20230216104849370_2668223529.jpg';
               if (defaultPhotoUrl == undefined || defaultPhotoUrl == '') {
                  $('#btn_updatePhoto').text('프로필 사진 등록');
                  $('#btn_deletePhoto').hide();
               }
         
            $('#uploadProfileImg').on('change', function () {
               readFile(this);
               this.value = null;
            });

            // toBlob ployfill
            // https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/toBlob
            if (!HTMLCanvasElement.prototype.toBlob) {
                Object.defineProperty(HTMLCanvasElement.prototype, 'toBlob', {
                 value: function (callback, type, quality) {

                   var binStr = atob( this.toDataURL(type, quality).split(',')[1] ),
                       len = binStr.length,
                       arr = new Uint8Array(len);

                   for (var i = 0; i < len; i++ ) {
                    arr[i] = binStr.charCodeAt(i);
                   }

                   callback( new Blob( [arr], {type: type || 'image/png'} ) );
                 }
                });
               }

            $('#registProfileImg').on('click', function() {
               if (window.cropper) {
                  cropper.getCroppedCanvas({ width: 300, height: 300 }).toBlob(function (blob) {
                     ajaxChangeProfilePhoto(blob, cropper._fileName);
                     closeLyPop('profileImg');
                     $('#profileimgCrop').empty();
                  });
               }
               return false;
            });
         });

            function readFile(input) {
               var file = input.files && input.files[0];
              if (file) {
                 var extPattern = /\.(png|jpe?g|gif)$/i;
                 if (!extPattern.test(file.name)) {
                    alertify.alert('프로필 사진은 이미지(JPG,PNG,GIF)만 등록이 가능합니다.');
                 } else {
                    showProfilePictureEditor(file);
                 }
             }
         }

         function showProfilePictureEditor(file) {
            if (!file) return;
            var crop = $('#profileimgCrop');
            loadImage(
               file,
               function (img) {
                  crop.html(img);
                  var isTouchEvent = 'ontouchstart' in window;
                  var touchedOptions = isTouchEvent ? {
                     guides: false,
                     cropBoxMovable: false,
                     cropBoxResizable: false
                  } : {};
                  if (isTouchEvent) {
                     crop.addClass('touch-mode');
                  }
                  window.cropper = new Cropper(img, $.extend({
                     aspectRatio: 1,
                     viewMode: 1,
                     dragMode: 'move',
                     minContainerWidth: 240,
                     minContainerHeight: 240,
                     autoCropArea: 1
                  }, touchedOptions));
                  cropper._fileName = file.name;
                  showLyPop('profileImg');
               },
               { orientation: true } // Options
            );
         }

         function ajaxChangeProfilePhoto(newImage, fileName){
            var formData = new FormData();
            formData.append('uploadfile1', newImage, fileName);
            $.ajax({
               url: '/web/waccount/ajaxChangeProfilePhoto',
               type: 'POST',
             contentType: false,
             processData: false,
               data: formData,
               success: function(result) {
                  var jsonObj = $.parseJSON(result);
                  var getData = jsonObj.data;
                  $('#resultProfileImg em, #myMenuNav em.profile-img, #headerBar em.profile-img').css('background-image', 'url('+getData.photoUrl+')');
                  $('#btn_updatePhoto').text('바꾸기');
                  $('#btn_deletePhoto').show();
                  wadiz.toast("프로필 사진이 등록되었습니다.");
                  setTimeout(function () {
                     location.reload();
                 }, 1500);
               }
            });
         }

         function deletePhoto() {
             alertify.confirm("프로필 사진을 삭제 하시겠습니까?", function (e) {
                  if (e) {
                     $.ajax({
                     url: '/web/waccount/ajaxDeleteProfilePhoto',
                     type: 'POST',
                   contentType: false,
                   processData: false,
                   data:{},
                     success: function(result) {
                        alertify.alert("프로필 사진이 삭제되었습니다.");
                        $('#resultProfileImg em').css('background-image', 'url(/resources/static/img/common/img_blank.png)');
                        $('#btn_deletePhoto').hide();
                        $('#btn_updatePhoto').text('프로필 사진 등록');
                     }
                  });
                  }
             });
         }

         function cancelModify() {
             alertify.confirm("취소 시, 설정하신 프로필 정보가 적용되지 않습니다.<br>취소하시겠습니까?", function (e) {
                  if (e) {
                  var myTarget = '';
                  wdzLink.close("/web/wmypage/myprofile/fundinglist/"+myTarget);
                  }
             });
         }

         function modify() {
            var interestCodeList = new Array();
            $('input:checkbox[name=interestGroup]:checked').each( function(index, checkbox) {
               interestCodeList.push($(this).val());
            });

            if (0 < interestCodeList.length && interestCodeList.length < 5) {
               alertify.alert("관심사는 5개 이상 선택하셔야 합니다.");
               return false;
            }

            var modifyDatas = {};
            modifyDatas.interestCodeList = interestCodeList;
            modifyDatas.belongsTo = $('#belongsTo').val();
            modifyDatas.position = $('#position').val();
            modifyDatas.school = $('#school').val();
            modifyDatas.major = $('#major').val();
            modifyDatas.introduceme = $('#introduceme').val();
            modifyDatas.mainActivityCityCode = $('#city').val();
            modifyDatas.mainActivityRegionCode = $('#region').val();

            Wmask.on({spinner: true});
            $.ajaxSettings.traditional = true;
                ajax.post('/web/wmypage/myprofile/ajaxModifyProfile', modifyDatas)
                .done(function(result) {
                    if (result.code == "ERR0000") {
                       alertify.alert("정보 수정중 오류가 발생했습니다.");
                       return false;
                    }
                    else {
                       alertify.alert("프로필 설정이 성공적으로 변경되었습니다.", function (e) {
                          if (e) {
                             var myTarget = '';
                             wdzLink.close("/web/wmypage/myprofile/fundinglist/"+myTarget);
                          }
                       });
                    }
                })
                .fail(function(err) {
                    alertify.alert('정보 수정중 오류가 발생했습니s다.');
                })
                .always(function() {
                   Wmask.off();
                });
<<<<<<< HEAD
			}*/
			
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                document.querySelector("#corpAddress").value = data.address; // 주소 넣기
                document.querySelector("input[name=corpAddressDetail]").focus(); //상세입력 포커싱
            }
        }).open();
    }

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

=======
         }*/
      
>>>>>>> project/master
