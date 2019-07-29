package com.cw.coc.place.model.dao;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
 import java.sql.SQLException;
import java.util.List;

import com.cw.coc.place.Condb;
import com.cw.coc.place.SeoulParser;
import com.cw.coc.place.model.vo.SeoulVo;

  
 
public class SeoulDao {
	/*private Properties prop =new Properties();
	public SeoulDao(){
		String fileName=SeoulDao.class.getResource("/sql/place/seoul-query.properties").getPath();
		try {
	prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}*/
 
  public static void saveDB(List<SeoulVo> xmlList){
  
  }
 
 
	 public static void main(String[] args) {


  // TODO Auto-generated method stub
  File file = new File("seoul.xml");
  SeoulParser seoulParser = new SeoulParser(file);
  List<SeoulVo> tmp = seoulParser.parse("item");
  
  try {
	Condb connectDB = new Condb();
} catch (IOException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}
  
  
  Connection conn = Condb.getConnection();
   	 System.out.println(conn+"conn");
   String sql = "INSERT INTO SEOUL VALUES(?,?,?,?,?,?,?,?,?)";
 
  try {
   for(int i=0; i<tmp.size() ; i++){
    PreparedStatement stmt = conn.prepareStatement(sql);
   
    System.out.println(sql);

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


 
 
} 


