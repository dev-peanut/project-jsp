package com.dhouse.food.domain;

public class FoodVO {
	private Long foodId;
	private String foodName;
	private String foodAmount;
	private String foodRequestDate;
	private String fileOriginalName;
	private String fileSystemName;
	private String filePath;
	private Long memberId;
	
	public FoodVO() {;}

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

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "FoodVO [foodId=" + foodId + ", foodName=" + foodName + ", foodAmount=" + foodAmount
				+ ", foodRequestDate=" + foodRequestDate + ", fileOriginalName=" + fileOriginalName
				+ ", fileSystemName=" + fileSystemName + ", filePath=" + filePath + ", memberId=" + memberId + "]";
	}
}
