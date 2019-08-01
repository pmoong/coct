package com.cw.coc.choice.model.vo;

public class Coc {
	private int uno;
	private int cCode;
	private int cocNo;
	
	public Coc() {}

	public Coc(int uno, int cCode, int cocNo) {
		super();
		this.uno = uno;
		this.cCode = cCode;
		this.cocNo = cocNo;
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

	public int getCocNo() {
		return cocNo;
	}

	public void setCocNo(int cocNo) {
		this.cocNo = cocNo;
	}

	@Override
	public String toString() {
		return "Coc [uno=" + uno + ", cCode=" + cCode + ", cocNo=" + cocNo + "]";
	}
	
	
}
