package com.dhouse.reply.domain;

public class ReplyVO {
	private Long replyId;
	private String replyContents;
	private String replyRegisterDate;
	private String replyUpdateDate;
	private String replyDepth;
	private String replyGroup;
	private Long donationBoardId;
	private Long userId;

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

	public Long getDonationBoardId() {
		return donationBoardId;
	}

	public void setDonationBoardId(Long donationBoardId) {
		this.donationBoardId = donationBoardId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "ReplyVO [replyId=" + replyId + ", replyContents=" + replyContents + ", replyRegisterDate="
				+ replyRegisterDate + ", replyUpdateDate=" + replyUpdateDate + ", replyDepth=" + replyDepth
				+ ", replyGroup=" + replyGroup + ", donationBoardId=" + donationBoardId + ", userId=" + userId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((replyId == null) ? 0 : replyId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReplyVO other = (ReplyVO) obj;
		if (replyId == null) {
			if (other.replyId != null)
				return false;
		} else if (!replyId.equals(other.replyId))
			return false;
		return true;
	}
}
