package com.dhouse.level.domain;

public class LevelVO {
	 private int levelLevel;
	 private int levelLowPoint;
	 private int levelHighPoint;
	 private int levelDiscount;

	 public LevelVO() {;}

	public int getLevelLevel() {
		return levelLevel;
	}

	public void setLevelLevel(int levelLevel) {
		this.levelLevel = levelLevel;
	}

	public int getLevelLowPoint() {
		return levelLowPoint;
	}

	public void setLevelLowPoint(int levelLowPoint) {
		this.levelLowPoint = levelLowPoint;
	}

	public int getLevelHighPoint() {
		return levelHighPoint;
	}

	public void setLevelHighPoint(int levelHighPoint) {
		this.levelHighPoint = levelHighPoint;
	}

	public int getLevelDiscount() {
		return levelDiscount;
	}

	public void setLevelDiscount(int levelDiscount) {
		this.levelDiscount = levelDiscount;
	}

	@Override
	public String toString() {
		return "LevelVO [levelLevel=" + levelLevel + ", levelLowPoint=" + levelLowPoint + ", levelHighPoint="
				+ levelHighPoint + ", levelDiscount=" + levelDiscount + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + levelLevel;
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
		LevelVO other = (LevelVO) obj;
		if (levelLevel != other.levelLevel)
			return false;
		return true;
	}
	 
}
