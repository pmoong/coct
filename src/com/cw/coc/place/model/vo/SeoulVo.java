package com.cw.coc.place.model.vo;

public class SeoulVo {
	 
	 private String title;
	 private String addr1;
/*  private String tel; */
	 private int contenttypeid;
	 private String cat1;
	 private String cat2;
	 private String cat3;
	 private String mapx;
	 private String  mapy;
	 private String img;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
 /*	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	} */
	
 
	public int getContenttypeid() {
		return contenttypeid;
	}
	public void setContenttypeid(int contenttypeid) {
		this.contenttypeid = contenttypeid;
	}
	public String getCat1() {
		return cat1;
	} 
	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}
	public String getCat2() {
		return cat2;
	}
	public void setCat2(String cat2) {
		this.cat2 = cat2;
	}
	public String getCat3() {
		return cat3;
	}
	public void setCat3(String cat3) {
		this.cat3 = cat3;
	}
	public String getMapx() {
		return mapx;
	}
	public void setMapx(String mapx) {
		this.mapx = mapx;
	}
	public String getMapy() {
		return mapy;
	}
	public void setMapy(String mapy) {
		this.mapy = mapy;
	}
	
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public SeoulVo(String title, String addr1, int contenttypeid, String cat1, String cat2, String cat3,
			String mapx, String mapy,String img) {
 		this.title = title;
		this.addr1 = addr1;
	/* 	this.tel = tel; */
		this.contenttypeid = contenttypeid;
		this.cat1 = cat1;
		this.cat2 = cat2;
		this.cat3 = cat3;
		this.mapx = mapx;
		this.mapy = mapy;
		this.img=img;
	}
	 
 
	 
	 
	 
	 
}