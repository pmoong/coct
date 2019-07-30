package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.SeoulDao;
import com.cw.coc.place.model.vo.SeoulVo;
 
 

public class SeoulService {
 
	public ArrayList<SeoulVo> selecthisList() {
		Connection con = getConnection();
		
		ArrayList<SeoulVo> list =new SeoulDao().selecthisList(con);
		
		close(con);
		
		return list;
	}

	public ArrayList<SeoulVo> selectexpList() {
		Connection con = getConnection();
		
		ArrayList<SeoulVo> list =new SeoulDao().selectexpList(con);
		
		close(con);
		
		return list;
	}

	public ArrayList<SeoulVo> selectrecList() {
	Connection con = getConnection();
		
		ArrayList<SeoulVo> list =new SeoulDao().selecrecList(con);
		
		close(con);
		
		return list;
	}

	public ArrayList<SeoulVo> selectconList() {
	Connection con = getConnection();
		
		ArrayList<SeoulVo> list =new SeoulDao().selectconList(con);
		
		close(con);
		
		return list;
	}

	public ArrayList<SeoulVo> selectindList() {
	Connection con = getConnection();
		
		ArrayList<SeoulVo> list =new SeoulDao().selectindList(con);
		
		close(con);
		
		return list;
	}
	
	/* public ArrayList<SeoulVo> selectList(int currentPage,int limit){
		Connection con =getConnection();
		ArrayList<SeoulVo> list =new SeoulDao2().selectList(con,currentPage,limit);
		close(con);
		return list;
		
	}*/

	/*public int getListCount() {
		Connection con=getConnection();
		int listCount =new SeoulDao2().getListCount(con);
		
		close(con);
		return listCount;
	}*/
	 
}
