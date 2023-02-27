package com.dhouse.banner.domain;

public class BannerVO {
	private Long bannerId;
	private String bannerPaymentStatus;
	private String bannerPeriod;
	private String bannerStartDate;
	private String bannerLocation;
	private String filePath;
	private String fileOriginalName;
	private String fileSystemName;
	private Long memberId;
	
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

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
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

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "BannerVO [bannerId=" + bannerId + ", bannerPaymentStatus=" + bannerPaymentStatus + ", bannerPeriod="
				+ bannerPeriod + ", bannerStartDate=" + bannerStartDate + ", bannerLocation=" + bannerLocation
				+ ", filePath=" + filePath + ", fileOriginalName=" + fileOriginalName + ", fileSystemName="
				+ fileSystemName + ", memberId=" + memberId + "]";
	}
	
}
