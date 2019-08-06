package com.cw.coc.board.model.sevice;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.board.model.vo.Attachment;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.model.dao.LogmentDao;
import com.cw.coc.place.model.vo.LogmentVoYM;

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
	public ArrayList<Object> selectReviewList(int currentPage, int limit, int uno) {
		Connection con = getConnection();
		ArrayList<Object> list = new ArrayList<Object>();
		ArrayList<Board> bo = new BoardDao().selectReviewList(con, currentPage, limit, uno);
		ArrayList<LogmentVoYM> lm = new LogmentDao().LogmentSelect(con);
		
		list.add(bo);
		list.add(lm);
		close(con);

		return list;
	}
	public int getReviewListCount(int uno) {
		Connection con = getConnection();

		int listCount = new BoardDao().getReviewListCount(con, uno);

		close(con);

		return listCount;


	}
	public ArrayList<HashMap<String, Object>> statics() {
		Connection con = getConnection();

		ArrayList<HashMap<String,Object>> list = new BoardDao().statics(con);


		close(con);





		return list;
}
	public ArrayList<HashMap<String, Object>> statics2() {
		Connection con = getConnection();

		ArrayList<HashMap<String,Object>> list = new BoardDao().statics2(con);


		close(con);





		return list;
	}
	public ArrayList<HashMap<String, Object>> statics3() {
		Connection con = getConnection();

		ArrayList<HashMap<String,Object>> list = new BoardDao().statics3(con);


		close(con);





		return list;
	}
	public Board selectOneReview(int num, Member m) {
		Connection con = getConnection();
		Board b = null;

		int result = new BoardDao().updateCount(con, num);

		if(result > 0) {
			commit(con);

			b = new BoardDao().selectOneReview(con, num, m);
		}else {
			rollback(con);
		} 
 
		close(con);

		return b;
	}
	public int updateReview(Member m, Board b, int num) {

		Connection con = getConnection();

		int result = new BoardDao().updateReview(con, m, b, num);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

//	public void insertMassiveArticleInBoard(File destFile);
}

