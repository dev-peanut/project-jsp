/*기업 목록*/
showCorpList();

function showCorpList(){
	corps = JSON.parse(corps);
	let text = "";
	const $content = $("#contents-wrapper");
	corps.forEach(corp => {
		console.log(corps[corp.corpId]);
		text += `
			<div class="content-wrapper">
	            <div class="content">
	                <a href="" class="content-a">`; 
					if(corps[corp.corpId].corpFileSystemName != null) {		
	                    text += `
							<div class="content-img" style="background-image: url('${contextPath}/upload/${corps[corp.userId].corpFileSystemName}')"></div>
						`;
					}
					text += `
	                    <div class="text-box">
	                        <p class="text-top">${corp.userName}</p>
	                        <ul class="text-box-ul">
	                            <li class="ul-lists">기부양 <em>${corp.foodSum}kg</em></li>
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