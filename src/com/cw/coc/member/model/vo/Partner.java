package com.cw.coc.member.model.vo;

import java.sql.Date;

public class Partner {
    private int uno;         	//회원번호
    private String regstNum;	//사업자등록번호
    private Date estaDate;		//개업일
    private String phone;		//전화번호
    private String taxType;		//간이과세구분
    private int cCode;			//업체코드
    private String busType;		//업태
    private String busItems;	//업종
    private String reprenName;	//대표자명
    private String picName;		//업체담당자명
    private String comName;		//상호명
   
    public Partner() {}

	public Partner(int uno, String regstNum, Date estaDate, String phone, String taxType, int cCode, String busType,
			String busItems, String reprenName, String picName, String comName) {
		super();
		this.uno = uno;
		this.regstNum = regstNum;
		this.estaDate = estaDate;
		this.phone = phone;
		this.taxType = taxType;
		this.cCode = cCode;
		this.busType = busType;
		this.busItems = busItems;
		this.reprenName = reprenName;
		this.picName = picName;
		this.comName = comName;
	}

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public String getRegstNum() {
		return regstNum;
	}

	public void setRegstNum(String regstNum) {
		this.regstNum = regstNum;
	}

	public Date getEstaDate() {
		return estaDate;
	}

	public void setEstaDate(Date estaDate) {
		this.estaDate = estaDate;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTaxType() {
		return taxType;
	}

	public void setTaxType(String taxType) {
		this.taxType = taxType;
	}

	public int getcCode() {
		return cCode;
	}

	public void setcCode(int cCode) {
		this.cCode = cCode;
	}

	public String getBusType() {
		return busType;
	}

	public void setBusType(String busType) {
		this.busType = busType;
	}

	public String getBusItems() {
		return busItems;
	}

	public void setBusItems(String busItems) {
		this.busItems = busItems;
	}

	public String getReprenName() {
		return reprenName;
	}

	public void setReprenName(String reprenName) {
		this.reprenName = reprenName;
	}

	public String getPicName() {
		return picName;
	}

	public void setPicName(String picName) {
		this.picName = picName;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	@Override
	public String toString() {
		return "Partner [uno=" + uno + ", regstNum=" + regstNum + ", estaDate=" + estaDate + ", phone=" + phone
				+ ", taxType=" + taxType + ", cCode=" + cCode + ", busType=" + busType + ", busItems=" + busItems
				+ ", reprenName=" + reprenName + ", picName=" + picName + ", comName=" + comName + "]";
	}
	
}
