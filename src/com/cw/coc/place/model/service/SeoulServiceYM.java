package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.SeoulDaoYM;
import com.cw.coc.place.model.vo.SeoulVoYM;


public class SeoulServiceYM {

	public ArrayList<SeoulVoYM> searchSeoulVoYM(String keyWord) {
		Connection con = getConnection();
		
		
		ArrayList<SeoulVoYM> list = new SeoulDaoYM().searchSeoulVoYM(con, keyWord);
		
		close(con);
		
		return list;
	}
}
