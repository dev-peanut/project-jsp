package com.dhouse.promotionfile.domain;

public class PromotionFileVO {
	private Long fileId;
	private String fileSystemName;
	private Long promotionBoardId;

	public PromotionFileVO() {;}

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

	public Long getPromotionBoardId() {
		return promotionBoardId;
	}

	public void setPromotionBoardId(Long promotionBoardId) {
		this.promotionBoardId = promotionBoardId;
	}

	@Override
	public String toString() {
		return "PromotionFileVO [fileId=" + fileId + ", fileSystemName=" + fileSystemName + ", promotionBoardId="
				+ promotionBoardId + "]";
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
		PromotionFileVO other = (PromotionFileVO) obj;
		if (fileId == null) {
			if (other.fileId != null)
				return false;
		} else if (!fileId.equals(other.fileId))
			return false;
		return true;
	}
	
}