package com.cw.coc.board.model.vo;

import java.sql.Date;

public class Board {
	private int bCode;
	private Date bDate;
	private String bTitle;
	private String bContent;
	private String bType;
	private String bWriter;
	private int cCode;
	private String pCode;
	private int bno;
	private String uType;
	private int count;
	private Date modifiyDate;
	
	public Board(){}

	public Board(int bCode, Date bDate, String bTitle, String bContent, String bType, String bWriter, int cCode,
			String pCode, int bno, String uType, int count, Date modifiyDate) {
		super();
		this.bCode = bCode;
		this.bDate = bDate;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bType = bType;
		this.bWriter = bWriter;
		this.cCode = cCode;
		this.pCode = pCode;
		this.bno = bno;
		this.uType = uType;
		this.count = count;
		this.modifiyDate = modifiyDate;
	}

	public int getbCode() {
		return bCode;
	}

	public void setbCode(int bCode) {
		this.bCode = bCode;
	}


	public String getbWriter() {
		return bWriter;
	}

	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public String getbType() {
		return bType;
	}

	public void setbType(String bType) {
		this.bType = bType;
	}

	public int getcCode() {
		return cCode;
	}

	public void setcCode(int cCode) {
		this.cCode = cCode;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getuType() {
		return uType;
	}

	public void setuType(String uType) {
		this.uType = uType;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Date getModifiyDate() {
		return modifiyDate;
	}

	public void setModifiyDate(Date modifiyDate) {
		this.modifiyDate = modifiyDate;
	}

	@Override
	public String toString() {
		return "Board [bCode=" + bCode + ", bDate=" + bDate + ", bTitle=" + bTitle + ", bContent=" + bContent
				+ ", bType=" + bType + ", bWriter=" + bWriter + ", cCode=" + cCode + ", pCode=" + pCode + ", bno=" + bno
				+ ", uType=" + uType + ", count=" + count + ", modifiyDate=" + modifiyDate + "]";
	}

	
	
	 
}
