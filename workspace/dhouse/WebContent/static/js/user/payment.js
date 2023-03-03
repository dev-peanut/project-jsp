/**
 * 
 */
/*전체 체크 박스*/


// 체크박스 개별 선택


const $Checkbox_icon = $(".Checkbox_icon");
var check=false;

$(".Checkbox_icon").on("click", $(".Checkbox_icon"), function(){
	if(check){
	$("#checkboxmint").css('opacity','1');
	$("#checkboxmint").css('backgroundColor', '#00c4c4');}
	else{
		
	}
	
});

const $checkBox = $(".Checkbox1");
const $checkBoxImage = $(".withIcon");
let check = false; // 전체동의 미체크 상태

$checkBox.on("click", function(){
    console.log("체크박스 들어옴.")
    if (!check) {
        console.log("true 체크박스 들어옴.")
        // document.querySelector("#check-box").style.background = "black";
        // $("#check-box").css("display", "block");
        $checkBoxImage.css("display", "block");
        check = true;
        completeAllCheck();
        return false;
    } else {
        console.log("false 체크박스 들어옴.")
        // document.querySelector("#check-box").style.display = "none";
        $checkBoxImage.css("display", "none");
        check = false;
        completeAllCheck();
        return false;
    }
});