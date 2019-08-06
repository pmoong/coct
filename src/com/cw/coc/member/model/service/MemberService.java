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
import com.cw.coc.place.model.dao.LogmentDao;
import com.cw.coc.place.model.service.RoomDao;
import com.cw.coc.place.model.vo.CultureVoYM;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.place.model.vo.Place;
import com.cw.coc.place.model.vo.RestaurantVo;
import com.cw.coc.place.model.vo.SeoulVoYM;
import com.cw.coc.reserve.model.dao.ReserveDao;
import com.cw.coc.reserve.model.vo.Reserve;
import com.cw.coc.room.model.vo.Room;

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
		ArrayList<Board> rv = new BoardDao().reviewSelect(con, m.getUno());
		ArrayList<LogmentVoYM> lm = new LogmentDao().LogmentSelect(con); 
		ArrayList<Room> rm = new RoomDao().RoomSelect(con);
		ArrayList<Reserve> rs = new ReserveDao().Reservation(con);
		
		 list.add(m);
		 list.add(bo);
		 list.add(rv);
		 list.add(lm);
		 list.add(rm);
		 list.add(rs);
		 

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


	public ArrayList<Object> myCoc(Member m) {
		Connection con = getConnection();
		ArrayList<Object> list = new ArrayList<Object>();
		
		
		ArrayList<Place> pl = new MemberDao().myCocPlace(con, m);
		ArrayList<CultureVoYM> ct = new MemberDao().myCocCulture(con, m);
		ArrayList<LogmentVoYM> lm = new MemberDao().myCocLogment(con, m);
		ArrayList<RestaurantVo> rt = new MemberDao().myCocRestaurant(con, m);
		ArrayList<SeoulVoYM> sl = new MemberDao().myCocSeoul(con, m);
		
		
		list.add(pl);
		list.add(ct);
		list.add(lm);
		list.add(rt);
		list.add(sl);
		
 
		close(con);
		
		return list;	
	}


	public int updatePassword2(Member m) {
		Connection con = getConnection();
		
		int result = new MemberDao().updatePassword2(con, m);
		
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);		
    
		return result;
	}


	
	

}