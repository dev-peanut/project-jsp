package com.dhouse.board.domain;

public class BoardVO {
	private Long boardId;
	private String boardTitle;
	private String boardContent;
	private String boardRegisterDate;
	private String boardUpdateDate;
	private String boardType;
	private Long boardReadCount;
	private Long memberId;
	
	public BoardVO() {;}
	
	public Long getBoardId() {
		return boardId;
	}
	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardRegisterDate() {
		return boardRegisterDate;
	}
	public void setBoardRegisterDate(String boardRegisterDate) {
		this.boardRegisterDate = boardRegisterDate;
	}
	public String getBoardUpdateDate() {
		return boardUpdateDate;
	}
	public void setBoardUpdateDate(String boardUpdateDate) {
		this.boardUpdateDate = boardUpdateDate;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public Long getBoardReadCount() {
		return boardReadCount;
	}
	public void setBoardReadCount(Long boardReadCount) {
		this.boardReadCount = boardReadCount;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "BoardVO [boardId=" + boardId + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardRegisterDate=" + boardRegisterDate + ", boardUpdateDate=" + boardUpdateDate + ", boardType="
				+ boardType + ", boardReadCount=" + boardReadCount + ", memberId=" + memberId + "]";
	}
	
}
