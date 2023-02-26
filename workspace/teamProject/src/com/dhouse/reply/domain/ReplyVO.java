package com.dhouse.reply.domain;

public class ReplyVO {
	private Long replyId;
	private String replyContents;
	private String replyRegisterDate;
	private String replyUpdateDate;
	private String replyDepth;
	private String replyGroup;
	private Long memberId;
	private Long boardId;

	public ReplyVO() {;}

	public Long getReplyId() {
		return replyId;
	}

	public void setReplyId(Long replyId) {
		this.replyId = replyId;
	}

	public String getReplyContents() {
		return replyContents;
	}

	public void setReplyContents(String replyContents) {
		this.replyContents = replyContents;
	}

	public String getReplyRegisterDate() {
		return replyRegisterDate;
	}

	public void setReplyRegisterDate(String replyRegisterDate) {
		this.replyRegisterDate = replyRegisterDate;
	}

	public String getReplyUpdateDate() {
		return replyUpdateDate;
	}

	public void setReplyUpdateDate(String replyUpdateDate) {
		this.replyUpdateDate = replyUpdateDate;
	}

	public String getReplyDepth() {
		return replyDepth;
	}

	public void setReplyDepth(String replyDepth) {
		this.replyDepth = replyDepth;
	}

	public String getReplyGroup() {
		return replyGroup;
	}

	public void setReplyGroup(String replyGroup) {
		this.replyGroup = replyGroup;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	@Override
	public String toString() {
		return "ReplyVO [replyId=" + replyId + ", replyContents=" + replyContents + ", replyRegisterDate="
				+ replyRegisterDate + ", replyUpdateDate=" + replyUpdateDate + ", replyDepth=" + replyDepth
				+ ", replyGroup=" + replyGroup + ", memberId=" + memberId + ", boardId=" + boardId + "]";
	}	
	
	
	
}
