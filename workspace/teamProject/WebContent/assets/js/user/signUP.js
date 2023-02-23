// 아이디 변수 - 인풋
const $identification = ${"#identification"};
const $identificationWarning = ${".identification-error"};

#identification.on("blur", function(){
    var #identificationVal = $identification.val();

    $identificationWarning.css("style", "#e54545");
    // 검증에 사용할 정규식 변수 regExp에 저장
    
    var regExp =  /^[A-Za-z0-9]([-_.]?[0-9a-z]){6,20}$/;
    if(#identificationVal.length < 1){
        $identificationWarning.css("display", "block");
    } else if (#identificationVal.match(regExp) == null) {
        //정규식에 맞지않으면 return null
        $identificationWarning.text() = "6~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
    }
    else {
        $identificationWarning.css("display", "none");
    }
});

// 비밀번호 변수
const $passwordInput = $("#password-input");
// 비밀번호 에러 변수
const $passwordWarning = $(".password-error");
// 비밀번호 확인 변수
const $passwordCheckInput = $(".re-input-password-container");
// 비밀번호 확인 에러 변수
const $passwordCheckWarning = $(".recheck-password-error");


// 최소 8자입니다.
// 영문,숫자,특수문자를 조합한 8자 이상
// 최대 20자입니다.

// 동일한 비밀번호를 입력해주세요.

// 비밀번호 정규식 이벤트 사용 및 함수
$passwordInput.on("blur", function(){
    var $passwordInputValue = $passwordInput.val();
    var num = passwordInputValue.search(/[0-9]/g);
    var eng = passwordInputValue.search(/[a-z]/ig);
    var spe = passwordInputValue.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    
    if(passwordInputValue.length < 8){
        $passwordWarning.text("최소 8자입니다.");
        $passwordWarning.css("display", "block");
    } else if(passwordInputValue.length < 8 || passwordInputValue.length > 20){
        $passwordWarning.text("영문,숫자,특수문자를 조합한 8자 이상");
        $passwordWarning.css("display", "block");
        return false;
    }else if(passwordInputValue.search(/\s/) != -1){
        $passwordWarning.text("영문,숫자,특수문자를 조합한 8자 이상");
        $passwordWarning.css("display", "block");
        return false;
    }else if(num < 0 || eng < 0 || spe < 0 ){
        $passwordWarning.text("영문,숫자,특수문자를 조합한 8자 이상");
        $passwordWarning.css("display", "block");
        return false;
    }else {
        passwordWarning.style.display = "none";
        return true;
    }
});

// 비밀번호 확인 정규식 이벤트 사용 및 함수
$passwordCheckInput.on("blur", function(){
    var $passwordCheckInputValue = $passwordCheckInput.val();
    if($passwordCheckInputValue.length < 1){
        $passwordCheckWarning.text("동일한 비밀번호를 입력해주세요.");
        $passwordCheckWarning.css("display", "block");
        return false;
    } else if(passwordCheckInput.value == passwordInput.value){
        passwordCheckWarning.style.display = "none";
        return true;
    } else {
        $passwordCheckWarning.text("동일한 비밀번호를 입력해주세요.");
        $passwordCheckWarning.css("display", "block");
        return false;
    }
});