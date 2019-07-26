package com.cw.coc.member.model.vo;

import java.sql.Date;

public class Survey {
	private int sCode;
	private String iCode;
	private int uno;
	private Date sDate;
	public Survey(int sCode, String iCode, int uno, Date sDate) {
		super();
		this.sCode = sCode;
		this.iCode = iCode;
		this.uno = uno;
		this.sDate = sDate;
	}
	public int getsCode() {
		return sCode;
	}
	public void setsCode(int sCode) {
		this.sCode = sCode;
	}
	public String getiCode() {
		return iCode;
	}
	public void setiCode(String iCode) {
		this.iCode = iCode;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public Date getsDate() {
		return sDate;
	}
	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}
	@Override
	public String toString() {
		return "Survey [sCode=" + sCode + ", iCode=" + iCode + ", uno=" + uno + ", sDate=" + sDate + "]";
	}
	
	
}
