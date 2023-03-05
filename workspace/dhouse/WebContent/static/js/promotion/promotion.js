/* ------------------------------banner------------------------------*/
const div = document.querySelector("div.banner");
const arrows = document.querySelectorAll("div.arrow");
const btns = document.querySelectorAll(".btn");
const firstDiv = document.createElement("div.firstBan");
const lastDiv = document.createElement("div.lastBan");
// const firstDiv = document.createElement("div");
// const lastDiv = document.createElement("div");
var count = 0;
var buttonCheck = true;
var numberButtonCheck = true;
var temp = btns[count];

// firstDiv.innerHTML = `<img src="/assets/img/006.png"></img>`;
// firstDiv.innerHTML = `<img src="../../app/assets/img/006.png">`;
// firstDiv.innerHTML = `<img src="img/006.png">`;

// test
// div.insertBefore(firstDiv, document.querySelector("div.banner div"));

// lastDiv.innerHTML = `<img src="/assets/img/001.png"></img>`;
// lastDiv.innerHTML = `<img src="../../app/assets/img/001.png">`;
// lastDiv.innerHTML = `<img src="img/001.png">`;

// test
// div.appendChild(lastDiv);

div.style.transform = "translate(-100vw)";

btns[0].style.background = "black";

let inter = setInterval(autoSlide, 3000);
// let inter = setInterval(autoSlide, 2500);

// function autoSlide(){
//     count ++;
//     if(count == 6){
//         count = 0;
//     }
//     div.style.transform = "translate(-" + 90 * count +"vw)"
//     div.style.transition = "transform 0.5s";
// }

function autoSlide(){
    div.style.transition = "transform 1s";
    // div.style.transition = "transform 0.5s";
    count ++;
    if(count == 6){ // 마지막 배너(6번)
        btns[count - 1].style.background = "white";
        div.style.transform = "translate(-" + 100 * (count + 1) +"vw)"
        count = 0;
        btns[count].style.background = "black";
        setTimeout(function(){
            div.style.transition = "transform 0s";
            div.style.transform = "translate(-100vw)";
        }, 1000);
    }else{
        btns[count - 1].style.background = "white";
        btns[count].style.background = "black";
        div.style.transition = "transform 1s";
        // div.style.transition = "transform 0.5s";
        div.style.transform = "translate(-" + 100 * (count + 1) +"vw)"
    }
    temp = btns[count];
}

// 이전버튼, 다음버튼
arrows.forEach(arrow => {
    arrow.addEventListener("click", function(){
        if(buttonCheck){
            buttonCheck = false;
            let arrowType = arrow.classList[1];
            clearInterval(inter);
            div.style.transition = "transform 1s";
            // div.style.transition = "transform 0.5s";
            if(arrowType == "prev"){
                count --;
                if(count == -1){
                    div.style.transform = "translate(0vw)";
                    setTimeout(function(){
                        div.style.transition = "transform 0s";
                        div.style.transform = "translate(-600vw)";
                    }, 1000);
                    count = 5;
                }else{
                    div.style.transform = "translate(-" + 100 * (count + 1) + "vw)";
                }

            }else{
                count ++;
                if(count == 6){
                    div.style.transform = "translate(-" + 100 * (count + 1) + "vw)";
                    setTimeout(function(){
                        div.style.transition = "transform 0s";
                        div.style.transform = "translate(-100vw)";
                    }, 1000);
                    count = 0;
                }else{
                    div.style.transform = "translate(-" + 100 * (count + 1) + "vw)";
                }
            }
            temp.style.background = "white";
            temp = btns[count];
            btns[count].style.background = "black";
            inter = setInterval(autoSlide, 3000);
            // inter = setInterval(autoSlide, 2500);

            setTimeout(()=>{buttonCheck = true}, 1000);
            // setTimeout(()=>{buttonCheck = true}, 500);
        }
    });
});
// arrows.forEach(arrow => {
//     arrow.addEventListener("click", function(){
//         let arrowType = arrow.classList[1];
//         if(arrowType == "prev"){
//             count --;
//             if(count == -1){
//                 count = 5;
//             }

//         }else{
//             count ++;
//             if(count == 6){
//                 count = 0;
//             }
//         }

//         div.style.transform = "translate(-" + 90 * count +"vw)"

//     });
// });

// 원하는 번호의 배너로 이동
// btns.forEach((btn, i) => {
//     btn.addEventListener("click", function(){
//         count = i;
//         div.style.transform = "translate(-" + 90 * count +"vw)"
//     });
// });

btns.forEach((btn, i) => {
    btn.addEventListener("click", function(){
        div.style.transition = "transform 1s";
        if(numberButtonCheck){
            numberButtonCheck = false;
            clearInterval(inter);
            count = i;
            div.style.transform = "translate(-" + 100 * (count + 1) +"vw)"
            temp.style.background = "white";
            temp = btns[count];
            btns[count].style.background = "black";
            inter = setInterval(autoSlide, 3000);
            // inter = setInterval(autoSlide, 2500);
            setTimeout(() => {numberButtonCheck = true}, 1000);
            // setTimeout(() => {numberButtonCheck = true}, 500);
        }
    });
});


/* 목록  */
function showList(){
    console.log(promotionBoards);
	promotionBoards = JSON.parse(promotionBoards);
	const $ol = $("#ranking-part");
	let text = "";
	promotionBoards.forEach((promotionBoard, i)=> {
		text += `
                <li class="top10-lists">
                    <a href="${contextPath}/promotion/detailOk.promotion?promotionBoardId=${promotionBoards[i].promotionBoardId}">
                        <div class="list-container">
                            <div class="list-image-wrapper">
                                <div class="list-image" style="background-image: url(${contextPath}/static/images/main/${promotionBoards[i].fileSystemName});">
                                </div>
                            </div>
                            <div class="list-text-wrapper">
                                <div class="ranking-top-number">
                                    <span class="ranking-number">TOP ${i + 1}</span>
                                </div>
                                <dl class="inner-text-wrapper">
                                    <dd class="middle-text-wrapper">
                                        <span class="middle-text">
                                            ${promotionBoards[i].userNickname}
                                        </span>
                                    </dd>
                                    <dd class="bottom-text-wrapper">
                                        <span class="bottom-text">
                                            ${promotionBoards[i].promotionBoardTitle}
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </a>    
                </li>
			`;
	});
	$ol.append(text);
}
showList();

