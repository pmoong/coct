package com.cw.coc.place.model.vo;

public class LogmentVoYM {
	
	private int cCode;
	private String ltitle;
	private String laddr;
	private int lsigungucode;
	private String ltel;
	private int lcontenttypeid;
	private String lcat1;
	private String lcat2;
	private String lcat3;
	private String lmapx;
	private String lmapy;
	private String lfirstimage;
	
	public LogmentVoYM() {}
	
	public LogmentVoYM(int cCode, String ltitle, String laddr, int lsigungucode, String ltel, int lcontenttypeid,
			String lcat1, String lcat2, String lcat3, String lmapx, String lmapy, String lfirstimage) {
		super();
		this.cCode = cCode;
		this.ltitle = ltitle;
		this.laddr = laddr;
		this.lsigungucode = lsigungucode;
		this.ltel = ltel;
		this.lcontenttypeid = lcontenttypeid;
		this.lcat1 = lcat1;
		this.lcat2 = lcat2;
		this.lcat3 = lcat3;
		this.lmapx = lmapx;
		this.lmapy = lmapy;
		this.lfirstimage = lfirstimage;
	}



	public int getcCode() {
		return cCode;
	}

	public void setcCode(int cCode) {
		this.cCode = cCode;
	}

	public String getLtitle() {
		return ltitle;
	}

	public void setLtitle(String ltitle) {
		this.ltitle = ltitle;
	}

	public String getLaddr() {
		return laddr;
	}

	public void setLaddr(String laddr) {
		this.laddr = laddr;
	}

	public int getLsigungucode() {
		return lsigungucode;
	}

	public void setLsigungucode(int lsigungucode) {
		this.lsigungucode = lsigungucode;
	}

	public String getLtel() {
		return ltel;
	}

	public void setLtel(String ltel) {
		this.ltel = ltel;
	}

	public int getLcontenttypeid() {
		return lcontenttypeid;
	}

	public void setLcontenttypeid(int lcontenttypeid) {
		this.lcontenttypeid = lcontenttypeid;
	}

	public String getLcat1() {
		return lcat1;
	}

	public void setLcat1(String lcat1) {
		this.lcat1 = lcat1;
	}

	public String getLcat2() {
		return lcat2;
	}

	public void setLcat2(String lcat2) {
		this.lcat2 = lcat2;
	}

	public String getLcat3() {
		return lcat3;
	}

	public void setLcat3(String lcat3) {
		this.lcat3 = lcat3;
	}

	public String getLmapx() {
		return lmapx;
	}

	public void setLmapx(String lmapx) {
		this.lmapx = lmapx;
	}

	public String getLmapy() {
		return lmapy;
	}

	public void setLmapy(String lmapy) {
		this.lmapy = lmapy;
	}

	public String getLfirstimage() {
		return lfirstimage;
	}

	public void setLfirstimage(String lfirstimage) {
		this.lfirstimage = lfirstimage;
	}

	@Override
	public String toString() {
		return "LogmentVoYM [cCode=" + cCode + ", ltitle=" + ltitle + ", laddr=" + laddr + ", lsigungucode="
				+ lsigungucode + ", ltel=" + ltel + ", lcontenttypeid=" + lcontenttypeid + ", lcat1=" + lcat1
				+ ", lcat2=" + lcat2 + ", lcat3=" + lcat3 + ", lmapx=" + lmapx + ", lmapy=" + lmapy + ", lfirstimage="
				+ lfirstimage + "]";
	}
	
	
}
