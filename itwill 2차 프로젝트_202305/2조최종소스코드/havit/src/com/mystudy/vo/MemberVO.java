package com.mystudy.vo;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class MemberVO {
	private String nickname;
	private String id;
	private String pw;
	private String gender;
	private String birth;
	private String email;
	private String phone;
	private String area;
	private String addr;
	private Date signupdate;
	
	
	public MemberVO() {
		super();
	}
	
	public MemberVO(String nickname, String id, String pw, String gender, String birth, String email, String phone,
			String area, String addr) {
		super();
		this.nickname = nickname;
		this.id = id;
		this.pw = pw;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
		this.phone = phone;
		this.area = area;
		this.addr = addr;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Date getSignupdate() {
		return signupdate;
	}
	public void setSignupdate(Date signupdate) {
		this.signupdate = signupdate;
	}
	@Override
	public String toString() {
		return "MemberVO [nickname=" + nickname + ", id=" + id + ", pw=" + pw + ", gender=" + gender + ", birth="
				+ birth + ", email=" + email + ", phone=" + phone + ", area=" + area + ", addr=" + addr
				+ ", signupdate=" + signupdate + "]";
	}
	
	

}
