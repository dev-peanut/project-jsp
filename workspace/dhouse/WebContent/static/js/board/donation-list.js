/*기부 목록*/
showList();

function showList(){
	donationBoards = JSON.parse(donationBoards);
	console.log(donationBoards);
	let text = "";
	const $ul = $("#category-list ul");
	donationBoards.forEach(donationBoard => {
		text += `
				<li>
					<div>
					<a href="javascript:location.href='${contextPath}/donation/listOk.donation?donationBoardId=${donationBoard.donationBoardId}&page=${page}'">
					<div class="wcommunity-story">
						<div class="story-info">
							<p class="title">${donationBoard.donationBoardTitle}</p>
							<p class="summary">${donationBoard.donationBoardContents}</p>
							<p class="info">
							<p class="editor">${donationBoard.userNickname}</p>
							<p class="date">${donationBoard.donationBoardRegisterDate}</p>
							</p>
						</div>
						<div class="img-wrap">
							<div class="story-img" style="background-image: url(${contextPath}/static/images/user/notebook.jpg)"></div>
						</div>
					</div>
		            </a>
		        </div>
		    </li>
			`;

	});
	$ul.append(text);
}