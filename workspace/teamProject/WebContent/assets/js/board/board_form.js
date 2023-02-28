 /*board_form.js*/

/*사진 첨부*/
     function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          document.querySelector("div#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }


// textarea 변수
const nameData = document.querySelector('.nameData');
const weightData = document.querySelector('.weightData');
const dateData = document.querySelector('.dateData');

// 에러메세지 출력 변수
const nameWarning = document.querySelector("#name-warning");
const weightWarning = document.querySelector("#weight-warning");
const dateWarning = document.querySelector("#date-warning");

// 저장하기 버튼
const formSubmit = document.querySelector('#formsubmit');

const check = false;

console.log(nameData);
console.log(weightData);
console.log(dateData);
console.log(formSubmit);

formSubmit.addEventListener("click", function(){
    var contentInputValue = document.querySelector(".nameData").value;
    if(contentInputValue.length < 1){
		nameData.style.borderColor = "red";
    	nameWarning.style.display = "block";
        nameWarning.innerHTML = "필수 정보입니다.";
  		nameWarning.style.color = "red";
    }else{``
		nameData.style.borderColor = "#00c4c4";
		nameWarning.style.display = "none";
	}

});

formSubmit.addEventListener("click", function(){
    var contentInputValue = document.querySelector(".weightData").value;
    if(contentInputValue.length < 1){
		weightData.style.borderColor = "red";
    	weightWarning.style.display = "block";
        weightWarning.innerHTML = "필수 정보입니다.";
  		weightWarning.style.color = "red";
    }
});

formSubmit.addEventListener("click", function(){
    var contentInputValue = document.querySelector(".dateData").value;
    if(contentInputValue.length < 1){
		dateData.style.borderColor = "red";
    	dateWarning.style.display = "block";
        dateWarning.innerHTML = "필수 정보입니다.";
  		dateWarning.style.color = "red";
    }
});
