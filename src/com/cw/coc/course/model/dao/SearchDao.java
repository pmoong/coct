package com.cw.coc.course.model.dao;

import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.cw.coc.board.model.vo.Board;
import com.cw.coc.place.model.vo.Place;
public class SearchDao {
	private Properties prop =new Properties();
	
	public SearchDao() {
		String fileName=SearchDao.class.getResource("/sql/place/search-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		}   catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Board> searchAllList(HashMap<String,Object>listOpt) {
		ArrayList<Board> list=new ArrayList<Board>();
		Connection conn=getConnection();
		
		String opt=(String)listOpt.get("opt");
		String condition =(String)listOpt.get("condition");
		
		 
		return list;
	}
 
		
		 
	
	
}
