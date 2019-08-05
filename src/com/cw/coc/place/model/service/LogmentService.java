package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.LogmentDao;
import com.cw.coc.place.model.dao.PlaceDao;
import com.cw.coc.place.model.vo.LogmentVo;
import com.cw.coc.place.model.vo.Place;


public class LogmentService {

	public ArrayList<LogmentVo> searchRoomList(String locationName) {
		Connection con = getConnection();

		ArrayList<LogmentVo> list = new LogmentDao().searchRoomList(con, locationName);

		close(con);
 
		return list;	
	}

	public ArrayList<LogmentVo> randomPlace() {
		
			Connection con = getConnection();

			ArrayList<LogmentVo> randomlist = new LogmentDao().randomPlace(con);

			close(con);

			return randomlist;	
		}

	public ArrayList<LogmentVo> rsvRoomInfo() {
		Connection con = getConnection();

		ArrayList<LogmentVo> list = new LogmentDao().rsvRoomInfo(con);

		close(con);
 
		return list;
	}
	
}
