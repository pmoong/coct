package com.cw.coc.choice.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.choice.model.vo.Coc;
import com.cw.coc.course.model.vo.Place.PlaceCocVo;
import com.cw.coc.place.model.vo.RestaurantVo;

public class CocDao {
	private Properties prop = new Properties();
	
	
	public CocDao() {
		String fileName = 
				BoardDao.class.getResource("/sql/Coc/Coc-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	
	public int insertCoc(Connection con, Coc c) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertCoc");
		
		try {
			pstmt = con.prepareStatement(query);
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public int insertCoc(Connection con, int cCode, int loginUserNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertCoc");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, loginUserNo);
			pstmt.setInt(2, cCode);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	public ArrayList<Coc> isCoc(Connection con, int userNo) {
		ArrayList<Coc> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("isCoc");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, userNo);
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Coc>();
			while(rset.next()) {
				Coc ct = new Coc();
				ct.setcCode(rset.getInt("SEQ_CCODE"));
				
				
				list.add(ct);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return list;
	}


	public int deleteCoc(Connection con, int cCode, int loginUserNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteCoc");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, loginUserNo);
			pstmt.setInt(2, cCode);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


	
}
