package com.cw.coc.place.model.dao;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.cw.coc.place.Condb;
import com.cw.coc.place.LogmentParser;
import com.cw.coc.place.model.vo.LogmentVo;
 

public class LogmentDao {
	 public static void saveDB(List<LogmentVo> xmlList){
		  
	  }
		 public static void main(String[] args) {
	 
	  File file = new File("LOGMENT.xml");
	  
	  LogmentParser LogmentParser = new LogmentParser(file);
	  System.out.println("CultureParser"+LogmentParser);
	  
	  List<LogmentVo> tmp = LogmentParser.parse("item");
	  if (tmp == null) {
			System.out.println("b");

		} 
	  System.out.println("dmdk");
	  
	  try {
		Condb condb = new Condb();
	} catch (IOException e1) {
		e1.printStackTrace();
	}    
	  Connection conn = Condb.getConnection();
	 	 
	   String sql="INSERT INTO LOGMENT VALUES(?,?,?,?,?,?,?,?)";
	   try {
	   for(int i=0; i<tmp.size() ; i++){
	    PreparedStatement stmt = conn.prepareStatement(sql);
	     
	    stmt.setString(1, tmp.get(i).getLtitle());
/*	    stmt.setString(, tmp.get(i).getLaddr());
*/	    stmt.setString(2, tmp.get(i).getLtel());
	    stmt.setInt(3, tmp.get(i).getLcontenttypeid());
	    stmt.setString(4, tmp.get(i).getLcat1());
	    stmt.setString(5, tmp.get(i).getLcat2());
	    stmt.setString(6, tmp.get(i).getLcat3());
	    stmt.setString(7, tmp.get(i).getLmapx());
	    stmt.setString(8, tmp.get(i).getLmapy());
	    stmt.setString(9, tmp.get(i).getLfirstimage());
	    System.out.println(sql);
	    stmt.executeUpdate();
	    System.out.println("sucess to save");
	   }
	  } catch (SQLException e) {
	   // TODO Auto-generated catch block
	   e.printStackTrace();
	  }
	}
}
