package com.cw.coc.place.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.cw.coc.place.Condb;
import com.cw.coc.place.CultureParser;
import com.cw.coc.place.model.vo.CultureVo;
import com.cw.coc.place.model.vo.CultureVoYM;
import com.cw.coc.place.model.vo.LogmentVoYM;

public class CultureDaoYM {
	
	private Properties prop = new Properties();

	public CultureDaoYM() {
		String fileName = CultureDaoYM.class.getResource("/sql/place/cultureym-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void saveDB(List<CultureVo> xmlList){
		  
	  }
		 public static void main(String[] args) {
	 
	  File file = new File("culture2.xml");
	  
	  CultureParser CultureParser = new CultureParser(file);
	  System.out.println("CultureParser"+CultureParser);
	  
	  List<CultureVo> tmp = CultureParser.parse("item");
	  
	  System.out.println("dmdk");
	  
	  try {
		Condb condb = new Condb();
	} catch (IOException e1) {
		e1.printStackTrace();
	}
	  Connection conn = Condb.getConnection();
	 	 
	   String sql ="INSERT INTO CULTURE VALUES(SEQ_CCODE.NEXTVAL,?,?,?,?,?,?,?,?,?)";
	   try {
	   for(int i=0; i<tmp.size() ; i++){
	    PreparedStatement stmt = conn.prepareStatement(sql);
	  
	    stmt.setString(1, tmp.get(i).getCtitle());
	    stmt.setString(2, tmp.get(i).getCaddr());
	    
	    stmt.setInt(3, tmp.get(i).getCcontenttypeid());
	    stmt.setString(4, tmp.get(i).getCcat1());
	    stmt.setString(5, tmp.get(i).getCcat2());
	    stmt.setString(6, tmp.get(i).getCcat3());
	    stmt.setString(7, tmp.get(i).getCmapx());
	    stmt.setString(8, tmp.get(i).getCmapy());
	    stmt.setString(9, tmp.get(i).getCfirstimage());
	    
	    stmt.executeUpdate();
	   }
	  } catch (SQLException e) {
	   // TODO Auto-generated catch block
	   e.printStackTrace();
	  }
	   System.out.println("sucess to save");
	}
		 
		 
		public ArrayList<CultureVoYM> searchCultureVoYM(Connection con, String keyWord) {
			ArrayList<CultureVoYM> list = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;

			String query = prop.getProperty("searchCulture");
			
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, keyWord);
				pstmt.setString(2, keyWord);
				rset = pstmt.executeQuery();
				
				list = new ArrayList<CultureVoYM>();
				while(rset.next()) {
					CultureVoYM ct = new CultureVoYM();
					ct.setcCode(rset.getInt("SEQ_CCODE"));
					ct.setCtitle(rset.getString("CTITLE"));
					ct.setCaddr(rset.getString("CADDR"));
					ct.setCcontenttypeid(rset.getInt("CCONTENTTYPEID"));
					ct.setCcat1(rset.getString("CCAT1"));
					ct.setCcat2(rset.getString("CCAT2"));
					ct.setCcat3(rset.getString("CCAT3"));
					ct.setCmapx(rset.getString("CMAPX"));
					ct.setCmapy(rset.getString("CMAPY"));
					ct.setFirstimage(rset.getString("CFIRSTIMAGE"));
					
					list.add(ct);
			
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close(pstmt);
				close(rset);
			}

			return list;
		}
	
}
