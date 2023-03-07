package com.dhouse.promotionboard.domain;

// 필요한 부분들 추가 해야함
public class PromotionBoardDTO {	
	private Long promotionBoardId;
	private String promotionBoardTitle;
	private String promotionBoardContents;
	private String promotionBoardRegisterDate;
	private String promotionBoardUpdateDate;
	private String promotionBoardReadCount;
	private Long userId;
//	추가
//	private Long foodAmount;		
	private String userNickname;	// 기부한 기업의 닉네임
	private String fileSystemName;	// 파일 시스템 네임
	private Long foodSum;			// 기부한 음식량
	private String corpAddress;		// 기업 주소
	
	public PromotionBoardDTO() {;}

	public Long getPromotionBoardId() {
		return promotionBoardId;
	}

	public void setPromotionBoardId(Long promotionBoardId) {
		this.promotionBoardId = promotionBoardId;
	}

	public String getPromotionBoardTitle() {
		return promotionBoardTitle;
	}

	public void setPromotionBoardTitle(String promotionBoardTitle) {
		this.promotionBoardTitle = promotionBoardTitle;
	}

	public String getPromotionBoardContents() {
		return promotionBoardContents;
	}

	public void setPromotionBoardContents(String promotionBoardContents) {
		this.promotionBoardContents = promotionBoardContents;
	}

	public String getPromotionBoardRegisterDate() {
		return promotionBoardRegisterDate;
	}

	public void setPromotionBoardRegisterDate(String promotionBoardRegisterDate) {
		this.promotionBoardRegisterDate = promotionBoardRegisterDate;
	}

	public String getPromotionBoardUpdateDate() {
		return promotionBoardUpdateDate;
	}

	public void setPromotionBoardUpdateDate(String promotionBoardUpdateDate) {
		this.promotionBoardUpdateDate = promotionBoardUpdateDate;
	}

	public String getPromotionBoardReadCount() {
		return promotionBoardReadCount;
	}

	public void setPromotionBoardReadCount(String promotionBoardReadCount) {
		this.promotionBoardReadCount = promotionBoardReadCount;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getFileSystemName() {
		return fileSystemName;
	}

	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}

	public Long getFoodSum() {
		return foodSum;
	}

	public void setFoodSum(Long foodSum) {
		this.foodSum = foodSum;
	}

	public String getCorpAddress() {
		return corpAddress;
	}

	public void setCorpAddress(String corpAddress) {
		this.corpAddress = corpAddress;
	}

	@Override
	public String toString() {
		return "PromotionBoardDTO [promotionBoardId=" + promotionBoardId + ", promotionBoardTitle="
				+ promotionBoardTitle + ", promotionBoardContents=" + promotionBoardContents
				+ ", promotionBoardRegisterDate=" + promotionBoardRegisterDate + ", promotionBoardUpdateDate="
				+ promotionBoardUpdateDate + ", promotionBoardReadCount=" + promotionBoardReadCount + ", userId="
				+ userId + ", userNickname=" + userNickname + ", fileSystemName=" + fileSystemName + ", foodSum="
				+ foodSum + ", corpAddress=" + corpAddress + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((corpAddress == null) ? 0 : corpAddress.hashCode());
		result = prime * result + ((fileSystemName == null) ? 0 : fileSystemName.hashCode());
		result = prime * result + ((foodSum == null) ? 0 : foodSum.hashCode());
		result = prime * result + ((promotionBoardContents == null) ? 0 : promotionBoardContents.hashCode());
		result = prime * result + ((promotionBoardId == null) ? 0 : promotionBoardId.hashCode());
		result = prime * result + ((promotionBoardReadCount == null) ? 0 : promotionBoardReadCount.hashCode());
		result = prime * result + ((promotionBoardRegisterDate == null) ? 0 : promotionBoardRegisterDate.hashCode());
		result = prime * result + ((promotionBoardTitle == null) ? 0 : promotionBoardTitle.hashCode());
		result = prime * result + ((promotionBoardUpdateDate == null) ? 0 : promotionBoardUpdateDate.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		result = prime * result + ((userNickname == null) ? 0 : userNickname.hashCode());
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
		PromotionBoardDTO other = (PromotionBoardDTO) obj;
		if (corpAddress == null) {
			if (other.corpAddress != null)
				return false;
		} else if (!corpAddress.equals(other.corpAddress))
			return false;
		if (fileSystemName == null) {
			if (other.fileSystemName != null)
				return false;
		} else if (!fileSystemName.equals(other.fileSystemName))
			return false;
		if (foodSum == null) {
			if (other.foodSum != null)
				return false;
		} else if (!foodSum.equals(other.foodSum))
			return false;
		if (promotionBoardContents == null) {
			if (other.promotionBoardContents != null)
				return false;
		} else if (!promotionBoardContents.equals(other.promotionBoardContents))
			return false;
		if (promotionBoardId == null) {
			if (other.promotionBoardId != null)
				return false;
		} else if (!promotionBoardId.equals(other.promotionBoardId))
			return false;
		if (promotionBoardReadCount == null) {
			if (other.promotionBoardReadCount != null)
				return false;
		} else if (!promotionBoardReadCount.equals(other.promotionBoardReadCount))
			return false;
		if (promotionBoardRegisterDate == null) {
			if (other.promotionBoardRegisterDate != null)
				return false;
		} else if (!promotionBoardRegisterDate.equals(other.promotionBoardRegisterDate))
			return false;
		if (promotionBoardTitle == null) {
			if (other.promotionBoardTitle != null)
				return false;
		} else if (!promotionBoardTitle.equals(other.promotionBoardTitle))
			return false;
		if (promotionBoardUpdateDate == null) {
			if (other.promotionBoardUpdateDate != null)
				return false;
		} else if (!promotionBoardUpdateDate.equals(other.promotionBoardUpdateDate))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		if (userNickname == null) {
			if (other.userNickname != null)
				return false;
		} else if (!userNickname.equals(other.userNickname))
			return false;
		return true;
	}


	
}
