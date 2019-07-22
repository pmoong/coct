package com.cw.coc.notice.model.vo;

import java.sql.Date;

public class Board {
	private String bCode;
	private Date bdate;
	private String bTitle;
	private String bContent;
	private String bType;
	private String coCode;
	private String payCode;
	private String revAuthor;
	private String notAuthor;
	private String qaAuthor;
	
	public Board() {}

	public Board(String bCode, Date bdate, String bTitle, String bContent, String bType, String coCode, String payCode,
			String revAuthor, String notAuthor, String qaAuthor) {
		super();
		this.bCode = bCode;
		this.bdate = bdate;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bType = bType;
		this.coCode = coCode;
		this.payCode = payCode;
		this.revAuthor = revAuthor;
		this.notAuthor = notAuthor;
		this.qaAuthor = qaAuthor;
	}

	public String getbCode() {
		return bCode;
	}

	public void setbCode(String bCode) {
		this.bCode = bCode;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
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

	public String getCoCode() {
		return coCode;
	}

	public void setCoCode(String coCode) {
		this.coCode = coCode;
	}

	public String getPayCode() {
		return payCode;
	}

	public void setPayCode(String payCode) {
		this.payCode = payCode;
	}

	public String getRevAuthor() {
		return revAuthor;
	}

	public void setRevAuthor(String revAuthor) {
		this.revAuthor = revAuthor;
	}

	public String getNotAuthor() {
		return notAuthor;
	}

	public void setNotAuthor(String notAuthor) {
		this.notAuthor = notAuthor;
	}

	public String getQaAuthor() {
		return qaAuthor;
	}

	public void setQaAuthor(String qaAuthor) {
		this.qaAuthor = qaAuthor;
	}

	@Override
	public String toString() {
		return "Board [bCode=" + bCode + ", bdate=" + bdate + ", bTitle=" + bTitle + ", bContent=" + bContent
				+ ", bType=" + bType + ", coCode=" + coCode + ", payCode=" + payCode + ", revAuthor=" + revAuthor
				+ ", notAuthor=" + notAuthor + ", qaAuthor=" + qaAuthor + "]";
	}
	
	

}
