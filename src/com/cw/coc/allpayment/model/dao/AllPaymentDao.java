package com.cw.coc.allpayment.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.allpayment.model.vo.AllPayment;
import com.cw.coc.reserve.model.dao.ReserveDao;

public class AllPaymentDao {
	
	private Properties prop = new Properties();
	
	public AllPaymentDao() {
		String fileName = ReserveDao.class.getResource("/sql/allpayment/allpayment-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectListCount");
		
		
		try {
			stmt = con.createStatement();

			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return listCount;
	}

	public ArrayList<AllPayment> selectList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AllPayment> alist = null;
		String query = prop.getProperty("selectListWithAPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			System.out.println("rquery : " + query);
			
			//조회를 시작할 행 번호와 마지막 행 번호 계산
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
		
			alist = new ArrayList<AllPayment>();
			while(rset.next()) {
				AllPayment a = new AllPayment();
				
				a.setcCode(rset.getInt("SEQ_CCODE"));
				a.setpName(rset.getString("PNAME"));
				a.setpDate(rset.getDate("PDATE"));
				a.setPrice(rset.getInt("PRICE"));
				
				alist.add(a);
			}
			System.out.println("a list = " + alist);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return alist;
	}

}
