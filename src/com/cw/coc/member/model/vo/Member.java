package com.cw.coc.member.model.vo;

public class Member {

   private int uno;         //회원번호
   private String userId;      //회원ID
   private String userPwd;      //회원PWD
   private String email;      //이메일
   private String uType;      //구분
   private String gender;      //성별
   private int age;         //나이
   private String iCode;      //문항코드
   private int status = 99;   
   
   public Member() {}

public Member(int uno, String userId, String userPwd, String email, String uType, String gender, int age, String iCode,
		int status) {
	super();
	this.uno = uno;
	this.userId = userId;
	this.userPwd = userPwd;
	this.email = email;
	this.uType = uType;
	this.gender = gender;
	this.age = age;
	this.iCode = iCode;
	this.status = status;
}

public int getUno() {
	return uno;
}

public void setUno(int uno) {
	this.uno = uno;
}

public String getUserId() {
	return userId;
}

public void setUserId(String userId) {
	this.userId = userId;
}

public String getUserPwd() {
	return userPwd;
}

public void setUserPwd(String userPwd) {
	this.userPwd = userPwd;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getuType() {
	return uType;
}

public void setuType(String uType) {
	this.uType = uType;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public int getAge() {
	return age;
}

public void setAge(int age) {
	this.age = age;
}

public String getiCode() {
	return iCode;
}

public void setiCode(String iCode) {
	this.iCode = iCode;
}

public int getStatus() {
	return status;
}

public void setStatus(int status) {
	this.status = status;
}

@Override
public String toString() {
	return "Member [uno=" + uno + ", userId=" + userId + ", userPwd=" + userPwd + ", email=" + email + ", uType="
			+ uType + ", gender=" + gender + ", age=" + age + ", iCode=" + iCode + ", status=" + status + "]";
}

   
   
}