package com.yc.ht.entity;

//评论表
public class Comments {
	private Integer cid; 		//评论编号
	private Integer userid;		//被评论的歌曲编号
	private String content;		//评论人编号
	private String commentTime;		//评论内容
	private String commentPicPath;	//评论时间
	public Comments() {
	}
	public Comments(Integer cid, Integer userid, String content, String commentTime, String commentPicPath) {
		this.cid = cid;
		this.userid = userid;
		this.content = content;
		this.commentTime = commentTime;
		this.commentPicPath = commentPicPath;
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
	@Override
	public String toString() {
		return "\nComments [cid=" + cid + ", userid=" + userid + ", content=" + content + ", commentTime=" + commentTime
				+ ", commentPicPath=" + commentPicPath + "]";
	}
	
	
	
	
	
	
	
	
}
