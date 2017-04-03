package com.yc.ht.entity;

//用户收藏表
public class Collects {
	private Integer coid;    //收藏编号
	private Integer userid;  //用户编号
	private Integer soid;    //单曲编号
	
	public Collects() {
		
	}

	

	public Collects(Integer coid, Integer userid, Integer soid) {
		super();
		this.coid = coid;
		this.userid = userid;
		this.soid = soid;
	}



	public Integer getCoid() {
		return coid;
	}



	public void setCoid(Integer coid) {
		this.coid = coid;
	}



	public Integer getUserid() {
		return userid;
	}



	public void setUserid(Integer userid) {
		this.userid = userid;
	}



	public Integer getSoid() {
		return soid;
	}



	public void setSoid(Integer soid) {
		this.soid = soid;
	}



	@Override
	public String toString() {
		return "\nCollects [coid=" + coid + ", userid=" + userid + ", soid=" + soid + "]";
	}
	
	
}
