/*기부 목록*/
showList();

function showList(){
	donationBoards = JSON.parse(donationBoards);
	let text = "";
	const $ul = $("#category-list ul");
	donationBoards.forEach(donationBoard => {
		text += `
				<li>
					<div>
					<a href="javascript:location.href='${contextPath}/board/detailOk.board?boardId=${board.boardId}&page=${page}&sort=${sort}&type=${type}&keyword=${keyword}'">
					<div class="wcommunity-story">
						<div class="story-info">
							<p class="title">${donation.donationBoardTitle}</p>
							<p class="summary">${donation.donationBoardContents}</p>
							<p class="info">
							<p class="editor">${donation.userNickname}</p>
							<p class="date">${donation.donationBoardRegisterDate}</p>
							</p>
						</div>
						<div class="img-wrap">
							<div class="story-img" style="background-image: url(${pageContext.request.contextPath}/static/images/user/notebook.jpg)"></div>
						</div>
					</div>
			`;
			if(files[donation.donationBoardId]){
				text += `<img src="${contextPath}/upload/${files[donation.donationBoardId].fileSystemName}" class="preview">`;
			}
			text += `
		            </a>
		        </div>
		    </li>
			`;

	});
	$ul.append(text);
}