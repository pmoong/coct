package com.cw.coc.member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.member.model.vo.Member;

public class MemberDao {
	private Properties prop = new Properties();
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//이하 회원 정보 조회용 메소드
		public ArrayList<Member> selectAll(Connection con) {
			ArrayList<Member> list = null;
			Statement stmt = null;
			ResultSet rset = null;
			
			String query = prop.getProperty("selectAll");

			try {
				stmt = con.createStatement();
				
				rset = stmt.executeQuery(query);
				
				list = new ArrayList<Member>();
				
				while(rset.next()) {
					Member m = new Member();
					
					m.setUserNo(rset.getString("UNO"));
					m.setUserId(rset.getString("USER_ID"));
					m.setUserPwd(rset.getString("USER_PWD"));
					m.setEmail(rset.getString("EMAIL"));
					m.setClassify(rset.getString("CLASSIFY"));
					m.setAge(rset.getInt("AGE"));
					m.setGender(rset.getString("GENDER"));
					m.setSurveyCode(rset.getString("SURVEY_CODE"));
					
					
					
					list.add(m);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(stmt);
				close(rset);
			}
			
			
			
			return list;
		}

		public ArrayList<Member> searchId(Connection con, String searchValue) {
			ArrayList<Member> list = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String query = prop.getProperty("searchId");
			
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, searchValue);
				
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Member>();
				
				while(rset.next()) {
					Member m = new Member();
					
					m.setUserNo(rset.getString("UNO"));
					m.setUserId(rset.getString("USER_ID"));
					m.setUserPwd(rset.getString("USER_PWD"));
					m.setEmail(rset.getString("EMAIL"));
					m.setClassify(rset.getString("CLASSIFY"));
					m.setAge(rset.getInt("AGE"));
					m.setGender(rset.getString("GENDER"));
					m.setSurveyCode(rset.getString("SURVEY_CODE"));
					
					
					list.add(m);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
				close(rset);
				
			}
			
			return list;
		}

		public ArrayList<Member> searchName(Connection con, String searchValue) {
			ArrayList<Member> list = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String query = prop.getProperty("searchName");
			
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, searchValue);
				
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Member>();
				
				while(rset.next()) {
					Member m = new Member();
					
					m.setUserNo(rset.getString("UNO"));
					m.setUserId(rset.getString("USER_ID"));
					m.setUserPwd(rset.getString("USER_PWD"));
					m.setEmail(rset.getString("EMAIL"));
					m.setClassify(rset.getString("CLASSIFY"));
					m.setAge(rset.getInt("AGE"));
					m.setGender(rset.getString("GENDER"));
					m.setSurveyCode(rset.getString("SURVEY_CODE"));
					
					
					list.add(m);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
				close(rset);
				
			}
			
			return list;
		}

		public ArrayList<Member> searchGender(Connection con, String searchValue) {
			ArrayList<Member> list = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String query = prop.getProperty("searchGender");
			
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, searchValue);
				
				rset = pstmt.executeQuery();
				
				list = new ArrayList<Member>();
				
				while(rset.next()) {
					Member m = new Member();
					
					m.setUserNo(rset.getString("UNO"));
					m.setUserId(rset.getString("USER_ID"));
					m.setUserPwd(rset.getString("USER_PWD"));
					m.setEmail(rset.getString("EMAIL"));
					m.setClassify(rset.getString("CLASSIFY"));
					m.setAge(rset.getInt("AGE"));
					m.setGender(rset.getString("GENDER"));
					m.setSurveyCode(rset.getString("SURVEY_CODE"));
					
					
					list.add(m);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
				close(rset);
				
			}
			
			return list;
		}
}
