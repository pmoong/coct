package com.cw.coc.course.model.sevice;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.course.model.dao.SearchDao;
import com.cw.coc.place.model.dao.CultureDao;
import com.cw.coc.place.model.vo.CultureVo;
import com.cw.coc.place.model.vo.Place;
public class SearchService {

	
	public ArrayList<CultureVo> selectcoc(){
		Connection con =getConnection();
		ArrayList<CultureVo> list =new CultureDao().selectcoc(con);
		close(con);
		return list;
	}

	public ArrayList<CultureVo> searchAllList() {
Connection con=getConnection();
ArrayList<CultureVo> list = new CultureDao().searchtot(con);
return list;
	}

	public ArrayList<CultureVo> searchtot() {
		Connection con=getConnection();
		ArrayList<CultureVo> list = new CultureDao().searchtot(con);
		return list;
	}

	
 }
