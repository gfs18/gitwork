package com.yc.ht.entity;


public class Mv {
	private Integer mvid;           //mv编号
	private String mvname;		//mv名字
	private Integer sgid;			//歌手编号
	private Integer soid;			//单曲编号
	private String mvduration;	//mv时长
	private String mvpicPath;	//图片路径
	private String mvpubTime;		//出版时间
	private String mvPath;		//mv存放路径
	private Singer singer;   //歌手
	private Song song;//单曲
	public Mv() {
	}
	public Mv(Integer mvid, String mvname, Integer sgid, Integer soid, String mvduration, String mvpicPath,
			String mvpubTime, String mvPath, Singer singer, Song song) {
		this.mvid = mvid;
		this.mvname = mvname;
		this.sgid = sgid;
		this.soid = soid;
		this.mvduration = mvduration;
		this.mvpicPath = mvpicPath;
		this.mvpubTime = mvpubTime;
		this.mvPath = mvPath;
		this.singer = singer;
		this.song = song;
	}
	public Integer getMvid() {
		return mvid;
	}
	public void setMvid(Integer mvid) {
		this.mvid = mvid;
	}
	public String getMvname() {
		return mvname;
	}
	public void setMvname(String mvname) {
		this.mvname = mvname;
	}
	public Integer getSgid() {
		return sgid;
	}
	public void setSgid(Integer sgid) {
		this.sgid = sgid;
	}
	public Integer getSoid() {
		return soid;
	}
	public void setSoid(Integer soid) {
		this.soid = soid;
	}
	public String getMvduration() {
		return mvduration;
	}
	public void setMvduration(String mvduration) {
		this.mvduration = mvduration;
	}
	public String getMvpicPath() {
		return mvpicPath;
	}
	public void setMvpicPath(String mvpicPath) {
		this.mvpicPath = mvpicPath;
	}
	public String getMvpubTime() {
		return mvpubTime;
	}
	public void setMvpubTime(String mvpubTime) {
		this.mvpubTime = mvpubTime;
	}
	public String getMvPath() {
		return mvPath;
	}
	public void setMvPath(String mvPath) {
		this.mvPath = mvPath;
	}
	public Singer getSinger() {
		return singer;
	}
	public void setSinger(Singer singer) {
		this.singer = singer;
	}
	public Song getSong() {
		return song;
	}
	public void setSong(Song song) {
		this.song = song;
	}
	@Override
	public String toString() {
		return "\nMv [mvid=" + mvid + ", mvname=" + mvname + ", sgid=" + sgid + ", soid=" + soid + ", mvduration="
				+ mvduration + ", mvpicPath=" + mvpicPath + ", mvpubTime=" + mvpubTime + ", mvPath=" + mvPath
				+ ", singer=" + singer + ", song=" + song + "]";
	}
	
	
	
	
	
	
}
