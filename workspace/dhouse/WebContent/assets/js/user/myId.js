/**
 * 
 */

function checkEmail() {
    const emailWarning = document.querySelector("#email-warning");
    const emailValue = inputEmail.value;
    var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    console.log(emailValue);
    if(emailValue.length < 1){ 
        emailWarning.style.display = "none"; 
    } else if(emailPattern.test(emailValue)) {
        emailWarning.style.display = "none"; 
    } else {
        emailWarning.innerHTML = "이메일 주소를 다시 확인해주세요.";
        emailWarning.style.color = "red";
        emailWarning.style.display = "block";
    }
}