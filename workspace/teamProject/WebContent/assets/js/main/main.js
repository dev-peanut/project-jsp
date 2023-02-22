/* main.jsp */
HTMLCollection.prototype.forEach = Array.prototype.forEach;
const banner = document.querySelector("div.banners");
const imageDiv = document.querySelectorAll("div.banners div.banner");
const lastImageDiv = document.createElement("div");
const firstImageDiv = document.createElement("div");
const next = document.querySelector("div.next");
const prev = document.querySelector("div.prev");
const buttons = document.querySelectorAll(".buttons button");
const $bannerActive = $(".banner-active");
const bannerPercentage = (100 / imageDiv.length);

let checkArrow = false;
let count = 1;
let auto = setInterval(autoSlide, 2000);
let temp = buttons[0];

// $bannerActive.width(`${bannerPercentage}%`); /* 배너 바 처음 퍼센트 */

HTMLCollection.prototype.forEach = Array.prototype.forEach;
buttons.forEach(button => {
    button.addEventListener("click", () => {
        clearInterval(auto);
        count = parseInt(button.innerHTML);
        changeButtonStyle();
        banner.style.transition = "transform 0.3s";
        banner.style.transform = `translate(${-1519 * count}px)`;
        auto = setInterval(autoSlide, 2000);
    });
});
console.log(imageDiv[5]);
imageDiv.forEach((div, i) => console.log(div, i));
imageDiv.forEach((div, i) => div.style.backgroundImage = `url(/images/main/00${i+1}.jpg)`);

banner.appendChild(lastImageDiv);

banner.insertBefore(firstImageDiv, document.querySelector("div.banners div.banner"));
firstImageDiv.style.backgroundImage = `url(/images/main/00${imageDiv.length}.jpg)`

banner.style.transform = `translate(-1519px)`;






function changeButtonStyle() {
    if(temp){
        temp.style.background = "white";
        temp.style.color = "black";
    }
    buttons[count - 1].style.background = "black";
    buttons[count - 1].style.color = "white";
    temp = buttons[count - 1];
    
    
}

function autoSlide(){
    
    banner.style.transition = "transform 0.3s";
    banner.style.transform = `translate(${-1519 * ++count}px)`;
    
    console.log(count);
    if(count == 7) {
        count = 1;
        setTimeout(function(){
            banner.style.transition = "transform 0s";
            banner.style.transform = `translate(${-1519}px)`; /*bannerWidth*/
        }, 300);
    }
    $bannerActive.css("width", `${bannerPercentage * count}%`); /* 배너 바 현재 퍼센트 */
    changeButtonStyle();
    
}

prev.addEventListener("click", function(){
    if(checkArrow){return;}
    checkArrow = true;
    clearInterval(auto);
    banner.style.transition = "transform 0.3s";
    banner.style.transform = `translate(${-1519 * --count}px)`;
    if(count == 0) {
        count = 6;
        setTimeout(function(){
            banner.style.transition = "transform 0s";
            banner.style.transform = `translate(${-1519 * (imageDiv.length)}px)`;
        }, 300);
    }
    changeButtonStyle();
    auto = setInterval(autoSlide, 2000);
    setTimeout(()=>{checkArrow = false}, 300);
});

next.addEventListener("click", function(){
    if(checkArrow){return;}
    checkArrow = true;
    clearInterval(auto);
    banner.style.transition = "transform 0.3s";
    banner.style.transform = `translate(${-1519 * ++count}px)`;
    if(count == 7) {
        count = 1;
        setTimeout(function(){
            banner.style.transition = "transform 0s";
            banner.style.transform = `translate(${-1519}px)`;
        }, 300);
    }
    changeButtonStyle();
    auto = setInterval(autoSlide, 2000);
    setTimeout(()=>{checkArrow = false}, 300);
});

