package com.yc.ht.entity;


//用户表
public class Users {
	private Integer userid;         //用户编号
	private String uname;			//用户名
	private String upwd;			//密码
	private String uemail;			//邮箱
	private String upicPath;		//头像路径
	private String uintroduce;		//个人简介
	private Integer ucondition;		//账号状态 1可用 0不可用
	private Integer uvip;			//会员状态 1是   0否
	
	
	public Users() {
	}
	
	public Users(Integer userid, String uname, String upwd, String uemail, String upicPath, String uintroduce,
			Integer ucondition, Integer uvip) {
		this.userid = userid;
		this.uname = uname;
		this.upwd = upwd;
		this.uemail = uemail;
		this.upicPath = upicPath;
		this.uintroduce = uintroduce;
		this.ucondition = ucondition;
		this.uvip = uvip;
	}

	

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUpicPath() {
		return upicPath;
	}

	public void setUpicPath(String upicPath) {
		this.upicPath = upicPath;
	}

	public String getUintroduce() {
		return uintroduce;
	}

	public void setUintroduce(String uintroduce) {
		this.uintroduce = uintroduce;
	}

	public Integer getUcondition() {
		return ucondition;
	}

	public void setUcondition(Integer ucondition) {
		this.ucondition = ucondition;
	}

	public Integer getUvip() {
		return uvip;
	}

	public void setUvip(Integer uvip) {
		this.uvip = uvip;
	}

	@Override
	public String toString() {
		return "\nUsers [userid=" + userid + ", uname=" + uname + ", upwd=" + upwd + ", uemail=" + uemail + ", upicPath="
				+ upicPath + ", uintroduce=" + uintroduce + ", ucondition=" + ucondition + ", uvip=" + uvip + "]";
	}
	
	
}
