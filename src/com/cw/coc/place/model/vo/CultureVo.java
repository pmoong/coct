package com.cw.coc.place.model.vo;
 

public  class CultureVo {
 
	 private String ctitle;
	 private String caddr1;
	/* private String ctel;*/
	 private int ccontenttypeid;
	 private String ccat1;
	 private String ccat2;
	 private String ccat3;
	 private String cmapx;
	 private String cmapy;

	 private String cfirstimage;
	 
	 public CultureVo() {}
	public String getCtitle() {
		return ctitle;
	} 
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCaddr1() {
		return caddr1;
	}
	public void setCaddr1(String caddr1) {
		this.caddr1 = caddr1;
	}
/*	public String getCtel() {
		return ctel;
	}
	public void setCtel(String ctel) {
		this.ctel = ctel;
	}*/
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
	
	 
	public String getCfirstimage() {
		return cfirstimage;
	}
	public void setCfirstimage(String cfirstimage) {
		this.cfirstimage = cfirstimage;
	}
	public CultureVo(String ctitle, String caddr1, int ccontenttypeid, String ccat1, String ccat2,
			String ccat3, String cmapx, String cmapy,String cfirstimage) {
		super();
		this.ctitle = ctitle;
		this.caddr1 = caddr1;
		/*this.ctel = ctel;*/
		this.ccontenttypeid = ccontenttypeid;
		this.ccat1 = ccat1;
		this.ccat2 = ccat2;
		this.ccat3 = ccat3;
		this.cmapx = cmapx;
		this.cmapy = cmapy;
		this.cfirstimage=cfirstimage;
System.out.println("fds");
	}
	@Override
	public String toString() {
		return "CultureVo [ctitle=" + ctitle + ", caddr1=" + caddr1 + ", ccontenttypeid=" + ccontenttypeid + ", ccat1="
				+ ccat1 + ", ccat2=" + ccat2 + ", ccat3=" + ccat3 + ", cmapx=" + cmapx + ", cmapy=" + cmapy
				+ ", cfirstimage=" + cfirstimage + "]";
	}
	 
 
	 
}

