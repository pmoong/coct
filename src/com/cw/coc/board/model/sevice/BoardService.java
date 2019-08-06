package com.cw.coc.board.model.sevice;

import java.sql.Connection;

import java.util.ArrayList;
import java.util.HashMap;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.board.model.vo.Attachment;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.dao.MemberDao;

import static com.cw.coc.common.JDBCTemplate.*;
import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

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
			System.out.println("selectone 진행중 1");

			b = new BoardDao().selectOne(con, num);
		}else {
			rollback(con);
		}

		close(con);

		return b;
	}

	public int deleteBoard(int bcode) {
		Connection con = getConnection();

		int result = new BoardDao().deleteBoard(con, bcode);

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
	public ArrayList<Board> myPageSelect() {
		Connection con = getConnection();

		//ArrayList<Board> list = new BoardDao().myPageSelect(con);

		close(con);

		return null;
	}


	public int insertImg(Board b, ArrayList<Attachment> fileList) {
		Connection con =getConnection();
		int result =0;

		int result1 =new BoardDao().insertImgContent(con,b);

		if(result1 > 0) {
			int bid =new BoardDao().selectCurrval(con);
			for(int i =0; i<fileList.size(); i++) {
				fileList.get(i).setBid(bid);
			}
		}

		int result2 =new BoardDao().insertAttachment(con,fileList);

		if(result1 >0 && result2 >0) {
			commit(con);
			result =1;
		}else {
			rollback(con);
		}
		return result;
	}

	public ArrayList<HashMap<String, Object>> selectconList() {
		Connection con =getConnection();
		ArrayList<HashMap<String,Object>> list =
				new BoardDao().selectconList(con);
		close(con);


		return list;



	}
	public ArrayList<Board> getBoard(int muno) {
		Connection con = getConnection();
		ArrayList<Board> list = new ArrayList<Board>();

		ArrayList<Board> rv = new BoardDao().getBoard(con, muno);

		list.addAll(rv);


		System.out.println("list :" + list);
		close(con);

		return list;
	}

	public ArrayList<Board> selectNList(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Board> list = new BoardDao().selectNList(con, currentPage, limit);

		close(con);

		return list;
	}
	public ArrayList<Board> selectRList(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Board> list = new BoardDao().selectRList(con, currentPage, limit);

		close(con);

		return list;
	}
	public ArrayList<Board> selectReviewList(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Board> list = new BoardDao().selectReviewList(con, currentPage, limit);

		close(con);

		return list;
	}
	public int getReviewListCount(int uno) {
		Connection con = getConnection();

		int listCount = new BoardDao().getReviewListCount(con, uno);

		close(con);

		return listCount;


	}
//	public void insertMassiveArticleInBoard(File destFile);

}

