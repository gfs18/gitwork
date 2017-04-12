package com.yc.ht.entity;

//专辑表
public class Special {
	private Integer spid;         //专辑编号
	private Integer sgid;		  //歌手编号
	private String spname;      //专辑名
	private Languages language;	//语种
	private String sppicPath; 	//封面图片路径
	private String sppubTime; 	//出版时间
	private Singer singer;	//歌手
	private Double spclick; //点击量
	private String spintroduce;//专辑介绍
	public Special() {
	}


	public Special(Integer spid, Integer sgid, String spname, Languages language, String sppicPath, String sppubTime,
			Singer singer, Double spclick, String spintroduce) {
		this.spid = spid;
		this.sgid = sgid;
		this.spname = spname;
		this.language = language;
		this.sppicPath = sppicPath;
		this.sppubTime = sppubTime;
		this.singer = singer;
		this.spclick = spclick;
		this.spintroduce = spintroduce;
	}

	public Integer getSpid() {
		return spid;
	}
	public void setSpid(Integer spid) {
		this.spid = spid;
	}
	public Integer getSgid() {
		return sgid;
	}
	public void setSgid(Integer sgid) {
		this.sgid = sgid;
	}
	public String getSpname() {
		return spname;
	}
	public void setSpname(String spname) {
		this.spname = spname;
	}
	public Languages getLanguage() {
		return language;
	}
	public void setLanguage(Languages language) {
		this.language = language;
	}
	public String getSppicPath() {
		return sppicPath;
	}
	public void setSppicPath(String sppicPath) {
		this.sppicPath = sppicPath;
	}
	public String getSppubTime() {
		return sppubTime;
	}
	public void setSppubTime(String sppubTime) {
		this.sppubTime = sppubTime;
	}
	public Singer getSinger() {
		return singer;
	}
	public void setSinger(Singer singer) {
		this.singer = singer;
	}
	public Double getSpclick() {
		return spclick;
	}
	public void setSpclick(Double spclick) {
		this.spclick = spclick;
	}
	public String getSpintroduce() {
		return spintroduce;
	}
	public void setSpintroduce(String spintroduce) {
		this.spintroduce = spintroduce;
	}


	@Override
	public String toString() {
		return "\nSpecial [spid=" + spid + ", sgid=" + sgid + ", spname=" + spname + ", language=" + language
				+ ", sppicPath=" + sppicPath + ", sppubTime=" + sppubTime + ", singer=" + singer + ", spclick="
				+ spclick + ", spintroduce=" + spintroduce + "]";
	}


}
