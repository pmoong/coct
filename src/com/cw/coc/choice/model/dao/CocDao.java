package com.cw.coc.choice.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.choice.model.vo.Coc;

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

}
