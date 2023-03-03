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

