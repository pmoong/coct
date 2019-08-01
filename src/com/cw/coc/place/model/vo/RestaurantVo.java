package com.cw.coc.place.model.vo;
 
  
public  class RestaurantVo {
 
	 private String rtitle;
	 private String raddr;
	 private String rtel;
	 private int rcontenttypeid;
	 private String rcat1;
	 private String rcat2;
	 private String rcat3;
	 private String rmapx;
	 private String rmapy;
	 private String rfirstimage;
	 
	 public RestaurantVo() {}

	public RestaurantVo(String rtitle, String raddr,String rtel, int rcontenttypeid, String rcat1, String rcat2,
			String rcat3, String rmapx, String rmapy, String rfirstimage) {
		super();
		this.rtitle = rtitle;
		this.raddr = raddr;
		this.rtel = rtel;
		this.rcontenttypeid = rcontenttypeid;
		this.rcat1 = rcat1;
		this.rcat2 = rcat2;
		this.rcat3 = rcat3;
		this.rmapx = rmapx;
		this.rmapy = rmapy;
		this.rfirstimage = rfirstimage;
	}

	public String getRtitle() {
		return rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getRaddr() {
		return raddr;
	}

	public void setRaddr(String raddr) {
		this.raddr = raddr;
	}

 
 

	public String getRtel() {
		return rtel;
	}

	public void setRtel(String rtel) {
		this.rtel = rtel;
	}

	public int getRcontenttypeid() {
		return rcontenttypeid;
	}

	public void setRcontenttypeid(int rcontenttypeid) {
		this.rcontenttypeid = rcontenttypeid;
	}

	public String getRcat1() {
		return rcat1;
	}

	public void setRcat1(String rcat1) {
		this.rcat1 = rcat1;
	}

	public String getRcat2() {
		return rcat2;
	}

	public void setRcat2(String rcat2) {
		this.rcat2 = rcat2;
	}

	public String getRcat3() {
		return rcat3;
	}

	public void setRcat3(String rcat3) {
		this.rcat3 = rcat3;
	}

	public String getRmapx() {
		return rmapx;
	}

	public void setRmapx(String rmapx) {
		this.rmapx = rmapx;
	}

	public String getRmapy() {
		return rmapy;
	}

	public void setRmapy(String rmapy) {
		this.rmapy = rmapy;
	}

	public String getRfirstimage() {
		return rfirstimage;
	}

	public void setRfirstimage(String rfirstimage) {
		this.rfirstimage = rfirstimage;
	}

	@Override
	public String toString() {
		return "RestaurantVo [rtitle=" + rtitle + ", raddr=" + raddr + ", rtel=" + rtel + ", rcontenttypeid="
				+ rcontenttypeid + ", rcat1=" + rcat1 + ", rcat2=" + rcat2 + ", rcat3=" + rcat3 + ", rmapx=" + rmapx
				+ ", rmapy=" + rmapy + ", rfirstimage=" + rfirstimage + "]";
	}

 
	 
	 
	 
}

