package com.cw.coc.member.model.vo;

import java.sql.Date;

public class Member {
	   private String userId;      //회원ID
	   private String userPwd;      //회원PWD
	   private String email;      //이메일
	   private String uType;      //구분
	   private String gender;      //성별
	   private int age;         //나이
	   private String survey;      //설문조사코드
	   private int status = 99;   
	
	public Member() {}

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

	public String getSurvey() {
		return survey;
	}

	public void setSurvey(String survey) {
		this.survey = survey;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", email=" + email + ", uType=" + uType
				+ ", gender=" + gender + ", age=" + age + ", survey=" + survey + ", status=" + status + "]";
	}


	
	
	
}
