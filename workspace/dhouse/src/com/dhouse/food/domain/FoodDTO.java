package com.dhouse.food.domain;

public class FoodDTO {
	private Long foodId;
	private String foodName;
	private String foodAmount;
	private String foodRequestDate;
	private String fileSystemName;
	private Long userId;
	private String userNickname;
	
	public FoodDTO() {;}


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



	public String getFileSystemName() {
		return fileSystemName;
	}



	public void setFileSystemName(String fileSystemName) {
		this.fileSystemName = fileSystemName;
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



	@Override
	public String toString() {
		return "FoodDTO [foodId=" + foodId + ", foodName=" + foodName + ", foodAmount=" + foodAmount
				+ ", foodRequestDate=" + foodRequestDate + ", fileSystemName=" + fileSystemName + ", userId=" + userId
				+ ", userNickname=" + userNickname + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((foodId == null) ? 0 : foodId.hashCode());
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
		FoodDTO other = (FoodDTO) obj;
		if (foodId == null) {
			if (other.foodId != null)
				return false;
		} else if (!foodId.equals(other.foodId))
			return false;
		return true;
	}

}
