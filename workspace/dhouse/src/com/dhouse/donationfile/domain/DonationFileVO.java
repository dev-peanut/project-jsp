package com.dhouse.donationfile.domain;

public class DonationFileVO {
	private Long fileId;
	private String fileSystemName;
	private Long donationBoardId;
	
	public DonationFileVO() {;}

	
	
	
	public Long getFileId() {
		return fileId;
	}




	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}




	public String getFileSystemName() {
		return fileSystemName;
	}




	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}




	public Long getDonationBoardId() {
		return donationBoardId;
	}




	public void setDonationBoardId(Long donationBoardId) {
		this.donationBoardId = donationBoardId;
	}




	@Override
	public String toString() {
		return "DonationFileVO [fileId=" + fileId + ", fileSystemName=" + fileSystemName + ", donationBoardId="
				+ donationBoardId + "]";
	}




	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fileId == null) ? 0 : fileId.hashCode());
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
		if (fileId == null) {
			if (other.fileId != null)
				return false;
		} else if (!fileId.equals(other.fileId))
			return false;
		return true;
	}
	
}
