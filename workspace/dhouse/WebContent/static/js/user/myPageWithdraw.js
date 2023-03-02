/**
 * 
 */


function test(){
check=$("#dropConfirm").is(":checked");

console.log(check);
/*console.log($("#btnDropOut"));*/

if(check){    
	$("#btnDropOut").css('backgroundColor', '#f66');
	$("#btnDropOut").attr("disabled", false);
	 }else{
    	$("#btnDropOut").attr("disabled", true);
 }
 }
