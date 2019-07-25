package com.cw.coc.board.model.sevice;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.board.model.vo.Board;

import static com.cw.coc.common.JDBCTemplate.*;

public class BoardService {

	public int insertBoard(Board b) {
		Connection con = getConnection();
		
		int result = new BoardDao().insertBoard(con, b);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
		
	}
	public ArrayList<Board> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectList(con, currentPage, limit);
		
		close(con);
		
		return list;
	}

	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new BoardDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	public Board selectOne(int num) {
		Connection con = getConnection();
		Board b = null;
		
		int result = new BoardDao().updateCount(con, num);
		
		if(result > 0) {
			commit(con);
			b = new BoardDao().selectOne(con, num);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return b;
	}

	public int deleteBoard(int uno) {
		Connection con = getConnection();
		
		int result = new BoardDao().deleteBoard(con, uno);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int updateBoard(Board b) {
		Connection con = getConnection();
		
		int result = new BoardDao().updateBoard(con, b);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}


	}
	
