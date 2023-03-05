/*board_community_write*/

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
const titleData = document.querySelector('.titleData');
const contentData = document.querySelector('.contentData');

// 에러메세지 출력 변수
const titleWarning = document.querySelector("#title-warning");
const contentWarning = document.querySelector("#content-warning");

// 저장하기 버튼
const formSubmit = document.querySelector("#bottom-button");

console.log(titleData);
console.log(contentData);

formSubmit.addEventListener("click", function(){
    var contentInputValue = document.querySelector(".titleData").value;
    if(contentInputValue.length < 1){
		titleData.style.borderColor = "red";
        titleWarning.innerHTML = "필수 정보입니다.";
    	titleWarning.style.display = "block";
  		titleWarning.style.color = "red";
    }
});

formSubmit.addEventListener("click", function(){
    var contentInputValue = document.querySelector(".contentData").value;
    if(contentInputValue.length < 1){
		contentData.style.borderColor = "red";
        contentWarning.innerHTML = "필수 정보입니다.";
    	contentWarning.style.display = "block";
  		contentWarning.style.color = "red";
    }
});
 