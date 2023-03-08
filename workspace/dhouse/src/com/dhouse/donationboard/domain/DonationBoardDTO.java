package com.dhouse.donationboard.domain;

public class DonationBoardDTO {
	private Long donationBoardId;
	private String donationBoardTitle;
	private String donationBoardContents;
	private String donationBoardRegisterDate;
	private String donationBoardUpdateDate;
	private Long donationBoardReadCount;
//	추가
	private String userNickname;
	private String donationFileSystemName;
//	추가-mw- 2023-03-08 02:21 사용처 : admin donation board list
	private Long replyCount;
	
	public DonationBoardDTO() {;}

	public Long getDonationBoardId() {
		return donationBoardId;
	}

	public void setDonationBoardId(Long donationBoardId) {
		this.donationBoardId = donationBoardId;
	}

	public String getDonationBoardTitle() {
		return donationBoardTitle;
	}

	public void setDonationBoardTitle(String donationBoardTitle) {
		this.donationBoardTitle = donationBoardTitle;
	}

	public String getDonationBoardContents() {
		return donationBoardContents;
	}

	public void setDonationBoardContents(String donationBoardContents) {
		this.donationBoardContents = donationBoardContents;
	}

	public String getDonationBoardRegisterDate() {
		return donationBoardRegisterDate;
	}

	public void setDonationBoardRegisterDate(String donationBoardRegisterDate) {
		this.donationBoardRegisterDate = donationBoardRegisterDate;
	}

	public String getDonationBoardUpdateDate() {
		return donationBoardUpdateDate;
	}

	public void setDonationBoardUpdateDate(String donationBoardUpdateDate) {
		this.donationBoardUpdateDate = donationBoardUpdateDate;
	}

	public Long getDonationBoardReadCount() {
		return donationBoardReadCount;
	}

	public void setDonationBoardReadCount(Long donationBoardReadCount) {
		this.donationBoardReadCount = donationBoardReadCount;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getDonationFileSystemName() {
		return donationFileSystemName;
	}

	public void setDonationFileSystemName(String donationFileSystemName) {
		this.donationFileSystemName = donationFileSystemName;
	}

	public Long getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(Long replyCount) {
		this.replyCount = replyCount;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((donationBoardId == null) ? 0 : donationBoardId.hashCode());
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
		DonationBoardDTO other = (DonationBoardDTO) obj;
		if (donationBoardId == null) {
			if (other.donationBoardId != null)
				return false;
		} else if (!donationBoardId.equals(other.donationBoardId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "DonationBoardDTO [donationBoardId=" + donationBoardId + ", donationBoardTitle=" + donationBoardTitle
				+ ", donationBoardContents=" + donationBoardContents + ", donationBoardRegisterDate="
				+ donationBoardRegisterDate + ", donationBoardUpdateDate=" + donationBoardUpdateDate
				+ ", donationBoardReadCount=" + donationBoardReadCount + ", userNickname=" + userNickname
				+ ", donationFileSystemName=" + donationFileSystemName + ", replyCount=" + replyCount + "]";
	}

}
