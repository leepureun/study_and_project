package com.mystudy.vo;

import java.sql.Date;

public class CommentsVO {
	public String cidx;
	public String nickname;
	public String comments;
	public Date cdate;
	public int idx;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getCidx() {
		return cidx;
	}

	public void setCidx(String cidx) {
		this.cidx = cidx;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Date getCdate() {
		return cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

	@Override
	public String toString() {
		return "CommentsVO [cidx=" + cidx + ", nickname=" + nickname + ", comments=" + comments + ", cdate=" + cdate
				+ "]";
	}

}
