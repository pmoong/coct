package com.cw.coc.place.model.vo;

public class CultureVoYM {

	private int cCode;
	private String ctitle;
	private String caddr;
	private int ccontenttypeid;
	private String ccat1;
	private String ccat2;
	private String ccat3;
	private String cmapx;
	private String cmapy;
	private String firstimage;
	 
	public CultureVoYM() {}

	public CultureVoYM(int cCode, String ctitle, String caddr, int ccontenttypeid, String ccat1, String ccat2,
			String ccat3, String cmapx, String cmapy, String firstimage) {
		super();
		this.cCode = cCode;
		this.ctitle = ctitle;
		this.caddr = caddr;
		this.ccontenttypeid = ccontenttypeid;
		this.ccat1 = ccat1;
		this.ccat2 = ccat2;
		this.ccat3 = ccat3;
		this.cmapx = cmapx;
		this.cmapy = cmapy;
		this.firstimage = firstimage;
	}

	public int getcCode() {
		return cCode;
	}

	public void setcCode(int cCode) {
		this.cCode = cCode;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getCaddr() {
		return caddr;
	}

	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}

	public int getCcontenttypeid() {
		return ccontenttypeid;
	}

	public void setCcontenttypeid(int ccontenttypeid) {
		this.ccontenttypeid = ccontenttypeid;
	}

	public String getCcat1() {
		return ccat1;
	}

	public void setCcat1(String ccat1) {
		this.ccat1 = ccat1;
	}

	public String getCcat2() {
		return ccat2;
	}

	public void setCcat2(String ccat2) {
		this.ccat2 = ccat2;
	}

	public String getCcat3() {
		return ccat3;
	}

	public void setCcat3(String ccat3) {
		this.ccat3 = ccat3;
	}

	public String getCmapx() {
		return cmapx;
	}

	public void setCmapx(String cmapx) {
		this.cmapx = cmapx;
	}

	public String getCmapy() {
		return cmapy;
	}

	public void setCmapy(String cmapy) {
		this.cmapy = cmapy;
	}

	public String getFirstimage() {
		return firstimage;
	}

	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}

	@Override
	public String toString() {
		return "CultureVoYM [cCode=" + cCode + ", ctitle=" + ctitle + ", caddr=" + caddr + ", ccontenttypeid="
				+ ccontenttypeid + ", ccat1=" + ccat1 + ", ccat2=" + ccat2 + ", ccat3=" + ccat3 + ", cmapx=" + cmapx
				+ ", cmapy=" + cmapy + ", firstimage=" + firstimage + "]";
	}
	
	
}
