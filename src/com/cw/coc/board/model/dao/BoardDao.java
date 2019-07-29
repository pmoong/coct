package com.cw.coc.board.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.vo.Member;


public class BoardDao {

	private Properties prop = new Properties();
	
	public BoardDao() {
		String fileName = 
				BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public int insertBoard(Connection con, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			//쿼리문 작성되는 대로 작성할것~~
			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getbContent());
			pstmt.setString(3, b.getbType());
			pstmt.setString(4, b.getbWriter());
			pstmt.setInt(5, b.getUno());
			
			result = pstmt.executeUpdate();
			
			System.out.println("insertboard query : " +query);
			System.out.println("uno : " + b.getUno());
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public ArrayList<Board> selectList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		String query = prop.getProperty("selectListWithPaging");
		
		try {
			pstmt = con.prepareStatement(query);

			//조회를 시작할 행 번호와 마지막 행 번호 계산
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Board>();

			while(rset.next()) {
				Board b = new Board();
				
				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));
				
				
				list.add(b);
			}
			System.out.println("board b list = " + list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
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


	public int updateCount(Connection con, int num) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			pstmt.setInt(2, num);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public Board selectOne(Connection con, int num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board b = null;
		
		String query = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			
			rset = pstmt.executeQuery();
			System.out.println("sone query : " + query);
			
			
			if(rset.next()) {
				b = new Board();
				
				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		System.out.println("값 리턴하러가기");
		return b;
	}


	public int deleteBoard(Connection con, int bcode) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteBoard");
		
		System.out.println("query" + query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, bcode);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int updateBoard(Connection con, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getbContent());
			pstmt.setInt(3, b.getbCode());
			
			
			result = pstmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
	
		return result;
	}

}

