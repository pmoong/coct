package com.cw.coc.board.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Properties;

import com.cw.coc.board.model.dao.BoardDao;

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
	public HashMap<String, Object> selectThumbnailMap(Connection con, int num) {

		
		return null;
		
		
	}
	public int updateCount(Connection con, int num) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
