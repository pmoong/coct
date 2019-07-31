package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;

import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.CultureDao;
import com.cw.coc.place.model.vo.CultureVo;
 
 

public class CultureService {
 
	public ArrayList<CultureVo> selecttotList() {
		Connection con = getConnection();
		
		ArrayList<CultureVo> list =new CultureDao().selecttotList(con);
 		close(con);
		
		return list;
	}

	public ArrayList<CultureVo> selectfesList() {
Connection con = getConnection();
		
		ArrayList<CultureVo> list =new CultureDao().selectfesList(con);
 		close(con);
		
		return list;
	}

	public ArrayList<CultureVo> selectshowList() {
Connection con = getConnection();
		
		ArrayList<CultureVo> list =new CultureDao().selectshowList(con);
 		close(con);
		
		return list;
	}

	public ArrayList<CultureVo> selecteventList() {
Connection con = getConnection();
		
		ArrayList<CultureVo> list =new CultureDao().selecteventList(con);
 		close(con);
		
		return list;
	}

	 
	 
	
 
	 
}
