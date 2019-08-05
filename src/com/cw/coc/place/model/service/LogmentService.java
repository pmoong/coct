package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.LogmentDao;
import com.cw.coc.place.model.vo.LogmentVo;


public class LogmentService {

	public ArrayList<LogmentVo> searchRoomList(String locationName) {
		Connection con = getConnection();

		ArrayList<LogmentVo> list = new LogmentDao().searchRoomList(con, locationName);

		close(con);
 
		return list;	
	}
	
	
}
