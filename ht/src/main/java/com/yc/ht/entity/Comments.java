package com.yc.ht.entity;

import java.util.Date;

//评论表
public class Comments {
	private Integer cid; 		//评论编号
	private Integer soid;		//被评论的歌曲编号
	private Integer userid;		//评论人编号
	private String content;		//评论内容
	private Date commentTime;	//评论时间
	
	public Comments() {
		
	}
	
	public Comments(Integer cid, Integer soid, Integer userid, String content, Date commentTime) {
		this.cid = cid;
		this.soid = soid;
		this.userid = userid;
		this.content = content;
		this.commentTime = commentTime;
	}

	

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getSoid() {
		return soid;
	}

	public void setSoid(Integer soid) {
		this.soid = soid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	@Override
	public String toString() {
		return "\nComments [cid=" + cid + ", soid=" + soid + ", userid=" + userid + ", content=" + content
				+ ", commentTime=" + commentTime + "]";
	}
	
	
	
	
}
