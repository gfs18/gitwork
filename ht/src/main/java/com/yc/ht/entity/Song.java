package com.yc.ht.entity;

import java.util.Date;


//单曲表
public class Song {
	private Integer soid;			//单曲编号
	private Integer sgid;			//歌手编号
	private Integer spid;			//专辑编号		 
	private String soname;			//单曲名
	private String sopicPath;		//图片路径
	private Date sopubTime;			//出版时间
	private String solyricPath;		//歌词路径
	private String songPath;		//单曲存储路径
	private MusicStyle musicStyle;	//单曲类型
	private String soduration;		//单曲时长
	private String vipDownload;		//是否是会员才能下载
	public Song() {
	}
	public Song(Integer soid, Integer sgid, Integer spid, String soname, String sopicPath, Date sopubTime,
			String solyricPath, String songPath, MusicStyle musicStyle, String soduration, String vipDownload) {
		this.soid = soid;
		this.sgid = sgid;
		this.spid = spid;
		this.soname = soname;
		this.sopicPath = sopicPath;
		this.sopubTime = sopubTime;
		this.solyricPath = solyricPath;
		this.songPath = songPath;
		this.musicStyle = musicStyle;
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
	public Date getSopubTime() {
		return sopubTime;
	}
	public void setSopubTime(Date sopubTime) {
		this.sopubTime = sopubTime;
	}
	public String getSolyricPath() {
		return solyricPath;
	}
	public void setSolyricPath(String solyricPath) {
		this.solyricPath = solyricPath;
	}
	public String getSongPath() {
		return songPath;
	}
	public void setSongPath(String songPath) {
		this.songPath = songPath;
	}
	public MusicStyle getMusicStyle() {
		return musicStyle;
	}
	public void setMusicStyle(MusicStyle musicStyle) {
		this.musicStyle = musicStyle;
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
				+ sopicPath + ", sopubTime=" + sopubTime + ", solyricPath=" + solyricPath + ", songPath=" + songPath
				+ ", musicStyle=" + musicStyle + ", soduration=" + soduration + ", vipDownload=" + vipDownload + "]";
	}
	
	
	
	
	
}
