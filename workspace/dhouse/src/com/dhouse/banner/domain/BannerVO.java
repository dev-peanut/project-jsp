package com.dhouse.banner.domain;

public class BannerVO {
	private Long bannerId;
	private String bannerPaymentStatus;
	private String bannerPeriod;
	private String bannerStartDate;
	private String bannerLocation;
	private String fileSystemName;
	private Long userId;
	
	public BannerVO() {;}

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

	@Override
	public String toString() {
		return "BannerVO [bannerId=" + bannerId + ", bannerPaymentStatus=" + bannerPaymentStatus + ", bannerPeriod="
				+ bannerPeriod + ", bannerStartDate=" + bannerStartDate + ", bannerLocation=" + bannerLocation
				+ ", fileSystemName=" + fileSystemName + ", userId=" + userId + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bannerId == null) ? 0 : bannerId.hashCode());
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
		BannerVO other = (BannerVO) obj;
		if (bannerId == null) {
			if (other.bannerId != null)
				return false;
		} else if (!bannerId.equals(other.bannerId))
			return false;
		return true;
	}
}
