package com.cw.coc.place.model.vo;

public class Place implements java.io.Serializable{
	
	private int cCode;				//업체코드
	private String pName;			//가게명
	private String pAddress;		//주소
	private String image;			//이미지
	private String uType;			//구분
	private int iCode;				//문항코드
	private String iContent;
	
	public Place() {}

	public Place(int cCode, String pName, String pAddress, String image, String uType, int iCode, String iContent) {
		super();
		this.cCode = cCode;
		this.pName = pName;
		this.pAddress = pAddress;
		this.image = image;
		this.uType = uType;
		this.iCode = iCode;
		this.iContent = iContent;
	}

	public int getcCode() {
		return cCode;
	}

	public void setcCode(int cCode) {
		this.cCode = cCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpAddress() {
		return pAddress;
	}

	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getuType() {
		return uType;
	}

	public void setuType(String uType) {
		this.uType = uType;
	}

	public int getiCode() {
		return iCode;
	}

	public void setiCode(int iCode) {
		this.iCode = iCode;
	}
	
	public String getiContent() {
		return iContent;
	}

	public void setiContent(String iContent) {
		this.iContent = iContent;
	}
	
	@Override
	public String toString() {
		return "Place [cCode=" + cCode + ", pName=" + pName + ", pAddress=" + pAddress + ", image=" + image + ", uType="
				+ uType + ", iCode=" + iCode + ", iContent =" + iContent + "]";
	}
	
	
}
