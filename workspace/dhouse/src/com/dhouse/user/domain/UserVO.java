package com.dhouse.user.domain;

public class UserVO {
	private Long userId;
	private String userIdentification;
	private String userPassword;
	private String userName;
	private String userNickname;
	private String userPhone;
	private String userEmail;
	 
	public UserVO() {;}

<<<<<<< HEAD
	public Long getuserId() {
		return userId;
	}

	public void setuserId(Long userId) {
=======
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
>>>>>>> master
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


	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userIdentification=" + userIdentification + ", userPassword="
				+ userPassword + ", userName=" + userName + ", userNickname=" + userNickname + ", userPhone="
				+ userPhone + ", userEmail=" + userEmail + "]";
	}

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
		UserVO other = (UserVO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

}

	