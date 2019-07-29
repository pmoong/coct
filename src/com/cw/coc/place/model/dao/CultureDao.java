package com.cw.coc.place.model.dao;

import java.io.File;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.cw.coc.place.Condb;
import com.cw.coc.place.CultureParser;
import com.cw.coc.place.model.vo.CultureVo;
 
public class CultureDao {
	/*private Properties prop =new Properties();
	public SeoulDao(){
		String fileName=SeoulDao.class.getResource("/sql/place/seoul-query.properties").getPath();
		try {
	prop.load(new FileReader(fileName));
		} catch (IOException e) { 			e.printStackTrace(); 
		}*/
 
  public static void saveDB(List<CultureVo> xmlList){
  
  }
	 public static void main(String[] args) {
 
  // TODO Auto-generated method stub
  File file = new File("culture1.xml");
  System.out.println("1");
  
  CultureParser CultureParser = new CultureParser(file);
  System.out.println("2");
  System.out.println("CultureParser"+CultureParser);
  
  List<CultureVo> tmp = CultureParser.parse("item");
  
  System.out.println("dmdk");
  
  Condb condb = new Condb();
  Connection conn = Condb.getConnection();
 	 
   String sql ="INSERT INTO CULTURE VALUES(?,?,?,?,?,?,?,?,?)";
 
  try {
   for(int i=0; i<tmp.size() ; i++){
    PreparedStatement stmt = conn.prepareStatement(sql);
  
    stmt.setString(1, tmp.get(i).getCtitle());
    stmt.setString(2, tmp.get(i).getCaddr1());
    
    stmt.setInt(3, tmp.get(i).getCcontenttypeid());
    stmt.setString(4, tmp.get(i).getCcat1());
    stmt.setString(5, tmp.get(i).getCcat2());
    stmt.setString(6, tmp.get(i).getCcat3());
    stmt.setString(7, tmp.get(i).getCmapx());
    stmt.setString(8, tmp.get(i).getCmapy());
    stmt.setString(9, tmp.get(i).getCfirstimage());
    stmt.executeUpdate();
    System.out.println("sucess to save");
   }
  } catch (SQLException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  }
}
	 

 
 
} 


