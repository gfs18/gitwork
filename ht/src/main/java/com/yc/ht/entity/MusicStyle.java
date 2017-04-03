package com.yc.ht.entity;

/**
 * 类型表
 * @author Super
 *
 */
public class MusicStyle {
	private Integer msid; //编号
	private String mslanguage;//语种
	private String msstyle; //风格类型
	public MusicStyle() {
	}
	public MusicStyle(Integer msid, String mslanguage, String msstyle) {
		this.msid = msid;
		this.mslanguage = mslanguage;
		this.msstyle = msstyle;
	}
	public Integer getMsid() {
		return msid;
	}
	public void setMsid(Integer msid) {
		this.msid = msid;
	}
	public String getMslanguage() {
		return mslanguage;
	}
	public void setMslanguage(String mslanguage) {
		this.mslanguage = mslanguage;
	}
	public String getMsstyle() {
		return msstyle;
	}
	public void setMsstyle(String msstyle) {
		this.msstyle = msstyle;
	}
	@Override
	public String toString() {
		return "\nMusicStyle [msid=" + msid + ", mslanguage=" + mslanguage + ", msstyle=" + msstyle + "]";
	}
	
}
