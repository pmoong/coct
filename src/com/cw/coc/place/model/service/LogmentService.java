package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.LogmentDao;
import com.cw.coc.place.model.vo.LogmentVo;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.room.model.vo.Room;


public class LogmentService {

	public ArrayList<LogmentVoYM> searchRoomList(String locationName) {
		Connection con = getConnection();

		ArrayList<LogmentVoYM> list = new LogmentDao().searchRoomList(con, locationName);

		close(con);
 
		return list;	
	}

	public ArrayList<LogmentVoYM> randomPlace() {
		
			Connection con = getConnection();

			ArrayList<LogmentVoYM> randomlist = new LogmentDao().randomPlace(con);

			close(con);

			return randomlist;	
		}

	public ArrayList<Object> rsvRoomInfo(String ltitle) {
		Connection con = getConnection();
		ArrayList<Object> list = new ArrayList<Object>();
		ArrayList<LogmentVoYM> lm = new LogmentDao().rsvRoomInfo(con, ltitle);
		int ccode = lm.get(0).getcCode();
		ArrayList<Room> rm = new RoomDao().roomInfo(con, ccode);
		
		
		list.add(lm);
		list.add(rm);
		close(con);
 
		return list;
	}
	
}
