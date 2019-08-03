package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.LogmentDaoYM;
import com.cw.coc.place.model.dao.RestaurantDaoYM;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.place.model.vo.RestaurantVo;

public class LogmentServiceYM {

	public ArrayList<LogmentVoYM> searchLogmentYM(String keyWord) {
		Connection con = getConnection();
		
		
		ArrayList<LogmentVoYM> list = new LogmentDaoYM().searchLogmentYM(con, keyWord);
		
		close(con);
		
		return list;
	}
	
}

	

