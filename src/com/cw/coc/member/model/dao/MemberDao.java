package com.cw.coc.member.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;

import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.controller.LoginServlet;
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
				loginUser.setiCode(rset.getString("ICODE"));
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
			pstmt.setString(7, m.getiCode());
			
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
			pstmt.setString(1,m.getiCode());
			pstmt.setInt(2, m.getUno());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


	public int idCheck(Connection con, String userId) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("idCheck");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			
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

	public ArrayList<Member> selectList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Member> mlist = null;
		String query = prop.getProperty("selectListWithMPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			System.out.println("mquery : " + query);
			
			//조회를 시작할 행 번호와 마지막 행 번호 계산
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			mlist = new ArrayList<Member>();
			while(rset.next()) {
				Member m = new Member();
				
				m.setUno(rset.getInt("SEQ_UNO"));
				m.setUserId(rset.getString("USER_ID"));
				m.setUserPwd(rset.getString("USER_PWD"));
				m.setEmail(rset.getString("EMAIL"));
				m.setuType(rset.getString("UTYPE"));
				m.setGender(rset.getString("GENDER"));
				m.setAge(rset.getInt("AGE"));
				m.setiCode(rset.getString("ICODE"));
				
				
				mlist.add(m);
			}
			System.out.println("board m list = " + mlist);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return mlist;
	}

	public int getListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectListCount");
		
		
		try {
			stmt = con.createStatement();

			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listCount;
	}

	public String findId(Connection con, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String userId = "";
		
		String query = prop.getProperty("findId");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				userId = rset.getString("USER_ID");
			}
			System.out.println("userId from Dao : " + userId);
      
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return userId;
	}

	public int findPwd(Connection con, String userId, String userPwd, String email) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("findPwd");	
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userPwd);
			pstmt.setString(2, userId);
			pstmt.setString(3, email);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
  }

	public Member selectSurvey(Connection con, Member m) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectSurvey");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, m.getUno());
			System.out.println("m:::::" + m);
			rset = pstmt.executeQuery();

			if(rset.next()){
				m = new Member();
				m.setUno(rset.getInt("SEQ_UNO"));
				m.setUserId(rset.getString("USER_ID"));
				m.setUserPwd(rset.getString("USER_PWD"));
				m.setEmail(rset.getString("EMAIL"));
				m.setuType(rset.getString("UTYPE"));
				m.setGender(rset.getString("GENDER"));
				m.setAge(rset.getInt("AGE"));
				m.setiCode(rset.getString("ICODE"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		System.out.println(m);
		return m;
	}
	
	
	public int updateCount(Connection con, int muno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, muno);
			pstmt.setInt(2, muno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Member> getMember(Connection con, int muno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member m = null;
		String query = prop.getProperty("getMember");
		ArrayList<Member> list = null;
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, muno);
			System.out.println("$$$$$$$$$$$$$$$$$$$$$"+muno);
			
			rset = pstmt.executeQuery();
			
			System.out.println("sone query : " + query);
			
			list = new ArrayList<Member>();
			if(rset.next()) {
				m = new Member();
				
				m.setUno(rset.getInt("SEQ_UNO"));
				m.setUserId(rset.getString("USER_ID"));
				m.setUserPwd(rset.getString("USER_PWD"));
				m.setEmail(rset.getString("EMAIL"));
				m.setuType(rset.getString("UTYPE"));
				m.setGender(rset.getString("GENDER"));
				m.setAge(rset.getInt("AGE"));
				m.setiCode(rset.getString("ICODE"));
				
			}
			list.add(m);
			System.out.println("M을 담았다" + list);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		System.out.println("값 리턴하러가기");
		return list;
	}
	
	public int getIdCheck(Connection con, int muno) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("getIdMember");
		System.out.println("************************" + query);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, muno);
			
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


	public int deleteOne(Connection con, int uno) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("deleteOne");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, uno);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

}