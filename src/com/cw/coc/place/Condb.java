package com.cw.coc.place;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.cw.coc.common.JDBCTemplate;
import org.apache.catalina.Session;
  
public class Condb {
 String sqlURL  = "jdbc:oracle:thin:@localhost:1521:xe";
     String user = "coc";
    String password = "coc";
     static Connection conn = null;
   
 public Condb() throws IOException{
     try {
      System.out.println("try : get connection");
      Class.forName("oracle.jdbc.driver.OracleDriver"); 
         conn = DriverManager.getConnection(sqlURL, user, password);
       
         System.out.println("success !");
     }catch (SQLException e) {
			e.printStackTrace();
     } catch (ClassNotFoundException e) {
   e.printStackTrace();
  } 
 }
 
 
 public static Connection getConnection(){
   return conn;
 }
} 


