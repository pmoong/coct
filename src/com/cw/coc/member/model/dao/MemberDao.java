package com.cw.coc.member.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.tomcat.util.collections.SynchronizedStack;

import com.cw.coc.member.controller.LoginServlet;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.member.model.vo.Survey;

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

	public int checkStatus(Connection con, Member reqMember) {
		PreparedStatement pstmt = null;
		int result = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("checkStatus");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, reqMember.getUserId());
			
			rset = pstmt.executeQuery();
			
			String userId = "";
			String userPwd = "";
			
			if(rset.next()) {
				userId = rset.getString("USER_ID");
				userPwd = rset.getString("USER_PWD");
			}
			
			if(reqMember.getUserId().equals(userId) &&
					reqMember.getUserPwd().equals(userPwd)) {
				result = LoginServlet.LOGIN_OK;
			}else if(reqMember.getUserId().equals(userId) &&
					!reqMember.getUserPwd().equals(userPwd)) {
				result = LoginServlet.WRONG_PASSWORD;
			}else {
				result = LoginServlet.ID_NOT_EXIST;
			}
			
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return result;
	}

	public Member selectOne(Connection con, Member reqMember) {
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, reqMember.getUserId());
			pstmt.setString(2, reqMember.getUserPwd());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser = new Member();
				
				loginUser.setUno(rset.getInt("SEQ_UNO"));
				loginUser.setUserId(rset.getString("USER_ID"));
				loginUser.setUserPwd(rset.getString("USER_PWD"));
				loginUser.setEmail(rset.getString("EMAIL"));
				loginUser.setuType(rset.getString("UTYPE"));
				loginUser.setGender(rset.getString("GENDER"));
				loginUser.setAge(rset.getInt("AGE"));
				loginUser.setSurvey(rset.getString("SCODE"));
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return loginUser;
	}


	public int insertMember(Connection con, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = prop.getProperty("insertMember");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getEmail());
			pstmt.setString(4, "M");
			pstmt.setString(5, m.getGender());
			pstmt.setInt(6, m.getAge());
			pstmt.setString(7, m.getSurvey());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateSurvey(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateSurvey");
		
		try {
			pstmt = con.prepareStatement(query);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return result;
	}


	public String selectSurvey(Connection con, String icode) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
	
		
		String query = prop.getProperty("selectSurvey");
		
		System.out.println("dao @");
		Member m = new Member();
		System.out.println(m.getUserId());
		System.out.println(icode);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getUserId());
			
			rset = pstmt.executeQuery();
      
    } catch (SQLException e) {
			e.printStackTrace();
		}
  return rset;
}

	public int idCheck(Connection con, String userId) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("idCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);

      
			

			while(rset.next()) {
				 icode = rset.getString("Survey");
				
				
			}
			
			
			
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close(pstmt);
			close(rset);
		}
		
		
		return icode;

	}

	public int updatePassword(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updatePassword");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, m.getUserPwd());
			pstmt.setString(2, m.getUserId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int emailCheck(Connection con, String email) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("emailCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);

      
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
}