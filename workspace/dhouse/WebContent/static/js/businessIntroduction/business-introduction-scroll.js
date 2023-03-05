page=1;

console.log("page: " + page);
const corpService = (function(){
	function list(callback) {
		console.log("function list 진입");
		$.ajax({
			url: contextPath + "/corp/listOk.corp",
			data: {page: page},
			dataType: "json",
			success: function(corps){
				alert("아악");
				if(callback){
					callback(corps);
				}
			}
		});
	}
	return {list: list};  
})();

/*스크롤 이벤트*/
$(window).scroll(
	function() {
		console.log("스크롤 이벤트");
		console.log($(window).scrollTop() == $(document).height() - $(window).height());
		console.log(Math.floor($(window).scrollTop()));
		console.log($(document).height() - $(window).height());
		if (Math.floor($(window).scrollTop()) == $(document).height() - $(window).height()) {
			page++;
			corpService.list(showList);
		}
	}
);

/*=======================================================================*/
/*이벤트, DOM, Ajax*/
/*=======================================================================*/

window.onload = function(){
	/*alert(contextPath);*/
	corpService.list(showList);
	console.log("after showList first");
}

/*기업 목록*/
function showList(corpMoreDTO){
	
	let corps = corpMoreDTO.corps;
	console.log(corps);
	console.log(contextPath);
	let text = "";
	const $content = $("#contents-wrapper");
	corps.forEach(corp => {
		console.log(corp.foodCount);
		text += `
			<div class="content-wrapper">
	            <div class="content">
	                <a href="javascript:location.href='${contextPath}/corp/detailOk.board'" class="content-a">`; 
					if(corp.corpFileSystemName) {		
	                    text += `
							<div class="content-img" style="background-image: url('${contextPath}/upload/${corp.corpFileSystemName}')"></div>
						`;
					}
					text += `
	                    <div class="text-box">
	                        <p class="text-top">${corp.userName}</p>
	                        <ul class="text-box-ul">
	                            <li class="ul-lists">기부량 <em>${corp.foodSum}kg</em></li>
	                            <li class="ul-lists">기부횟수 <em>${corp.foodCount}건</em></li>
	                        </ul>
	                    </div>
	                </a>
	            </div>
	        </div>
		`;
	});
	$content.append(text);
}