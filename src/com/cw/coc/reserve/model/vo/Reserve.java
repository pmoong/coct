package com.cw.coc.reserve.model.vo;

import java.sql.Date;

public class Reserve {
	private int rsvCode;
	private int uno;
	private int rmCode;
	private Date rsvDate;
	private Date ciDate;
	
	public Reserve () {}

	public Reserve(int rsvCode, int uno, int rmCode, Date rsvDate, Date ciDate) {
		super();
		this.rsvCode = rsvCode;
		this.uno = uno; 
		this.rmCode = rmCode;
		this.rsvDate = rsvDate;
		this.ciDate = ciDate;
	}

	public int getRsvCode() {
		return rsvCode;
	}

	public void setRsvCode(int rsvCode) {
		this.rsvCode = rsvCode;
	}

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public int getRmCode() {
		return rmCode;
	}

	public void setRmCode(int rmCode) {
		this.rmCode = rmCode;
	}

	public Date getRsvDate() {
		return rsvDate;
	}

	public void setRsvDate(Date rsvDate) {
		this.rsvDate = rsvDate;
	}

	public Date getCiDate() {
		return ciDate;
	}

	public void setCiDate(Date ciDate) {
		this.ciDate = ciDate;
	}

	@Override
	public String toString() {
		return "Reserve [rsvCode=" + rsvCode + ", uno=" + uno + ", rmCode=" + rmCode + ", rsvDate=" + rsvDate
				+ ", ciDate=" + ciDate + "]";
	}
	
	
	
}
