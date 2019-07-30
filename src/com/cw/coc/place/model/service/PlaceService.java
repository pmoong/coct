package com.cw.coc.place.model.service;


import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.cw.coc.place.model.dao.PlaceDao;



public class PlaceService {

	public ArrayList<HashMap<String, Object>> searchRoomList() {
		Connection con = getConnection();

		ArrayList<HashMap<String, Object>> list = new PlaceDao().searchRoomList(con);

		close(con);

		return list;	
	}


}
