package com.mystudy.vo;

import java.sql.Date;

public class BBSVO {
	private int idx;
	private String nickname;
	private String bContent;
	private Date bDate;
	private int hit;
	private String subject;
	private int category;
	private String optDay;
	private String optAge;
	private String optGen;
	private int views;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getOptDay() {
		return optDay;
	}
	public void setOptDay(String optDay) {
		this.optDay = optDay;
	}
	public String getOptAge() {
		return optAge;
	}
	public void setOptAge(String optAge) {
		this.optAge = optAge;
	}
	public String getOptGen() {
		return optGen;
	}
	public void setOptGen(String optGen) {
		this.optGen = optGen;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	@Override
	public String toString() {
		return "BBSVO [idx=" + idx + ", nickName=" + nickname + ", bContent=" + bContent + ", bDate=" + bDate + ", hit="
				+ hit + ", subject=" + subject + ", category=" + category + ", optDay=" + optDay + ", optAge=" + optAge
				+ ", optGen=" + optGen + ", views=" + views + "]";
	}
	
	
	
	
	

	
	
}
