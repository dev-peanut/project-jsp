package com.dhouse.corp.domain;

import java.util.List;

public class CorpMoreDTO {
	private List<CorpDTO> corpDTOs;
	private boolean isNextPage;
	
	public CorpMoreDTO() {;}

	public List<CorpDTO> getCorpDTOs() {
		return corpDTOs;
	}

	public void setCorpDTOs(List<CorpDTO> corpDTOs) {
		this.corpDTOs = corpDTOs;
	}

	public boolean isNextPage() {
		return isNextPage;
	}

	public void setNextPage(boolean isNextPage) {
		this.isNextPage = isNextPage;
	}

	@Override
	public String toString() {
		return "CorpMoreDTO [corpDTOs=" + corpDTOs + ", isNextPage=" + isNextPage + "]";
	}
	
	
	
}
