package com.cw.coc.place.model.dao;

import static com.cw.coc.common.JDBCTemplate.*;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.Condb;
import com.cw.coc.place.RestaurantParser;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.place.model.vo.RestaurantVo;
 

public class RestaurantDao {
	private Properties prop = new Properties();
	 public static void saveDB(List<RestaurantVo> xmlList){
		  
	  }
		 public static void main(String[] args) {
				PreparedStatement stmt = null;
				Connection con=null;
	  File file = new File("RESTAURANT.xml");
	  
	  RestaurantParser RestaurantParser = new RestaurantParser(file);
	  System.out.println("CultureParser"+RestaurantParser);
	  
	  List<RestaurantVo> tmp = RestaurantParser.parse("item");
	  try {
		Condb condb = new Condb();
	} catch (IOException e1) {
		e1.printStackTrace();   
	}finally {
 		close(con);
	}
	    con = Condb.getConnection();
	   
	   String sql ="INSERT INTO RESTAURANT VALUES(SEQ_CCODE.NEXTVAL,?,?,?,?,?,?,?,?,?,? )";
	   try { 
	   for(int i=0; i<tmp.size() ; i++){
		   
	    stmt = con.prepareStatement(sql);
	   /* stmt.setInt(1,tmp.get(i).getcCode());*/
	    stmt.setString(1, tmp.get(i).getRtitle());
	    stmt.setString(2, tmp.get(i).getRaddr());
	    stmt.setString(3, tmp.get(i).getRtel());
	    stmt.setInt(4, tmp.get(i).getRcontenttypeid());
	    stmt.setString(5, tmp.get(i).getRcat1());
	    stmt.setString(6, tmp.get(i).getRcat2());
	    stmt.setString(7, tmp.get(i).getRcat3());
	    stmt.setString(8, tmp.get(i).getRmapx());
	    stmt.setString(9, tmp.get(i).getRmapy());
	    stmt.setString(10, tmp.get(i).getRfirstimage());
	    
	    stmt.executeUpdate();
	    System.out.println("sucess to save");
	   }
	  } catch (SQLException e) {
	   // TODO Auto-generated catch block
	   e.printStackTrace();
	  }finally {
		
		  close(stmt);
		  close(con);
 	  }
	}

		 
		 
	
}
