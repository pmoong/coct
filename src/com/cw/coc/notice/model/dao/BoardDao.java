package com.cw.coc.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.notice.model.vo.Board;
import static com.cw.coc.common.JDBCTemplate.*;

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
	
	public ArrayList<Board> selectList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setbCode(rset.getString("BOARD_CODE"));
				b.setBdate(rset.getDate("ENROLL_DATE"));
				b.setbTitle(rset.getString("TITLE"));
				b.setbContent(rset.getString("CONTENT"));
				b.setbType(rset.getString("TYPE"));
				
				list.add(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

}
