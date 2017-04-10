package com.yc.ht.entity;

import java.util.Date;


//单曲表
public class Song {
	private Integer soid;			//单曲编号
	private Integer sgid;			//歌手编号
	private Integer spid;			//专辑编号		 
	private String soname;			//单曲名
	private String sopicPath;		//图片路径
	private String sopubTime;			//出版时间
	private String solyricPath;		//歌词路径
	private String sopath;		//单曲存储路径
	private String soduration;		//单曲时长
	private String vipDownload;		//是否是会员才能下载
	public Song() {
	}
	public Song(Integer soid, Integer sgid, Integer spid, String soname, String sopicPath, String sopubTime,
			String solyricPath, String sopath, String soduration, String vipDownload) {
		this.soid = soid;
		this.sgid = sgid;
		this.spid = spid;
		this.soname = soname;
		this.sopicPath = sopicPath;
		this.sopubTime = sopubTime;
		this.solyricPath = solyricPath;
		this.sopath = sopath;
		this.soduration = soduration;
		this.vipDownload = vipDownload;
	}
	public Integer getSoid() {
		return soid;
	}

	public void setSoid(Integer soid) {
		this.soid = soid;
	}

	public Integer getSgid() {
		return sgid;
	}

	public void setSgid(Integer sgid) {
		this.sgid = sgid;
	}

	public Integer getSpid() {
		return spid;
	}

	public void setSpid(Integer spid) {
		this.spid = spid;
	}

	public String getSoname() {
		return soname;
	}

	public void setSoname(String soname) {
		this.soname = soname;
	}

	public String getSopicPath() {
		return sopicPath;
	}

	public void setSopicPath(String sopicPath) {
		this.sopicPath = sopicPath;
	}

	public String getSopubTime() {
		return sopubTime;
	}

	public void setSopubTime(String sopubTime) {
		this.sopubTime = sopubTime;
	}

	public String getSolyricPath() {
		return solyricPath;
	}

	public void setSolyricPath(String solyricPath) {
		this.solyricPath = solyricPath;
	}

	public String getSopath() {
		return sopath;
	}

	public void setSopath(String sopath) {
		this.sopath = sopath;
	}

	public String getSoduration() {
		return soduration;
	}

	public void setSoduration(String soduration) {
		this.soduration = soduration;
	}

	public String getVipDownload() {
		return vipDownload;
	}

	public void setVipDownload(String vipDownload) {
		this.vipDownload = vipDownload;
	}

	@Override
	public String toString() {
		return "\nSong [soid=" + soid + ", sgid=" + sgid + ", spid=" + spid + ", soname=" + soname + ", sopicPath="
				+ sopicPath + ", sopubTime=" + sopubTime + ", solyricPath=" + solyricPath + ", sopath=" + sopath
				+ ", soduration=" + soduration + ", vipDownload=" + vipDownload + "]";
	}
	
	
	
	
}
