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

import com.cw.coc.place.model.vo.Place;


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

	public ArrayList<Place> searchRoomList(Connection con, String locationName) {
		Statement stmt = null;
		ArrayList<Place> list = null;
		ResultSet rset = null;
		 
		
		String query = prop.getProperty("searchRoomList");
		
		try {
			
			
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				Place p = new Place();
				
				p.setcCode(rset.getInt("SEQ_CCODE"));
				p.setpName(rset.getString("PNAME"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
				p.setiCode(rset.getInt("ICODE"));
				p.setiContent(rset.getString("ICONTENT"));
				
				
				if(Integer.parseInt(locationName) ==  rset.getInt("ICODE")) {
					
					list.add(p);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		
		return list;
	}

	public ArrayList<Place> randomPlace(Connection con) {
		// TODO Auto-generated method stub
		return null;
	}
	 
	
}
