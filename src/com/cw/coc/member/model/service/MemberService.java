package com.cw.coc.member.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.controller.LoginServlet;
import com.cw.coc.member.model.dao.MemberDao;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.member.model.vo.Payment;

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

	public ArrayList<Object> myPage(Member m) {
		Connection con = getConnection();
		ArrayList<Object> list = new ArrayList<Object>();
		m  = new MemberDao().selectSurvey(con, m);
		ArrayList<Board> bo = new BoardDao().myPageSelect(con);
		ArrayList<Board> rv = new BoardDao().reviewSelect(con);
		//ArrayList<Payment> pm = new MemberDao().paymentSelect(con, m.getUno());
		 
		 list.add(m);
		 list.add(bo.get(0));
		 list.add(bo.get(1));
		 list.add(rv.get(0));
		 list.add(rv.get(1));
		 //list.add(pm.get(0));
		 //,list.add(pm.get(1));
		 

		 System.out.println("list :" + list);
		close(con);
		
		return list;
	}


	public ArrayList<Member> getMember(int muno) {
		Connection con = getConnection();
		ArrayList<Member> list = null;
		
		int result = new MemberDao().getIdCheck(con, muno);
		
		if(result > 0) {
			commit(con);
			System.out.println("selectmember 진행중 1");
			
			list = new MemberDao().getMember(con, muno);
		}else {
			rollback(con);
		}
		
		close(con);
		System.out.println("마지막＠＠＠＠＠＠＠＠＠:" + list);
		return list;
	}



	public int deleteMember(int uno) {
		Connection con = getConnection();

		int result = new MemberDao().deleteOne(con, uno);

		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		return result;
	}
	

}