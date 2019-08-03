package com.cw.coc.choice.model.sevice;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.choice.model.dao.CocDao;
import com.cw.coc.choice.model.vo.Coc;
import com.cw.coc.place.model.dao.RestaurantDaoYM;
import com.cw.coc.place.model.vo.RestaurantVo;



public class CocService {
	
	public int insertCoc(Coc c) {
		Connection con = getConnection();
		
		int result = new CocDao().insertCoc(con, c);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
		
	}

	public int insertCoc(int cCode, int loginUserNo) {
		Connection con = getConnection();
		
		int result = new CocDao().insertCoc(con, cCode, loginUserNo);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		return result;
	}

	public ArrayList<Coc> isCoc(int userNo) {
		Connection con = getConnection();
		
		
		ArrayList<Coc> list = new CocDao().isCoc(con, userNo);
		
		close(con);
		
		return list;
	}

	public int deleteCoc(int cCode, int loginUserNo) {
		Connection con = getConnection();
		
		int result = new CocDao().deleteCoc(con, cCode, loginUserNo);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		return result;
	}

}
