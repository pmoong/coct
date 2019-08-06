package com.cw.coc.room.model.vo;

public class Room {
	private String rmName;
	private int rmCode;
	private int uno;
	private int cCode;
	private int sleeps;
	private int sleepsMax;
	private int epc;
	private int price;
	private String rmImage;
	
	public Room() {}

	public Room(String rmName, int rmCode, int uno, int cCode, int sleeps, int sleepsMax, int epc, int price, String rmImage) {
		super();
		this.rmName = rmName;
		this.rmCode = rmCode;
		this.uno = uno;
		this.cCode = cCode;
		this.sleeps = sleeps;
		this.sleepsMax = sleepsMax;
		this.epc = epc;
		this.price = price;
		this.rmImage = rmImage;
	}

	public String getRmName() {
		return rmName;
	}

	public void setRmName(String rmName) {
		this.rmName = rmName;
	}

	public int getRmCode() {
		return rmCode;
	}

	public void setRmCode(int rmCode) {
		this.rmCode = rmCode;
	}

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public int getcCode() {
		return cCode;
	}

	public void setcCode(int cCode) {
		this.cCode = cCode;
	}

	public int getSleeps() {
		return sleeps;
	}

	public void setSleeps(int sleeps) {
		this.sleeps = sleeps;
	}

	public int getSleepsMax() {
		return sleepsMax;
	}

	public void setSleepsMax(int sleepsMax) {
		this.sleepsMax = sleepsMax;
	}

	public int getEpc() {
		return epc;
	}

	public void setEpc(int epc) {
		this.epc = epc;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getrmImage() {
		return rmImage;
	}

	public void setrmImage(String rmImage) {
		this.rmImage = rmImage;
	}
	
	@Override
	public String toString() {
		return "Room [rmName=" + rmName + ", rmCode=" + rmCode + ", uno=" + uno + ", cCode=" + cCode + ", sleeps="
				+ sleeps + ", sleepsMax=" + sleepsMax + ", epc=" + epc + ", price=" + price + "]";
	}
	
	
}
