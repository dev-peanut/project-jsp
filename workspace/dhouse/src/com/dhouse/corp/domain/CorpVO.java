package com.dhouse.corp.domain;

public class CorpVO {
<<<<<<< HEAD
   private Long userId;
   private String corpAddress;
   private String corpRegisterNumber;
   private String corpIntroductionText;
   private String fileSystemName;
   
   public CorpVO() {;}
   
   public Long getUserId() {
      return userId;
   }
   public void setUserId(Long userId) {
      this.userId = userId;
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

   @Override
   public String toString() {
      return "CorpVO [userId=" + userId + ", corpAddress=" + corpAddress + ", corpRegisterNumber="
            + corpRegisterNumber + ", corpIntroductionText=" + corpIntroductionText + ", fileSystemName="
            + fileSystemName + "]";
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
      CorpVO other = (CorpVO) obj;
      if (userId == null) {
         if (other.userId != null)
            return false;
      } else if (!userId.equals(other.userId))
         return false;
      return true;
   }
         
}
=======
	private Long userId;
	private String corpAddress;
	private String corpRegisterNumber;
	private String corpIntroductionText;
	private String fileSystemName;
	
	public CorpVO() {;}
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
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

	@Override
	public String toString() {
		return "CorpVO [userId=" + userId + ", corpAddress=" + corpAddress + ", corpRegisterNumber="
				+ corpRegisterNumber + ", corpIntroductionText=" + corpIntroductionText + ", fileSystemName="
				+ fileSystemName + "]";
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
		CorpVO other = (CorpVO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
			
}
>>>>>>> master
