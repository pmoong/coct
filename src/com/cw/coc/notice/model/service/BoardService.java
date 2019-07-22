package com.cw.coc.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.notice.model.dao.BoardDao;
import com.cw.coc.notice.model.vo.Board;

import static com.cw.coc.common.JDBCTemplate.*;

public class BoardService {

	public ArrayList<Board> selectList() {
		Connection con = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectList(con);
		
		close(con);
				
		return list;
	}

}
