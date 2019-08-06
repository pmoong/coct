package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.place.model.dao.LogmentDao;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.room.model.vo.Room;

public class RoomDao {
	
	private Properties prop = new Properties();
	public RoomDao() {
		
		String fileName = 
				LogmentDao.class.getResource("/sql/room/room-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public ArrayList<Room> roomInfo(Connection con, int ccode) {

		ArrayList<Room> rm = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectRoom");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, ccode);
			rset = pstmt.executeQuery();
			
			rm = new ArrayList<Room>();
			
			while(rset.next()) {
				
				Room r = new Room();
				
				r.setRmName(rset.getString("RMNAME"));
				r.setRmCode(rset.getInt("SEQ_RMCODE"));
				r.setUno(rset.getInt("SEQ_UNO"));
				r.setcCode(rset.getInt("SEQ_CCODE"));
				r.setSleeps(rset.getInt("SLEEPS"));
				r.setSleepsMax(rset.getInt("SLEEPS_MAX"));
				r.setEpc(rset.getInt("EPC"));
				r.setPrice(rset.getInt("PRICE"));
				r.setrmImage(rset.getString("RMIMAGE"));
				
				rm.add(r);
		
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return rm;
	}


	public ArrayList<Room> rsvRoomInfo(Connection con) {
		ArrayList<Room> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("roomDetail");
	
	
		
		try {
			pstmt = con.prepareStatement(query);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Room>();
			
			while(rset.next()) {
				
				Room r = new Room();
				
				r.setRmName(rset.getString("RMNAME"));
				r.setRmCode(rset.getInt("SEQ_RMCODE"));
				r.setUno(rset.getInt("SEQ_UNO"));
				r.setcCode(rset.getInt("SEQ_CCODE"));
				r.setSleeps(rset.getInt("SLEEPS"));
				r.setSleepsMax(rset.getInt("SLEEPS_MAX"));
				r.setEpc(rset.getInt("EPC"));
				r.setPrice(rset.getInt("PRICE"));
				r.setrmImage(rset.getString("RMIMAGE"));
				
				list.add(r);
		
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return list;
	}


	


	public ArrayList<Room> RoomSelect(Connection con) {
		PreparedStatement pstmt = null;
		ArrayList<Room> rm = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectRoom");

		try {
			pstmt = con.prepareStatement(query);

			rset = pstmt.executeQuery();

			rm = new ArrayList<Room>();

			while(rset.next()) {

				Room r = new Room();

				r.setRmName(rset.getString("RMNAME"));
				r.setRmCode(rset.getInt("SEQ_RMCODE"));
				r.setUno(rset.getInt("SEQ_UNO"));
				r.setcCode(rset.getInt("SEQ_CCODE"));
				r.setSleeps(rset.getInt("SLEEPS"));
				r.setSleepsMax(rset.getInt("SLEEPS_MAX"));
				r.setEpc(rset.getInt("EPC"));
				r.setPrice(rset.getInt("PRICE"));
				
				

				rm.add(r);
				}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return rm;
	}
}
