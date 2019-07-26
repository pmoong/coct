package com.cw.coc.member.model.service;

import java.sql.Connection;

import com.cw.coc.member.controller.LoginServlet;
import com.cw.coc.member.model.dao.MemberDao;
import com.cw.coc.member.model.vo.Member;
import static com.cw.coc.common.JDBCTemplate.*;

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


	public int idCheck(String userId) {
		Connection con = getConnection();
		
		int result = new MemberDao().idCheck(con, userId);
		
		close(con);
		
		return result;
	}
	
}