package com.dhouse.file.domain;

public class FileVO {
	private Long fileId;
	private String fileOriginalName;
	private String fileSystemName;
	private String filePath;
	private Long boardId;
	private Long memberId;

	public FileVO() {;}

	public Long getFileId() {
		return fileId;
	}

	public void setFileId(Long fileId) {
		this.fileId = fileId;
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

	public Long getBoardId() {
		return boardId;
	}

	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "FileVO [fileId=" + fileId + ", fileOriginalName=" + fileOriginalName + ", fileSystemName="
				+ fileSystemName + ", filePath=" + filePath + ", boardId=" + boardId + ", memberId=" + memberId + "]";
	}
	
}
