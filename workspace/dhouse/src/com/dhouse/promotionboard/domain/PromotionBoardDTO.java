package com.dhouse.promotionboard.domain;

public class PromotionBoardDTO {	
	private Long promotionBoardId;
	private String promotionBoardTitle;
	private String promotionBoardContents;
	private String promotionBoardRegisterDate;
	private String promotionBoardUpdateDate;
	private String promotionBoardReadCount;
	private Long userId;
	
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

	@Override
	public String toString() {
		return "PromotionBoardVO [promotionBoardId=" + promotionBoardId + ", promotionBoardTitle=" + promotionBoardTitle
				+ ", promotionBoardContents=" + promotionBoardContents + ", promotionBoardRegisterDate="
				+ promotionBoardRegisterDate + ", promotionBoardUpdateDate=" + promotionBoardUpdateDate
				+ ", promotionBoardReadCount=" + promotionBoardReadCount + ", userId=" + userId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
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
		PromotionBoardDTO other = (PromotionBoardDTO) obj;
		if (promotionBoardId == null) {
			if (other.promotionBoardId != null)
				return false;
		} else if (!promotionBoardId.equals(other.promotionBoardId))
			return false;
		return true;
	}
	
}
