package com.dhouse.mypage.domain;

public class MyPageDTO {
	private Long userId;
	private String userIdentification;
	private String userPassword;
	private String userName;
	private String userNickname;
	private String userPhone;
	private String userEmail;
	private String corpAddress;
	private String corpRegisterNumber;
	private String corpIntroductionText;
	private String fileSystemName;
	private Long foodId;
	private String foodName;
	private String foodAmount;
	private String foodRequestDate;
	private Long levelLevel;
	private Long levelLowPoint;
	private Long levelHighPoint;
	private Long levelDiscount;
	private Long promotionBoardId;
	private String promotionBoardTitle;
	private String promotionBoardContents;
	private String promotionBoardRegisterDate;
	private String promotionBoardUpdateDate;
	private Long promotionBoardReadCount;
	private Long donationBoardId;
	private String donationBoardTitle;
	private String donationBoardContents;
	private String donationBoardRegisterDate;
	private String donationBoardUpdateDate;
	private Long donationBoardReadCount;
	private Long replyId;
	private String replyContents;
	private String replyRegisterDate;
	private String replyUpdateDate;
	private Long replyDepth;
	private Long replyGroup;
	private Long bannerId;
	private String bannerPaymentStatus;
	private String bannerPeriod;
	private String bannerStartDate;
	private String bannerLocation; //이거 어떻게 쓰지?
	private Long fileId;
	
	@Override
	public String toString() {
		return "MyPageDTO [userId=" + userId + ", userIdentification=" + userIdentification + ", userPassword="
				+ userPassword + ", userName=" + userName + ", userNickname=" + userNickname + ", userPhone="
				+ userPhone + ", userEmail=" + userEmail + ", corpAddress=" + corpAddress + ", corpRegisterNumber="
				+ corpRegisterNumber + ", corpIntroductionText=" + corpIntroductionText + ", fileSystemName="
				+ fileSystemName + ", foodId=" + foodId + ", foodName=" + foodName + ", foodAmount=" + foodAmount
				+ ", foodRequestDate=" + foodRequestDate + ", levelLevel=" + levelLevel + ", levelLowPoint="
				+ levelLowPoint + ", levelHighPoint=" + levelHighPoint + ", levelDiscount=" + levelDiscount
				+ ", promotionBoardId=" + promotionBoardId + ", promotionBoardTitle=" + promotionBoardTitle
				+ ", promotionBoardContents=" + promotionBoardContents + ", promotionBoardRegisterDate="
				+ promotionBoardRegisterDate + ", promotionBoardUpdateDate=" + promotionBoardUpdateDate
				+ ", promotionBoardReadCount=" + promotionBoardReadCount + ", donationBoardId=" + donationBoardId
				+ ", donationBoardTitle=" + donationBoardTitle + ", donationBoardContents=" + donationBoardContents
				+ ", donationBoardRegisterDate=" + donationBoardRegisterDate + ", donationBoardUpdateDate="
				+ donationBoardUpdateDate + ", donationBoardReadCount=" + donationBoardReadCount + ", replyId="
				+ replyId + ", replyContents=" + replyContents + ", replyRegisterDate=" + replyRegisterDate
				+ ", replyUpdateDate=" + replyUpdateDate + ", replyDepth=" + replyDepth + ", replyGroup=" + replyGroup
				+ ", bannerId=" + bannerId + ", bannerPaymentStatus=" + bannerPaymentStatus + ", bannerPeriod="
				+ bannerPeriod + ", bannerStartDate=" + bannerStartDate + ", bannerLocation=" + bannerLocation
				+ ", fileId=" + fileId + "]";
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserIdentification() {
		return userIdentification;
	}

	public void setUserIdentification(String userIdentification) {
		this.userIdentification = userIdentification;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getCorpAddress() {
		return corpAddress;
	}

	public void setCorpAddress(String corpAddress) {
		this.corpAddress = corpAddress;
	}

	public String getCorpRegisterNumber() {
		return corpRegisterNumber;
	}

	public void setCorpRegisterNumber(String corpRegisterNumber) {
		this.corpRegisterNumber = corpRegisterNumber;
	}

	public String getCorpIntroductionText() {
		return corpIntroductionText;
	}

	public void setCorpIntroductionText(String corpIntroductionText) {
		this.corpIntroductionText = corpIntroductionText;
	}

	public String getFileSystemName() {
		return fileSystemName;
	}

	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
	}

	public Long getFoodId() {
		return foodId;
	}

	public void setFoodId(Long foodId) {
		this.foodId = foodId;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public String getFoodAmount() {
		return foodAmount;
	}

	public void setFoodAmount(String foodAmount) {
		this.foodAmount = foodAmount;
	}

	public String getFoodRequestDate() {
		return foodRequestDate;
	}

	public void setFoodRequestDate(String foodRequestDate) {
		this.foodRequestDate = foodRequestDate;
	}

	public Long getLevelLevel() {
		return levelLevel;
	}

	public void setLevelLevel(Long levelLevel) {
		this.levelLevel = levelLevel;
	}

	public Long getLevelLowPoint() {
		return levelLowPoint;
	}

	public void setLevelLowPoint(Long levelLowPoint) {
		this.levelLowPoint = levelLowPoint;
	}

	public Long getLevelHighPoint() {
		return levelHighPoint;
	}

	public void setLevelHighPoint(Long levelHighPoint) {
		this.levelHighPoint = levelHighPoint;
	}

	public Long getLevelDiscount() {
		return levelDiscount;
	}

	public void setLevelDiscount(Long levelDiscount) {
		this.levelDiscount = levelDiscount;
	}

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

	public Long getPromotionBoardReadCount() {
		return promotionBoardReadCount;
	}

	public void setPromotionBoardReadCount(Long promotionBoardReadCount) {
		this.promotionBoardReadCount = promotionBoardReadCount;
	}

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

	public Long getReplyDepth() {
		return replyDepth;
	}

	public void setReplyDepth(Long replyDepth) {
		this.replyDepth = replyDepth;
	}

	public Long getReplyGroup() {
		return replyGroup;
	}

	public void setReplyGroup(Long replyGroup) {
		this.replyGroup = replyGroup;
	}

	public Long getBannerId() {
		return bannerId;
	}

	public void setBannerId(Long bannerId) {
		this.bannerId = bannerId;
	}

	public String getBannerPaymentStatus() {
		return bannerPaymentStatus;
	}

	public void setBannerPaymentStatus(String bannerPaymentStatus) {
		this.bannerPaymentStatus = bannerPaymentStatus;
	}

	public String getBannerPeriod() {
		return bannerPeriod;
	}

	public void setBannerPeriod(String bannerPeriod) {
		this.bannerPeriod = bannerPeriod;
	}

	public String getBannerStartDate() {
		return bannerStartDate;
	}

	public void setBannerStartDate(String bannerStartDate) {
		this.bannerStartDate = bannerStartDate;
	}

	public String getBannerLocation() {
		return bannerLocation;
	}

	public void setBannerLocation(String bannerLocation) {
		this.bannerLocation = bannerLocation;
	}

	public Long getFileId() {
		return fileId;
	}

	public void setFileId(Long fileId) {
		this.fileId = fileId;
	}

	public MyPageDTO(){;}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
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
		MyPageDTO other = (MyPageDTO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}



}
