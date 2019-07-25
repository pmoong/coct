package com.cw.coc.partner.model.service;

import java.sql.Connection;
import java.util.HashMap;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.board.model.vo.Attachment;
import com.cw.coc.board.model.vo.Board;

import static com.cw.coc.common.JDBCTemplate.*;
public class hotelService {

	public HashMap<String, Object> selectThumbnailMap(int num) {
		Connection con=getConnection();
		HashMap<String,Object> hmap=null;
		int result=new BoardDao().updateCount(con,num);
		
		if(result >0) {
			commit(con);
			hmap=new BoardDao().selectThumbnailMap(con,num);
			
		}else {
			rollback(con);
		}
		
		
		return hmap;
	}
}
