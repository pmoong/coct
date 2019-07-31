package com.cw.coc.place;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.catalina.Session;
 
public class Condb {
 String sqlURL  = "jdbc:oracle:thin:@localhost:1521:xe";
     String user = "COC";
    String password = "COC";
     static Connection conn = null;
   /*  String sfirstimage=((String).getAttribute("sfirstimage");
 */
     
 public Condb() throws IOException{
     try {
      System.out.println("try : get connection");
      Class.forName("oracle.jdbc.driver.OracleDriver"); 
         conn = DriverManager.getConnection(sqlURL, user, password);
/*         String park="SELECT * FROM SEOUL WHERE SCAT3='A02010100'"+sfirstimage+"'";
*/        
         
         System.out.println("success !");
     }catch (SQLException e) {
			e.printStackTrace();
     } catch (ClassNotFoundException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  } 
 }
 /*<%String title =request.getParameter("title");
  Connection conn =null;
   
  
 	String cfitstimage=request.getParameter("image");
  ResultSet rs =excuteQuery("select * from seoul where scat2='A0201'"+cfitstimage);

 %>	  <result>
 <id><%=rs.getString("TITLE") %>
 <order><%=rs.getString("FIRSTIMAGE") %>
 </order>*/
 
 public static Connection getConnection(){
   return conn;
 }
} 


