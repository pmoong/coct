package com.cw.coc.member.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.controller.LoginServlet;
import com.cw.coc.member.model.dao.MemberDao;
import com.cw.coc.member.model.vo.Member;

public class MemberService {

	public Member loginCheck(Member reqMember) {
		Connection con = getConnection();
		
		MemberDao md = new MemberDao();
		
		int result = md.checkStatus(con, reqMember);
		
		Member loginUser = new Member();
		
		if(result == LoginServlet.LOGIN_OK) {
			loginUser = md.selectOne(con, reqMember);
			loginUser.setStatus(LoginServlet.LOGIN_OK);
		}else {
			if(result == LoginServlet.WRONG_PASSWORD) {
				loginUser.setStatus(LoginServlet.WRONG_PASSWORD);
			}else {
				loginUser.setStatus(LoginServlet.ID_NOT_EXIST);
			}
		}
		
		close(con);
		
		return loginUser;
	}


	public int insertMember(Member m) {
		Connection con = getConnection();

		int result = new MemberDao().insertMember(con, m);

		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);

	
		return result;
	}

	public int updateSurvey(Member m) {
		Connection con = getConnection();
		
		int result = new MemberDao().updateSurvey(con, m);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		
		close(con);
		
		return result;
	}

	public int updatePassword(Member m) {
		Connection con = getConnection();
		
		int result = new MemberDao().updatePassword(con, m);
		
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
    close(con);
    
    return result;
  }


	public int idCheck(String userId) {
		Connection con = getConnection();
		
		int result = new MemberDao().idCheck(con, userId);
		
		close(con);

		return result;
	}


	public int emailCheck(String email) {
		Connection con = getConnection();
		
		int result = new MemberDao().emailCheck(con, email);
		
		close(con);

		return result;
	}


	public ArrayList<Member> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Member> mlist = new MemberDao().selectList(con, currentPage, limit);
		
		close(con);
		System.out.println("mlist test 1 : " + mlist);
		return mlist;
	}


	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new MemberDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}



	public String findId(String email) {
		Connection con = getConnection();
		
		String result = new MemberDao().findId(con, email);
		
		close(con);

		return result;
	}
  
	public int findPwd(String userId, String userPwd, String email) {
		Connection con = getConnection();
		
		int result = new MemberDao().findPwd(con, userId, userPwd, email);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);

		return result;
	}

	public ArrayList<Object> myPage() {
		Connection con = getConnection();
		ArrayList<Object> list = new ArrayList<Object>();
		Member m  = new MemberDao().selectSurvey(con);
		//Board b = new BoardDao().myPageSelect(con);
		 
		 list.add(m);
		 //list.add(b);
		 
		close(con);
		
		return list;
	}
	
}