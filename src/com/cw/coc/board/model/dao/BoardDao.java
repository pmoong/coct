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
			
			result = pstmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public ArrayList<Board> selectList(Connection con, int currentPage, int limit) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Board>();
			SEQ_BCODE
			BDATE
			BTITLE
			BCONTENT
			BTYPE
			SEQ_CCODE
			PCODE
			SEQ_UNO
			UTYPE
			COUNT
			MODIFY_DATE
			while(rset.next()) {
				Board b = new Board();
				
				b.setBid(rset.getInt("BID"));
				b.setbType(rset.getInt("BTYPE"));
				b.setBno(rset.getInt("BNO"));
				b.setCategory(rset.getString("CNAME"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbWriter(rset.getString("NICK_NAME"));
				b.setbCount(rset.getInt("BCOUNT"));
				b.setRefBid(rset.getInt("REF_BID"));
				b.setReplyLevel(rset.getInt("REPLY_LEVEL"));
				b.setbDate(rset.getDate("BDATE"));
				b.setModifyDate(rset.getDate("MODIFY_DATE"));
				b.setStatus(rset.getString("STATUS"));
				
				list.add(b);
			}
			private int bCode;
			private Date bDate;
			private String bTitle;
			private String bContent;
			private String bType;
			private String bWriter;
			private int cCode;
			private String pCode;
			private int uno;
			private String uType;
			private int count;
			private Date modifiyDate;
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}


	public int getListCount(Connection con) {
		// TODO Auto-generated method stub
		return 0;
	}

}
