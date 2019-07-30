package com.cw.coc.place.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;


import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;


public class PlaceDao {
	
	private Properties prop = new Properties();

	public PlaceDao() {
		
		System.out.println("???");
		
		String fileName = 
				PlaceDao.class.getResource("/sql/place/place-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<HashMap<String, Object>> searchRoomList(Connection con) {
		Statement stmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		ResultSet rset = null;
			
		String query = prop.getProperty("searchRoomList");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<HashMap<String, Object>>();
			
			while(rset.next()) {
				HashMap<String, Object> hmap = new HashMap<String, Object>();
				
				hmap.put("cCode", rset.getInt("SEQ_CCODE"));
				hmap.put("pName", rset.getString("PNAME"));
				hmap.put("image", rset.getString("IMAGE"));
				
				
				list.add(hmap);
				
				System.out.println("list :" + list);
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
