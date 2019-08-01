package com.cw.coc.place.model.service;


import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.cw.coc.place.model.dao.PlaceDao;
import com.cw.coc.place.model.vo.Place;



public class PlaceService {
	
	public ArrayList<Place> searchRoomList(String locationName) {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().searchRoomList(con, locationName);

		close(con);
 
		return list;	
	}

	public ArrayList<Place> randomPlace() {

		Connection con = getConnection();

		ArrayList<Place> randomlist = new PlaceDao().randomPlace(con);

		close(con);

		return randomlist;	
	}


}
