package com.dhouse.donationfile.domain;

public class DonationFileVO {
	private Long donationFileId;
	private String donationFileSystemName;
	private Long donationBoardId;
	
	public DonationFileVO() {;}

	public Long getDonationFileId() {
		return donationFileId;
	}

	public void setDonationFileId(Long donationFileId) {
		this.donationFileId = donationFileId;
	}

	public String getDonationFileSystemName() {
		return donationFileSystemName;
	}

	public void setDonationFileSystemName(String donationFileSystemName) {
		this.donationFileSystemName = donationFileSystemName;
	}

	public Long getDonationBoardId() {
		return donationBoardId;
	}

	public void setDonationBoardId(Long donationBoardId) {
		this.donationBoardId = donationBoardId;
	}

	@Override
	public String toString() {
		return "DonationFileVO [donationFileId=" + donationFileId + ", donationFileSystemName=" + donationFileSystemName
				+ ", donationBoardId=" + donationBoardId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((donationFileId == null) ? 0 : donationFileId.hashCode());
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
		DonationFileVO other = (DonationFileVO) obj;
		if (donationFileId == null) {
			if (other.donationFileId != null)
				return false;
		} else if (!donationFileId.equals(other.donationFileId))
			return false;
		return true;
	}
}
