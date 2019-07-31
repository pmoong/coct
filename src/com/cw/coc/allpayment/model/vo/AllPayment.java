package com.cw.coc.allpayment.model.vo;

import java.sql.Date;

public class AllPayment {
	 
	private int cCode;
	private String pName;
	private Date pDate;
	private int price;
	
	public AllPayment() {}

	public AllPayment(int cCode, String pName, Date pDate, int price) {
		super();
		this.cCode = cCode;
		this.pName = pName;
		this.pDate = pDate;
		this.price = price;
	}

	public int getcCode() {
		return cCode;
	}

	public void setcCode(int cCode) {
		this.cCode = cCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
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

	@Override
	public String toString() {
		return "AllPayment [cCode=" + cCode + ", pName=" + pName + ", pDate=" + pDate + ", price=" + price + "]";
	}
	
	
}
