package com.cw.coc.course.model.dao;

import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.cw.coc.board.model.vo.Board;
public class SearchDao {
	
	public ArrayList<Board> searchAllList(HashMap<String,Object>listOpt) {
		ArrayList<Board> list=new ArrayList<Board>();
		Connection conn=getConnection();
		
		String opt=(String)listOpt.get("opt");
		String condition =(String)listOpt.get("condition");
		
		 
		return list;
	}
	
	
	
}
