package com.cw.coc.member.model.vo;

public class Interest {
	private String iCode;			//문항코드
	private String iContent;		//문항내용
	private String iCategory;	//카테고리코드
	
	
	public Interest() {}


	public Interest(String iCode, String iContent, String iCategory) {
		super();
		this.iCode = iCode;
		this.iContent = iContent;
		this.iCategory = iCategory;
	}


	public String getiCode() {
		return iCode;
	}


	public void setiCode(String iCode) {
		this.iCode = iCode;
	}


	public String getiContent() {
		return iContent;
	}


	public void setiContent(String iContent) {
		this.iContent = iContent;
	}


	public String getiCategory() {
		return iCategory;
	}


	public void setiCategory(String iCategory) {
		this.iCategory = iCategory;
	}


	@Override
	public String toString() {
		return "Interest [iCode=" + iCode + ", iContent=" + iContent + ", iCategory=" + iCategory + "]";
	}

	
}
