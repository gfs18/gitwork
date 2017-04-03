package com.yc.ht.entity;

//歌手表
public class Singer {
	private Integer sgid;			//歌手编号
	private String sgname;			//歌手名
	private String sgEname;			//歌手英文名
	private String sgnation;		//国籍
	private String sggender;		//性别
	private Languages languaes;		//音乐语种编号
	private String sgpicPath;		//头像路径
	private String sgintroduce;		//歌手介绍
	
	public Singer() {
	}

	public Singer(Integer sgid, String sgname, String sgEname, String sgnation, String sggender, Languages languaes,
			String sgpicPath, String sgintroduce) {
		this.sgid = sgid;
		this.sgname = sgname;
		this.sgEname = sgEname;
		this.sgnation = sgnation;
		this.sggender = sggender;
		this.languaes = languaes;
		this.sgpicPath = sgpicPath;
		this.sgintroduce = sgintroduce;
	}

	public Integer getSgid() {
		return sgid;
	}

	public void setSgid(Integer sgid) {
		this.sgid = sgid;
	}

	public String getSgname() {
		return sgname;
	}

	public void setSgname(String sgname) {
		this.sgname = sgname;
	}

	public String getSgEname() {
		return sgEname;
	}

	public void setSgEname(String sgEname) {
		this.sgEname = sgEname;
	}

	public String getSgnation() {
		return sgnation;
	}

	public void setSgnation(String sgnation) {
		this.sgnation = sgnation;
	}

	public String getSggender() {
		return sggender;
	}

	public void setSggender(String sggender) {
		this.sggender = sggender;
	}

	public Languages getLanguaes() {
		return languaes;
	}

	public void setLanguaes(Languages languaes) {
		this.languaes = languaes;
	}

	public String getSgpicPath() {
		return sgpicPath;
	}

	public void setSgpicPath(String sgpicPath) {
		this.sgpicPath = sgpicPath;
	}

	public String getSgintroduce() {
		return sgintroduce;
	}

	public void setSgintroduce(String sgintroduce) {
		this.sgintroduce = sgintroduce;
	}

	@Override
	public String toString() {
		return "\nSinger [sgid=" + sgid + ", sgname=" + sgname + ", sgEname=" + sgEname + ", sgnation=" + sgnation
				+ ", sggender=" + sggender + ", languaes=" + languaes + ", sgpicPath=" + sgpicPath + ", sgintroduce="
				+ sgintroduce + "]";
	}
}
