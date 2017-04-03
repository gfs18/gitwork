package com.yc.ht.entity;

public class Admin {
	private Integer aid;//管理员id
	private String aname;//管理员姓名
	private String apwd;//管理员密码
	private Integer acondition; //账号状态 1可用 0不可用
	private String mark;//预留字段 
	public Admin() {
	}
	public Admin(Integer aid, String aname, String apwd, Integer acondition, String mark) {
		this.aid = aid;
		this.aname = aname;
		this.apwd = apwd;
		this.acondition = acondition;
		this.mark = mark;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public Integer getAcondition() {
		return acondition;
	}
	public void setAcondition(Integer acondition) {
		this.acondition = acondition;
	}
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	@Override
	public String toString() {
		return "\nAdmin [aid=" + aid + ", aname=" + aname + ", apwd=" + apwd + ", acondition=" + acondition + ", mark="
				+ mark + "]";
	}
	
	
}
