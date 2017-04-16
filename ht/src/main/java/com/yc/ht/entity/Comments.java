package com.yc.ht.entity;

//评论表
public class Comments {
	private Integer cid; 		//评论编号
	private Integer userid;     //评论人编号
	private String content;		//评论人内容
	private String commentTime;		//评论时间
	private String commentPicPath;	//评论图片路径
	private Users user;				//评论人的信息
	public Comments() {
	}
	public Comments(Integer cid, Integer userid, String content, String commentTime, String commentPicPath,
			Users user) {
		this.cid = cid;
		this.userid = userid;
		this.content = content;
		this.commentTime = commentTime;
		this.commentPicPath = commentPicPath;
		this.user = user;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
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
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	public String getCommentPicPath() {
		return commentPicPath;
	}
	public void setCommentPicPath(String commentPicPath) {
		this.commentPicPath = commentPicPath;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "\nComments [cid=" + cid + ", userid=" + userid + ", content=" + content + ", commentTime=" + commentTime
				+ ", commentPicPath=" + commentPicPath + ", user=" + user + "]";
	}
	
	
	
	
	
	
}
