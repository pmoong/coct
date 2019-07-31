package com.cw.coc.allpayment.model.sevice;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.allpayment.model.dao.AllPaymentDao;
import com.cw.coc.allpayment.model.vo.AllPayment;

public class AllPaymentService {

	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new AllPaymentDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<AllPayment> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<AllPayment> alist = new AllPaymentDao().selectList(con, currentPage, limit);
		
		close(con);
		System.out.println("alist test 1 : " + alist);
		return alist;
	}

}
