package com.cw.coc.place.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;


import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

 import com.cw.coc.place.model.vo.CultureVo;
 
public class CultureDao {
	private Properties prop = new Properties();

	public CultureDao() {
		String fileName = 
				CultureDao.class.getResource("/sql/place/culture-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<CultureVo> selecttotList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<CultureVo> list = null;
		
		String query = prop.getProperty("selecttotList");
		System.out.println(query);
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<CultureVo>();
			
			while(rset.next()) {
				CultureVo c = new CultureVo();
				 c.setCtitle(rset.getString("CTITLE"));
				 c.setCaddr(rset.getString("CADDR")); 
				  c.setCfirstimage(rset.getString("CFIRSTIMAGE"));  
 				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		System.out.println("daolist2"+list);
		return list;
	}

	public ArrayList<CultureVo> selectfesList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<CultureVo> list = null;
		
		String query = prop.getProperty("selectfesList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<CultureVo>();
			
			while(rset.next()) {
				CultureVo c = new CultureVo();
				 c.setCtitle(rset.getString("CTITLE"));
				 c.setCaddr(rset.getString("CADDR")); 
				  c.setCfirstimage(rset.getString("CFIRSTIMAGE"));  
 				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public ArrayList<CultureVo> selectshowList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<CultureVo> list = null;
		
		String query = prop.getProperty("selectshowList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<CultureVo>();
			
			while(rset.next()) {
				CultureVo c = new CultureVo();
				 c.setCtitle(rset.getString("CTITLE"));
				 c.setCaddr(rset.getString("CADDR")); 
				  c.setCfirstimage(rset.getString("CFIRSTIMAGE"));  
 				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public ArrayList<CultureVo> selecteventList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<CultureVo> list = null;
		
		String query = prop.getProperty("selecteventList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<CultureVo>();
			
			while(rset.next()) {
				CultureVo c = new CultureVo();
				 c.setCtitle(rset.getString("CTITLE"));
				 c.setCaddr(rset.getString("CADDR")); 
				  c.setCfirstimage(rset.getString("CFIRSTIMAGE"));  
 				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}
	public ArrayList<CultureVo> selectcoc(Connection con) {
		Statement stmt =null;
		ResultSet rset =null;
		ArrayList<CultureVo> list=null;
		String query=prop.getProperty("selectcoc");
		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			list =new ArrayList<CultureVo>();
			
			while(rset.next()) {
				CultureVo c =new CultureVo();
				c.setCtitle(rset.getString("CTITLE"));
				list.add(c);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		
		return list;
	}
	public ArrayList<CultureVo> searchtot(Connection con) {
		Statement stmt =null;
		ResultSet rset =null;
		ArrayList<CultureVo> list=null;
		String query=prop.getProperty("searchtot");
		
		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			list=new ArrayList<CultureVo>();
			while(rset.next()) {
				CultureVo c=new CultureVo();
				c.setCtitle(rset.getString("CTITLE"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		
		
		return list ;
	}
	  
 
	 
}
