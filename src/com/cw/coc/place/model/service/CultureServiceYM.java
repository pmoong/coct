package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.CultureDaoYM;
import com.cw.coc.place.model.vo.CultureVoYM;


public class CultureServiceYM {

	public ArrayList<CultureVoYM> searchCultureVoYM(String keyWord) {
		Connection con = getConnection();
		
		
		ArrayList<CultureVoYM> list = new CultureDaoYM().searchCultureVoYM(con, keyWord);
		
		close(con);
		
		return list;
	}
}
