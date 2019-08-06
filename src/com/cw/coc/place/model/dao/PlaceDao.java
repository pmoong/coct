package com.cw.coc.place.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Properties;

import com.cw.coc.common.JDBCTemplate;
import com.cw.coc.place.model.vo.Place;


public class PlaceDao {
 	private Properties prop = new Properties();
  
	public PlaceDao() {
		
 		
		String fileName = 
				PlaceDao.class.getResource("/sql/place/place-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/*public ArrayList<Place> searchRoomList(Connection con, String locationName) {
		Statement stmt = null;
		ArrayList<Place> list = null;
		ResultSet rset = null;
		 
		
		String query = prop.getProperty("searchRoomList");
		
		try {
			
			
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			list = new ArrayList<Place>();
				
				
			while(rset.next()) {
				Place p = new Place();
				
				p.setcCode(rset.getInt("SEQ_CCODE"));
				p.setpName(rset.getString("PNAME"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
				p.setiCode(rset.getString("ICODE"));
				p.setiContent(rset.getString("ICONTENT"));
				
				
				if(Integer.parseInt(locationName) ==  rset.getInt("ICODE")) {
					
					list.add(p);
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		
		return list;
	}*/

	/*public ArrayList<Place> randomPlace(Connection con) {
		Statement stmt = null;
		ArrayList<Place> list = null;
		ArrayList<Place> randomlist = null;
		ResultSet rset = null;
		 
		
		String query = prop.getProperty("randomPlaceList");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			list = new ArrayList<Place>();
			
			
			while(rset.next()) {
				Place p = new Place();
				p.setcCode(rset.getInt("SEQ_CCODE"));
				list.add(p);
			}
			System.out.println("리스트 사이즈 : " + list.size());
			
			int[] random = new int[9];
			
			for(int i=0; i < random.length; i++) {
				random[i] = (int)(Math.random() * list.size() + 1);
				
				for(int j=0; j < i; j++) {
					if(random[j] == random[i]) {
						i--;
						break;
					}
				}
			}
			
			
			String query1 = prop.getProperty("selectRandomList");
			randomlist = new ArrayList<Place>();
			rset = stmt.executeQuery(query1);
			
			while(rset.next()) {
				Place p = new Place();
				
				p.setcCode(rset.getInt("SEQ_CCODE"));
				p.setImage(rset.getString("IMAGE"));
				p.setpName(rset.getString("PNAME"));
				randomlist.add(p);
			}
			
			for(Place p : randomlist) {
				System.out.println(p);
			}
			
			Collections.shuffle(randomlist);
			
			System.out.println("===========");
			for(Place p : randomlist) {
				System.out.println(p);
			}
			
			
			
			for(int i = 0; i < random.length; i++) {
				System.out.println(random[i] + " ");
				
				
				
				
				stmt = con.createStatement();
				
				
				while(rset.next()) {
					
					Place p = new Place();
					
					p.setcCode(rset.getInt("SEQ_CCODE"));
					p.setImage(rset.getString("IMAGE"));
					
					if(random[i] == rset.getInt("SEQ_CCODE")) {
						randomlist.add(p);
							
					}
				
					
				}
				System.out.println(randomlist);
				
			}
			
			System.out.println(randomlist);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		

		return randomlist;
	}*/

	/*public ArrayList<Place> searchAllList(Connection con) {
		Statement stmt = null;
		ArrayList<Place> list = null;
		ResultSet rset = null;
		 
		
		String query = prop.getProperty("searchAll");
		
		try {
			
			
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			list = new ArrayList<Place>();
				
				
			while(rset.next()) {
				Place p = new Place();
				
				p.setcCode(rset.getInt("SEQ_CCODE"));
				p.setpName(rset.getString("PNAME"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
				p.setiCode(rset.getString("ICODE"));
				p.setiContent(rset.getString("ICONTENT"));
				
					list.add(p);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		
		return list;
	}

	public ArrayList<Place> rsvRoomInfo(Connection con) {
		// TODO Auto-generated method stub
		return null;
	}*/

	public ArrayList<Place> selectlogment(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Place>list =new ArrayList<Place>();
		String query = prop.getProperty("selectlogment");
		
		try {
			
			pstmt=con.prepareStatement(query);
			 
			int startRow=(currentPage -1) *limit +1;
			int endRow=startRow +limit -1;
			
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);

			rset=pstmt.executeQuery();
			list=new ArrayList<Place>();
				
			while(rset.next()) {
				Place p = new Place();
				
				p.setpName(rset.getString("PNAME"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
				p.setiCode(rset.getString("ICODE"));
				p.setMapx(rset.getString("MAPX"));
				p.setMapy(rset.getString("MAPY"));
				p.setcCode(rset.getInt("SEQ_CCODE"));

				
					list.add(p);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Place> selectrestaurant(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Place>list =new ArrayList<Place>();
		
		String query = prop.getProperty("selectrestaurant");
		
		try {
			pstmt=con.prepareStatement(query);
			 
			int startRow=(currentPage -1) *limit +1;
			int endRow=startRow +limit -1;
			
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);

			rset=pstmt.executeQuery();
			list=new ArrayList<Place>();
			while(rset.next()) {
				Place p = new Place();
				
				p.setpName(rset.getString("PNAME"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
				p.setiCode(rset.getString("ICODE"));
				p.setMapx(rset.getString("MAPX"));
				p.setMapy(rset.getString("MAPY"));
				p.setcCode(rset.getInt("SEQ_CCODE"));

					list.add(p);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Place> selectculture(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Place>list =new ArrayList<Place>();
		
		String query = prop.getProperty("selectculture");
		
		try {
			pstmt=con.prepareStatement(query);
			 
			int startRow=(currentPage -1) *limit +1;
			int endRow=startRow +limit -1;
			
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);

			rset=pstmt.executeQuery();
			list=new ArrayList<Place>();
			while(rset.next()) {
				Place p = new Place();
				
				p.setpName(rset.getString("PNAME"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
				p.setiCode(rset.getString("ICODE"));
				p.setMapx(rset.getString("MAPX"));
				p.setMapy(rset.getString("MAPY"));
				p.setcCode(rset.getInt("SEQ_CCODE"));

					list.add(p);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Place> selectseoul(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Place>list =new ArrayList<Place>();
		String query = prop.getProperty("selectseoul");
		
		try {
			pstmt=con.prepareStatement(query);
			 
			int startRow=(currentPage -1) *limit +1;
			int endRow=startRow +limit -1;
			
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);

			rset=pstmt.executeQuery();
			list=new ArrayList<Place>();
			while(rset.next()) {
				Place p = new Place();
				
				p.setpName(rset.getString("PNAME"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
				p.setiCode(rset.getString("ICODE"));
				p.setMapx(rset.getString("MAPX"));
				p.setMapy(rset.getString("MAPY"));
				p.setcCode(rset.getInt("SEQ_CCODE"));

					list.add(p);
					System.out.println(rset.getString("PNAME"));

			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<Place> selecttot(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Place>list =new ArrayList<Place>();
		
		String query = prop.getProperty("selecttot");
		
		try {
			pstmt=con.prepareStatement(query);
			 
			int startRow=(currentPage -1) *limit +1;
			int endRow=startRow +limit -1;
			
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);

			rset=pstmt.executeQuery();
			list=new ArrayList<Place>();
			while(rset.next()) {
				Place p = new Place();
				
				p.setpName(rset.getString("PNAME"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
				p.setiCode(rset.getString("ICODE"));
				p.setMapx(rset.getString("MAPX"));
				p.setMapy(rset.getString("MAPY"));
				p.setcCode(rset.getInt("SEQ_CCODE"));

					list.add(p);
 			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	 
	
	public ArrayList<Place> searchList(Connection conn ,String searchkey,String searchvalue) {
		 
		ArrayList<Place>list =null;
		PreparedStatement pstmt=null;
		ResultSet rset=null;
 		String culture =prop.getProperty("culture");
		String logment =prop.getProperty("logment");
		String restaurant =prop.getProperty("restaurant");
		String seoul =prop.getProperty("seoul");
		String addr =prop.getProperty("addr");
		String total=prop.getProperty("total");
		try {
			 conn = JDBCTemplate.getConnection();
			if (searchkey.equals("total")) {
               pstmt = conn.prepareStatement(total);
               pstmt.setString(1, searchvalue);
               pstmt.setString(2, searchvalue);
 
           } else if (searchkey.equals("culture")) {
           
               pstmt = conn.prepareStatement(culture);
               pstmt.setString(1,searchvalue);
               
            } else if (searchkey.equals("logment")) {
            
               pstmt = conn.prepareStatement(logment);
               pstmt.setString(1, searchvalue);
           } else if (searchkey.equals("restaurant")) {
          
               pstmt = conn.prepareStatement(restaurant);
               pstmt.setString(1,searchvalue);
           } else if (searchkey.equals("seoul")) {
         
               pstmt = conn.prepareStatement(seoul);
               pstmt.setString(1, searchvalue);
            } else if (searchkey.equals("addr")) {
               pstmt = conn.prepareStatement(addr);
               pstmt.setString(1, searchvalue);
           
           } else {
        	   System.out.println("b");
           }
 			rset = pstmt.executeQuery();
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				Place p = new Place();
				p.setpName(rset.getString("PNAME"));
 			 	p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
  				p.setMapx(rset.getString("MAPX"));
				p.setMapy(rset.getString("MAPY"));
				p.setcCode(rset.getInt("SEQ_CCODE"));
					list.add(p);
 			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}return list;
		
}

	public int getListCount(Connection con) {
		Statement stmt=null;
		int listCount =0;
		ResultSet rset=null;
	 
	 
		String query=prop.getProperty("getListCount");
		
 		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
			
		}
 		System.out.println("listcount:"+listCount);
		return listCount;
	}

	public ArrayList<Place> selectList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Place>list =new ArrayList<Place>();
		String query =prop.getProperty("selectListPaging");

		try {
		pstmt=con.prepareStatement(query);
		 
		int startRow=(currentPage -1) *limit +1;
		int endRow=startRow +limit -1;
		
		pstmt.setInt(1,startRow);
		pstmt.setInt(2, endRow);

		rset=pstmt.executeQuery();
		list=new ArrayList<Place>();
		while(rset.next()) {
			Place p = new Place();
			p.setpName(rset.getString("PNAME"));
			p.setpAddress(rset.getString("PADDRESS"));
			p.setImage(rset.getString("IMAGE"));
			p.setuType(rset.getString("UTYPE"));
			p.setiCode(rset.getString("ICODE"));
			p.setMapx(rset.getString("MAPX"));
			p.setMapy(rset.getString("MAPY"));
				list.add(p);
				System.out.println(list+"list");
			}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close(pstmt);
		close(rset);
	}return list;
	}

	public ArrayList<Place> selectListPage(Connection conn, int currentPage, int limit, String searchkey,
			String searchvalue) {
		
		ArrayList<Place>list =null;
		PreparedStatement pstmt=null;
		ResultSet rset=null;
 		String culture =prop.getProperty("culturePage");
		String logment =prop.getProperty("logmentPage");
		String restaurant =prop.getProperty("restaurantPage");
		String seoul =prop.getProperty("seoulPage");
		String addr =prop.getProperty("addrPage");
		String total=prop.getProperty("totalPage");
		try {
			 conn = JDBCTemplate.getConnection();
			 int startRow=(currentPage -1) *limit +1;
		     int endRow=startRow +limit -1;
		     
			if (searchkey.equals("total")) {
               pstmt = conn.prepareStatement(total);
               pstmt.setString(1, searchvalue);
               pstmt.setString(2, searchvalue);
               pstmt.setInt(3,startRow);
       			pstmt.setInt(4, endRow);

           } else if (searchkey.equals("culture")) {
           
               pstmt = conn.prepareStatement(culture);
               pstmt.setString(1,searchvalue);
               pstmt.setInt(2,startRow);
               pstmt.setInt(3, endRow);

            } else if (searchkey.equals("logment")) {
            
               pstmt = conn.prepareStatement(logment);
               pstmt.setString(1, searchvalue);
               pstmt.setInt(2,startRow);
       		   pstmt.setInt(3, endRow);

           } else if (searchkey.equals("restaurant")) {
          
               pstmt = conn.prepareStatement(restaurant);
               pstmt.setString(1,searchvalue);
               pstmt.setInt(2,startRow);
       		   pstmt.setInt(3, endRow);
           } else if (searchkey.equals("seoul")) {
         
               pstmt = conn.prepareStatement(seoul);
               pstmt.setString(1, searchvalue);
               pstmt.setInt(3,startRow);
       		   pstmt.setInt(4, endRow);
            } else if (searchkey.equals("addr")) {
               pstmt = conn.prepareStatement(addr);
               pstmt.setString(1, searchvalue);
               pstmt.setInt(2,startRow);
       		   pstmt.setInt(3, endRow);
           
           } else {
        	   System.out.println("b");
           }
 			rset = pstmt.executeQuery();
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				Place p = new Place();
				p.setpName(rset.getString("PNAME"));
 			 	p.setpAddress(rset.getString("PADDRESS"));
				p.setImage(rset.getString("IMAGE"));
				p.setuType(rset.getString("UTYPE"));
  				p.setMapx(rset.getString("MAPX"));
				p.setMapy(rset.getString("MAPY"));
				p.setcCode(rset.getInt("SEQ_CCODE"));
					list.add(p);
 			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}return list;
		
}
	 

}
	
	
	
	
	
	
	
	
	
	
	
	
	