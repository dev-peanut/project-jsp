/*기업 목록*/
showList();

function showList(){
	
	corps = JSON.parse(corps);
	let text = "";
	const $content = $("#contents-wrapper");
	corps.forEach(corp => {
		text += `
			<div class="content-wrapper">
	            <div class="content">
	                <a href="javascript:location.href='${contextPath}/corp/detailOk.corp?userId=${corp.userId}'" class="content-a">`; 
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