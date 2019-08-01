package com.cw.coc.member.model.vo;

import java.sql.Date;

public class Payment {
	private String pCode;
	private int uno;
	private Date pDate;
	private int price;
	private String pType;
	private String pStatus;
	private int rsvCode;
	
	public Payment() {}
	public Payment(String pCode, int uno, Date pDate, int price, String pType, String pStatus, int rsvCode) {
		super();
		this.pCode = pCode;
		this.uno = uno;
		this.pDate = pDate;
		this.price = price;
		this.pType = pType;
		this.pStatus = pStatus;
		this.rsvCode = rsvCode;
	}
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
	}
	public int getUno() {
		return uno;
	}
	public void setUno(int uno) {
		this.uno = uno;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getpType() {
		return pType;
	}
	public void setpType(String pType) {
		this.pType = pType;
	}
	public String getpStatus() {
		return pStatus;
	}
	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}
	public int getRsvCode() {
		return rsvCode;
	}
	public void setRsvCode(int rsvCode) {
		this.rsvCode = rsvCode;
	}
	@Override
	public String toString() {
		return "Payment [pCode=" + pCode + ", uno=" + uno + ", pDate=" + pDate + ", price=" + price + ", pType=" + pType
				+ ", pStatus=" + pStatus + ", rsvCode=" + rsvCode + "]";
	}
	
	
}
