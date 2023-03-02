/**
 * 
 */


const $emailChangeBtn = $("changebutton")
const $inputEmail = $("userEmail");

$inputEmail.addEventListener("click", function(){
		$emailChangeBtn.attr("disabled", false);
	});
	
	
	

// 이메일 변수
const $emailInput = $("#userEmail");
// 이메일 에러 변수
const $emailWarning = $(".error-text");
let emailFlag = false;
// 이메일 정규식 이벤트 사용 및 함수
$emailInput.on("blur", function() {
    var $emailInputVal = $emailInput.val();
    var emailInputVal = $emailInput.val();
    var $emailWarningVal = $emailWarning.val();

    var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    
    // $nicknameInput.css("border-color", "#f66");
    // $nicknameInput.css("border-color", "#dde2e6");

    if($emailInputVal.length < 1){ 
        $emailWarning.text("이메일을 입력해주세요.");
        $emailWarning.css("display", "block");
        $emailInput.css("border-color", "#f66");
        emailFlag = false;

    } else if(!emailPattern.test($emailInputVal)) {
        $emailWarning.text("이메일 주소를 다시 확인해주세요.");
        $emailWarning.css("display", "block");
        $emailInput.css("border-color", "#f66");
        emailFlag = false;
    } else {
        $emailWarning.css("display", "none");
        $emailInput.css("border-color", "#dde2e6");
        emailFlag = true;
    }
    completeAllCheck();
});
