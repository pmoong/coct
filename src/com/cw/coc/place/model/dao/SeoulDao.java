package com.cw.coc.place.model.dao;

import java.io.FileReader;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;
 

import com.cw.coc.place.model.vo.SeoulVo;
 

public class SeoulDao {
	private Properties prop = new Properties();

	public SeoulDao() {
		String fileName = 
				SeoulDao.class.getResource("/sql/place/seoul-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<SeoulVo> selecthisList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<SeoulVo> list = null;
		
		String query = prop.getProperty("selecthisList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<SeoulVo>();
			
			while(rset.next()) {
				SeoulVo s = new SeoulVo();
				 s.setTitle(rset.getString("STITLE"));
				 s.setAddr1(rset.getString("SADDR")); 
				  s.setFirstimage(rset.getString("SFIRSTIMAGE"));  
				  
			 
				list.add(s);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public ArrayList<SeoulVo> selectexpList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<SeoulVo> list = null;
		
		String query = prop.getProperty("selectexpList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<SeoulVo>();
			
			while(rset.next()) {
				SeoulVo s = new SeoulVo();
				 s.setTitle(rset.getString("STITLE"));
				 s.setAddr1(rset.getString("SADDR")); 
				  s.setFirstimage(rset.getString("SFIRSTIMAGE"));  
				  
			 
				list.add(s);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public ArrayList<SeoulVo> selecrecList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<SeoulVo> list = null;
		
		String query = prop.getProperty("selectrecList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<SeoulVo>();
			
			while(rset.next()) {
				SeoulVo s = new SeoulVo();
				 s.setTitle(rset.getString("STITLE"));
				 s.setAddr1(rset.getString("SADDR")); 
				  s.setFirstimage(rset.getString("SFIRSTIMAGE"));  
				  
			 
				list.add(s);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public ArrayList<SeoulVo> selectconList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<SeoulVo> list = null;
		
		String query = prop.getProperty("selectconList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<SeoulVo>();
			
			while(rset.next()) {
				SeoulVo s = new SeoulVo();
				 s.setTitle(rset.getString("STITLE"));
				 s.setAddr1(rset.getString("SADDR")); 
				  s.setFirstimage(rset.getString("SFIRSTIMAGE"));  
				  
			 
				list.add(s);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public ArrayList<SeoulVo> selectindList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<SeoulVo> list = null;
		
		String query = prop.getProperty("selectindList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<SeoulVo>();
			
			while(rset.next()) {
				SeoulVo s = new SeoulVo();
				 s.setTitle(rset.getString("STITLE"));
				 s.setAddr1(rset.getString("SADDR")); 
				  s.setFirstimage(rset.getString("SFIRSTIMAGE"));  
				  
			 
				list.add(s);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

	public ArrayList<SeoulVo> selecttotList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<SeoulVo> list = null;
		
		String query = prop.getProperty("selecttotList");
		
		try {
			stmt = con.createStatement();
		
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<SeoulVo>();
			
			while(rset.next()) {
				SeoulVo s = new SeoulVo();
				 s.setTitle(rset.getString("STITLE"));
				 s.setAddr1(rset.getString("SADDR")); 
				  s.setFirstimage(rset.getString("SFIRSTIMAGE"));  
				  
			 
				list.add(s);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}
	}
 
	 
 
 