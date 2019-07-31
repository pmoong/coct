package com.cw.coc.reserve.model.sevice;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;


import com.cw.coc.reserve.model.dao.ReserveDao;
import com.cw.coc.reserve.model.vo.Reserve;

public class ReserveService {

	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new ReserveDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<Reserve> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Reserve> rlist = new ReserveDao().selectList(con, currentPage, limit);
		
		close(con);
		System.out.println("rlist test 1 : " + rlist);
		return rlist;
	}

}
