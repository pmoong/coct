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
import com.cw.coc.place.SeoulParser;
import com.cw.coc.place.model.vo.CultureVoYM;
import com.cw.coc.place.model.vo.SeoulVo;
import com.cw.coc.place.model.vo.SeoulVoYM;

public class SeoulDaoYM {
	
	private Properties prop = new Properties();

	public SeoulDaoYM() {
		String fileName = SeoulDaoYM.class.getResource("/sql/place/seoulym-query.properties").getPath();

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
	
	public static void saveDB(List<SeoulVo> xmlList){
		  
	  }
		 public static void main(String[] args) {
	 
	  File file = new File("seoul2.xml");
	  
	  SeoulParser SeoulParser = new SeoulParser(file);
	  System.out.println("CultureParser"+SeoulParser);
	  
	  List<SeoulVo> tmp = SeoulParser.parse("item");
	  
	  System.out.println("dmdk");
	  
	  try {
		Condb condb = new Condb();
	} catch (IOException e1) {
		e1.printStackTrace();
	}
	  Connection conn = Condb.getConnection();
	 	 
	   String sql ="INSERT INTO SEOUL VALUES(SEQ_CCODE.NEXTVAL,?,?,?,?,?,?,?,?,?)";
	   try {
	   for(int i=0; i<tmp.size() ; i++){
	    PreparedStatement stmt = conn.prepareStatement(sql);
	  
	    stmt.setString(1, tmp.get(i).getTitle());
	    stmt.setString(2, tmp.get(i).getAddr1());
	    
	    stmt.setInt(3, tmp.get(i).getContenttypeid());
	    stmt.setString(4, tmp.get(i).getCat1());
	    stmt.setString(5, tmp.get(i).getCat2());
	    stmt.setString(6, tmp.get(i).getCat3());
	    stmt.setString(7, tmp.get(i).getMapx());
	    stmt.setString(8, tmp.get(i).getMapy());
	    stmt.setString(9, tmp.get(i).getFirstimage());
	    
	    stmt.executeUpdate();
	    System.out.println("sucess to save");
	   }
	  } catch (SQLException e) {
	   // TODO Auto-generated catch block
	   e.printStackTrace();
	  }
	}
		
		 
		public ArrayList<SeoulVoYM> searchSeoulVoYM(Connection con, String keyWord) {
			ArrayList<SeoulVoYM> list = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;

			String query = prop.getProperty("searchSeoul");
			
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, keyWord);
				pstmt.setString(2, keyWord);
				rset = pstmt.executeQuery();
				
				list = new ArrayList<SeoulVoYM>();
				while(rset.next()) {
					SeoulVoYM so = new SeoulVoYM();
					so.setcCode(rset.getInt("SEQ_CCODE"));
					so.setTitle(rset.getString("STITLE"));
					so.setAddr1(rset.getString("SADDR"));
					so.setContenttypeid(rset.getInt("SCONTENTTYPEID"));
					so.setCat1(rset.getString("SCAT1"));
					so.setCat2(rset.getString("SCAT2"));
					so.setCat3(rset.getString("SCAT3"));
					so.setMapx(rset.getString("SMAPX"));
					so.setMapy(rset.getString("SMAPY"));
					so.setFirstimage(rset.getString("SFIRSTIMAGE"));
					
					list.add(so);
			
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
