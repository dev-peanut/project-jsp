package com.dhouse.file.domain;

public class FileVO {
	private Long fileId;
	private String fileOriginalName;
	private String fileSystemName;
	private String filePath;
	private Long promotionBoardId;
	private Long donationBoardId;
	private Long memberId;
	
	
	public FileVO() {;}


	public Long getFileId() {
		return fileId;
	}


	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}


	public String getFileOriginalName() {
		return fileOriginalName;
	}


	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}


	public String getFileSystemName() {
		return fileSystemName;
	}


	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}


	public String getFilePath() {
		return filePath;
	}


	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}


	public Long getPromotionBoardId() {
		return promotionBoardId;
	}


	public void setPromotionBoardId(Long promotionBoardId) {
		this.promotionBoardId = promotionBoardId;
	}


	public Long getDonationBoardId() {
		return donationBoardId;
	}


	public void setDonationBoardId(Long donationBoardId) {
		this.donationBoardId = donationBoardId;
	}


	public Long getMemberId() {
		return memberId;
	}


	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((donationBoardId == null) ? 0 : donationBoardId.hashCode());
		result = prime * result + ((fileId == null) ? 0 : fileId.hashCode());
		result = prime * result + ((fileOriginalName == null) ? 0 : fileOriginalName.hashCode());
		result = prime * result + ((filePath == null) ? 0 : filePath.hashCode());
		result = prime * result + ((fileSystemName == null) ? 0 : fileSystemName.hashCode());
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
		result = prime * result + ((promotionBoardId == null) ? 0 : promotionBoardId.hashCode());
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
		FileVO other = (FileVO) obj;
		if (donationBoardId == null) {
			if (other.donationBoardId != null)
				return false;
		} else if (!donationBoardId.equals(other.donationBoardId))
			return false;
		if (fileId == null) {
			if (other.fileId != null)
				return false;
		} else if (!fileId.equals(other.fileId))
			return false;
		if (fileOriginalName == null) {
			if (other.fileOriginalName != null)
				return false;
		} else if (!fileOriginalName.equals(other.fileOriginalName))
			return false;
		if (filePath == null) {
			if (other.filePath != null)
				return false;
		} else if (!filePath.equals(other.filePath))
			return false;
		if (fileSystemName == null) {
			if (other.fileSystemName != null)
				return false;
		} else if (!fileSystemName.equals(other.fileSystemName))
			return false;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (promotionBoardId == null) {
			if (other.promotionBoardId != null)
				return false;
		} else if (!promotionBoardId.equals(other.promotionBoardId))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "FileVO [fileId=" + fileId + ", fileOriginalName=" + fileOriginalName + ", fileSystemName="
				+ fileSystemName + ", filePath=" + filePath + ", promotionBoardId=" + promotionBoardId
				+ ", donationBoardId=" + donationBoardId + ", memberId=" + memberId + "]";
	}

	
	
}
