package com.mystudy.vo;

public class HobbyVO {
	private int idx;
	private String id;
	private int category;
	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "HobbyVO [idx=" + idx + ", id=" + id + ", category=" + category + "]";
	}
	
	

}
