/*공지사항 목록*/
showList();

function showList(){
	
	notices = JSON.parse(notices);
	let text = "";
	const $tbody = $("#table-body");
	notices.forEach(notice => {
		text += `
			<tr class="table-tr">
                <td class="cell">
                    <div class="numbers">${notice.noticeNumber}</div>
                </td>
                <td class="cell-text-wrapper">
                    <div class="text-wrapper">
                        <div class="text-top">
                            <div class="text-top-inner">
                                ${notice.noticeRegisterDate}
                            </div>
                        </div>
                        <div class="text-bottom">
                            <div class="text-bottom-inner">${notice.noticeTitle}</div>
                        </div>
                    </div>
                </td>
            </tr>
		`;
	});
	$tbody.append(text);
}