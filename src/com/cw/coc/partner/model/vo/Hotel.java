package com.cw.coc.partner.model.vo;

import java.sql.Date;

public class Hotel implements java.io.Serializable {
	
	private int hid;
	private int hType;
	private int bno;
	private String category;
	private String hTitle;
	private String hContent;
	private String hWriter;
	private Date hDate;
	private Date modifyDate;
	private String status;
	
	public Hotel() {}
	public Hotel(int hid, int hType, int bno, String category, String hTitle, String hContent, String hWriter,
			Date hDate, Date modifyDate, String status) {
		super();
		this.hid = hid;
		this.hType = hType;
		this.bno = bno;
		this.category = category;
		this.hTitle = hTitle;
		this.hContent = hContent;
		this.hWriter = hWriter;
		this.hDate = hDate;
		this.modifyDate = modifyDate;
		this.status = status;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public int gethType() {
		return hType;
	}
	public void sethType(int hType) {
		this.hType = hType;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String gethTitle() {
		return hTitle;
	}
	public void sethTitle(String hTitle) {
		this.hTitle = hTitle;
	}
	public String gethContent() {
		return hContent;
	}
	public void sethContent(String hContent) {
		this.hContent = hContent;
	}
	public String gethWriter() {
		return hWriter;
	}
	public void sethWriter(String hWriter) {
		this.hWriter = hWriter;
	}
	public Date gethDate() {
		return hDate;
	}
	public void sethDate(Date hDate) {
		this.hDate = hDate;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Hotel [hid=" + hid + ", hType=" + hType + ", bno=" + bno + ", category=" + category + ", hTitle="
				+ hTitle + ", hContent=" + hContent + ", hWriter=" + hWriter + ", hDate=" + hDate + ", modifyDate="
				+ modifyDate + ", status=" + status + "]";
	}
	
	
	
}
