package com.cw.coc.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.member.model.dao.MemberDao;
import com.cw.coc.member.model.vo.Member;

public class MemberService {
	
	
	//회원 목록 전체 조회용 메소드
		public ArrayList<Member> selectAll() {
			Connection con = getConnection();
			
			ArrayList<Member> list = new MemberDao().selectAll(con);
			
			close(con);
			
			return list;
			
			
		}

		public ArrayList<Member> searchMember(String searchCondition, String searchValue) {
			Connection con = getConnection();
			
			ArrayList<Member> list = null;
			
			MemberDao md = new MemberDao();
			if(searchCondition.equals("findId")) {
				
				list = md.searchId(con, searchValue);
				
			}else if(searchCondition.equals("findName")) {
				list = md.searchName(con, searchValue);
				
			}else {
				list = md.searchGender(con, searchValue);
			}
			
			close(con);
			
			
			return list;
		}
}
