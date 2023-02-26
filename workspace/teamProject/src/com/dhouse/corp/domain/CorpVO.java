package com.dhouse.corp.domain;

public class CorpVO {
	private Long memberId;
	private String corpIdentification;
	private String corpPassword;
	private String corpNickName;
	private String corpCall;
	private String corpEmail;
	private String corpAddress;
	private String corpRegister;
	private String corpIntroductionText;
	private String corpIntroductionFile;
	private String fileOriginalName;
	private String fileSystemName;
	private String filePath;
	 
	public CorpVO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getCorpIdentification() {
		return corpIdentification;
	}

	public void setCorpIdentification(String corpIdentification) {
		this.corpIdentification = corpIdentification;
	}

	public String getCorpPassword() {
		return corpPassword;
	}

	public void setCorpPassword(String corpPassword) {
		this.corpPassword = corpPassword;
	}

	public String getCorpNickName() {
		return corpNickName;
	}

	public void setCorpNickName(String corpNickName) {
		this.corpNickName = corpNickName;
	}

	public String getCorpCall() {
		return corpCall;
	}

	public void setCorpCall(String corpCall) {
		this.corpCall = corpCall;
	}

	public String getCorpEmail() {
		return corpEmail;
	}

	public void setCorpEmail(String corpEmail) {
		this.corpEmail = corpEmail;
	}

	public String getCorpAddress() {
		return corpAddress;
	}

	public void setCorpAddress(String corpAddress) {
		this.corpAddress = corpAddress;
	}

	public String getCorpRegister() {
		return corpRegister;
	}

	public void setCorpRegister(String corpRegister) {
		this.corpRegister = corpRegister;
	}

	public String getCorpIntroductionText() {
		return corpIntroductionText;
	}

	public void setCorpIntroductionText(String corpIntroductionText) {
		this.corpIntroductionText = corpIntroductionText;
	}

	public String getCorpIntroductionFile() {
		return corpIntroductionFile;
	}

	public void setCorpIntroductionFile(String corpIntroductionFile) {
		this.corpIntroductionFile = corpIntroductionFile;
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

	@Override
	public String toString() {
		return "CorpVO [memberId=" + memberId + ", corpIdentification=" + corpIdentification + ", corpPassword="
				+ corpPassword + ", corpNickName=" + corpNickName + ", corpCall=" + corpCall + ", corpEmail="
				+ corpEmail + ", corpAddress=" + corpAddress + ", corpRegister=" + corpRegister
				+ ", corpIntroductionText=" + corpIntroductionText + ", corpIntroductionFile=" + corpIntroductionFile
				+ ", fileOriginalName=" + fileOriginalName + ", fileSystemName=" + fileSystemName + ", filePath="
				+ filePath + "]";
	}
	
}
