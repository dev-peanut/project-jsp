/*payment*/

$(".PaymentTerms").on("click", "#check_all", function () {
  var checked = $(this).is(":checked");

  if(checked){
      $(this).parents(".PaymentTerms").find('input').prop("checked", true);
  } else {
      $(this).parents(".PaymentTerms").find('input').prop("checked", false);
  }
});



// 체크박스 개별 선택
$(".PaymentTerms").on("click", ".Checkbox1 Checkbox2 Checkbox3", function() {
    var is_checked = true;

    $(".PaymentTerms .Checkbox1 Checkbox2 Checkbox3").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check_all").prop("checked", is_checked);
});

