package com.dhouse.notice.domain;

public class NoticeDTO {
	private Long noticeId;
	private String noticeTitle;
	private String noticeContents;
	private String noticeRegisterDate;
	private String noticeUpdateDate;
	private String noticeFileSystemName;
	private Long noticeNumber;

	public NoticeDTO() {;}

	public Long getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(Long noticeId) {
		this.noticeId = noticeId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContents() {
		return noticeContents;
	}

	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}

	public String getNoticeRegisterDate() {
		return noticeRegisterDate;
	}

	public void setNoticeRegisterDate(String noticeRegisterDate) {
		this.noticeRegisterDate = noticeRegisterDate;
	}

	public String getNoticeUpdateDate() {
		return noticeUpdateDate;
	}

	public void setNoticeUpdateDate(String noticeUpdateDate) {
		this.noticeUpdateDate = noticeUpdateDate;
	}

	public String getNoticeFileSystemName() {
		return noticeFileSystemName;
	}

	public void setNoticeFileSystemName(String noticeFileSystemName) {
		this.noticeFileSystemName = noticeFileSystemName;
	}

	public Long getNoticeNumber() {
		return noticeNumber;
	}

	public void setNoticeNumber(Long noticeNumber) {
		this.noticeNumber = noticeNumber;
	}

	@Override
	public String toString() {
		return "NoticeDTO [noticeId=" + noticeId + ", noticeTitle=" + noticeTitle + ", noticeContents=" + noticeContents
				+ ", noticeRegisterDate=" + noticeRegisterDate + ", noticeUpdateDate=" + noticeUpdateDate
				+ ", noticeFileSystemName=" + noticeFileSystemName + ", noticeNumber=" + noticeNumber + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((noticeId == null) ? 0 : noticeId.hashCode());
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
		NoticeDTO other = (NoticeDTO) obj;
		if (noticeId == null) {
			if (other.noticeId != null)
				return false;
		} else if (!noticeId.equals(other.noticeId))
			return false;
		return true;
	}
	
	
}
