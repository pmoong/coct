package com.cw.coc.reserve;

import java.sql.Connection;
import java.util.ArrayList;
import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;


import com.cw.coc.place.model.service.RoomDao;
import com.cw.coc.room.model.vo.Room;

public class RoomService {

	public ArrayList<Room> rsvRoomInfo() {
		Connection con = getConnection();

		ArrayList<Room> list = new RoomDao().rsvRoomInfo(con);

		close(con);
 
		return list;
	}

}
