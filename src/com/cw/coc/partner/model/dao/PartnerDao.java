package com.cw.coc.partner.model.dao;

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

import com.cw.coc.member.model.vo.Partner;

public class PartnerDao {
	
	private Properties prop = new Properties();
	
	public PartnerDao() {
		String fileName = PartnerDao.class.getResource("/sql/partner/partner-query.properties").getPath();
		
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

	public ArrayList<Partner> selectList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Partner> plist = null;
		String query = prop.getProperty("selectListWithPPaging");
		
		try {
			pstmt = con.prepareStatement(query);
			System.out.println("rquery : " + query);
			
			//조회를 시작할 행 번호와 마지막 행 번호 계산
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			/*SEQ_UNO
CORP_REGST_NUM
BUSINESS_ESTABLISH_DATE
CTEL
TAXTYPE
SEQ_CCODE
BUSINESS_TYPE
BUSINESS_ITEMS
REPRESENTATIVE_NAME
PICNAME
COMPANY_NAME*/
		
			plist = new ArrayList<Partner>();
			while(rset.next()) {
				Partner p = new Partner();
				
				p.setUno(rset.getInt("SEQ_UNO"));
				p.setRegstNum(rset.getString("CORP_REGST_NUM"));
				p.setEstaDate(rset.getDate("BUSINESS_ESTABLISH_DATE"));
				p.setPhone(rset.getString("CTEL"));
				p.setTaxType(rset.getString("TAXTYPE"));
				p.setcCode(rset.getInt("SEQ_CCODE"));
				p.setBusType(rset.getString("BUSINESS_TYPE"));
				p.setBusItems(rset.getString("BUSINESS_ITEMS"));
				p.setReprenName(rset.getString("REPRESENTATIVE_NAME"));
				p.setPicName(rset.getString("PICNAME"));
				p.setComName(rset.getString("COMPANY_NAME"));
				
				
				
				plist.add(p);
			}
			System.out.println("p list = " + plist);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return plist;
	}

}
