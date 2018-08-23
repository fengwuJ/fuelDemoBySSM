package com.model;

import java.sql.Date;

public class Dcsqsh {
	private int id;
	private String gysname;
	private Date time;
	private String sqdw;
	private String splx;
	private String cz;
	
	public String getCz() {
		return cz;
	}
	public String getGysname() {
		return gysname;
	}
	public int getId() {
		return id;
	}
	public String getSplx() {
		return splx;
	}
	public String getSqdw() {
		return sqdw;
	}
	public Date getTime() {
		return time;
	}
	
	public void setCz(String cz) {
		this.cz = cz;
	}
	public void setGysname(String gysname) {
		this.gysname = gysname;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setSplx(String splx) {
		this.splx = splx;
	}
	public void setSqdw(String sqdw) {
		this.sqdw = sqdw;
	}
	public void setTime(Date time) {
		this.time = time;
	}
}
