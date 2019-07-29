package com.cw.coc.member.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.ResultSet;

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

	public int insertInterest(Member m) {
		Connection con = getConnection();

		int result = new MemberDao().insertInterest(con, m);

		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);

		return result;
	}

	public String selectSurvey(String icode) {
		Connection con = getConnection();
		
		Member m = new Member();
		
		 icode = new MemberDao().selectSurvey(con, icode);
		
		
		close(con);
		
		return icode;
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
	
}