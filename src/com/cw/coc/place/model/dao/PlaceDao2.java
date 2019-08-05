 package com.cw.coc.place.model.dao;

import static com.cw.coc.common.JDBCTemplate.*;

import java.io.File;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
 import java.sql.SQLException;
 
import java.util.List;

import com.cw.coc.place.Condb;
import com.cw.coc.place.PlaceParser;
import com.cw.coc.place.model.vo.Place;
 public class PlaceDao2 {
 
  public static void saveDB(List<Place> xmlList){
  
  }
	 public static void main(String[] args) {
			PreparedStatement stmt = null;
			Connection conn=null;

   File file = new File("culture2.xml");
  
  PlaceParser PlaceParser = new PlaceParser(file);
  System.out.println("PlaceParser"+PlaceParser);
  List<Place> tmp = PlaceParser.parse("item");
  
   
  try {
	Condb condb = new Condb();
} catch (IOException e1) {
	e1.printStackTrace();
}finally {
		close(conn);
}
  
  
  conn = Condb.getConnection();
    String sql ="INSERT INTO PLACE VALUES(SEQ_CCODE.NEXTVAL,?,?,?,?,?,?,?,?)";
   try {
   for(int i=0; i<tmp.size() ; i++){
    stmt = conn.prepareStatement(sql);
     stmt.setString(1, tmp.get(i).getpName());
     
    System.out.println(tmp.get(i).getpName());
    stmt.setString(2, tmp.get(i).getpAddress());
    stmt.setString(3, tmp.get(i).getImage());
    stmt.setString(4, tmp.get(i).getuType());
    stmt.setString(5, tmp.get(i).getiCode());
    stmt.setString(6, tmp.get(i).getiContent()); 
    stmt.setString(7, tmp.get(i).getMapx());
    System.out.println(tmp.get(i).getMapx());
    
     stmt.setString(8, tmp.get(i).getMapy());
     System.out.println(tmp.get(i).getMapy());   
   
     
    stmt.executeUpdate();
    System.out.println("smtmt:"+stmt);
     System.out.println("sucess to save");
   }
  } catch (SQLException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  } finally {
		
	  close(stmt);
	  close(conn);
	  }
}
	 

 
 
} 


 