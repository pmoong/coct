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
import java.util.Properties;

import com.cw.coc.common.JDBCTemplate;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.model.vo.CultureVoYM;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.place.model.vo.Place;
import com.cw.coc.place.model.vo.RestaurantVo;
import com.cw.coc.place.model.vo.SeoulVoYM;


public class PlaceDao {
 	private Properties prop = new Properties();
  
	public PlaceDao() {
		
 		
		String fileName = 
				PlaceDao.class.getResource("/sql/PlaceCoc/PlaceCoc-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Place> searchRoomList(Connection con, String locationName) {
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
	}

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

	public ArrayList<LogmentVoYM> selectlogment(Connection con,Member m) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<LogmentVoYM>list =new ArrayList<LogmentVoYM>();
		String query = prop.getProperty("cocselectLogment");
		
		try {
			
			pstmt=con.prepareStatement(query);
		/*	 
			int startRow=(currentPage -1) *limit +1;
			int endRow=startRow +limit -1;*/
			pstmt.setInt(1, m.getUno());

			/*pstmt.setInt(2,startRow);
			pstmt.setInt(3, endRow);*/

			rset=pstmt.executeQuery();
			list=new ArrayList<LogmentVoYM>();
				
			while(rset.next()) {
				LogmentVoYM l = new LogmentVoYM();
				
				l.setLtitle(rset.getString("LTITLE"));
				l.setLfirstimage(rset.getString("LFIRSTIMAGE"));
				l.setLaddr(rset.getString("LADDR"));
				list.add(l);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<RestaurantVo> selectrestaurant(Connection con ,Member m) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<RestaurantVo>list =new ArrayList<RestaurantVo>();
		
		String query = prop.getProperty("cocselectRestaurant");
		
		try {
			pstmt=con.prepareStatement(query);
			 
		/*	int startRow=(currentPage -1) *limit +1;
			int endRow=startRow +limit -1;*/
			pstmt.setInt(1, m.getUno());
		/*	pstmt.setInt(2,startRow);
			pstmt.setInt(3, endRow);*/

			rset=pstmt.executeQuery();
			list=new ArrayList<RestaurantVo>();
			while(rset.next()) {
RestaurantVo r = new RestaurantVo();
				
				r.setRtitle(rset.getString("RTITLE"));
				r.setRfirstimage(rset.getString("RFIRSTIMAGE"));
				r.setRaddr(rset.getString("RADDR"));

					list.add(r);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<CultureVoYM> selectculture(Connection con,Member m) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<CultureVoYM> list =null;
		
		String query = prop.getProperty("cocselectculture");
		
		try {
			pstmt=con.prepareStatement(query);
		 
			pstmt.setInt(1, m.getUno());
		 
			rset=pstmt.executeQuery();
			list=new ArrayList<CultureVoYM>();
			while(rset.next()) {
				CultureVoYM c = new CultureVoYM();
				
				c.setCtitle(rset.getString("CTITLE"));
				c.setFirstimage(rset.getString("CFIRSTIMAGE"));
				c.setCaddr(rset.getString("CADDR"));
					list.add(c);
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	public ArrayList<SeoulVoYM> selectseoul(Connection con,Member m) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<SeoulVoYM>list =new ArrayList<SeoulVoYM>();
		String query = prop.getProperty("cocselectSeoul");
		
		try {
			pstmt=con.prepareStatement(query);
			 
		/*	int startRow=(currentPage -1) *limit +1;
			int endRow=startRow +limit -1;*/
			pstmt.setInt(1, m.getUno());
/*
			pstmt.setInt(2,startRow);
			pstmt.setInt(3, endRow);
*/
			rset=pstmt.executeQuery();
			list=new ArrayList<SeoulVoYM>();
			
			while(rset.next()) {
				SeoulVoYM s = new SeoulVoYM();
				
				s.setTitle(rset.getString("STITLE"));
				s.setFirstimage(rset.getString("SFIRSTIMAGE"));
				s.setAddr1(rset.getString("SADDR"));
				list.add(s);

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
	 
	 
		String query=prop.getProperty("cocgetListCount");
		
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

	 public ArrayList<Place> selectList(Connection con,Member m) {
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		ArrayList<Place>list =new ArrayList<Place>();
		String query =prop.getProperty("selectListPaging");
System.out.println("11111");
		try {
		pstmt=con.prepareStatement(query);
 
		pstmt.setInt(1, m.getUno());
		pstmt.setInt(2, m.getUno());
		pstmt.setInt(3, m.getUno());
		pstmt.setInt(4, m.getUno());
 
		rset=pstmt.executeQuery();
		list=new ArrayList<Place>();
		while(rset.next()) {
			Place c =new Place();
			 
			c.setpName("PNAME");
			c.setpAddress(rset.getString("PADDRESS"));
			c.setImage(rset.getString("IMAGE"));
			list.add(c);
				System.out.println(list+"list");
			}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close(pstmt);
		close(rset);
 	}
		return list;
	} 

	public ArrayList<RestaurantVo> selectListPage(Connection conn,String searchkey,
			String searchvalue,Member m) {
		
		ArrayList<RestaurantVo>list =null;
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
		 
		     
			if (searchkey.equals("total")) {
               pstmt = conn.prepareStatement(total);
               pstmt.setString(1, searchvalue);
               pstmt.setInt(2, m.getUno());
       		   pstmt.setString(3, searchvalue);
       		   pstmt.setInt(4, m.getUno());
    		   pstmt.setString(5, searchvalue);
    		   pstmt.setInt(6, m.getUno());
        		pstmt.setString(7, searchvalue);
        		pstmt.setInt(8, m.getUno());
             
           } else if (searchkey.equals("culture")) {
           
               pstmt = conn.prepareStatement(culture);
       
       	   pstmt.setInt(1, m.getUno());
           pstmt.setString(2, searchvalue);
   	 
    		 

            } else if (searchkey.equals("logment")) {
            
               pstmt = conn.prepareStatement(logment);
               pstmt.setInt(1, m.getUno());
               pstmt.setString(2, searchvalue);
       		 
        		/* pstmt.setInt(9,startRow);
        			pstmt.setInt(10, endRow);*/

           } else if (searchkey.equals("restaurant")) {
          
               pstmt = conn.prepareStatement(restaurant);
               pstmt.setInt(1, m.getUno());
               pstmt.setString(2, searchvalue);
       	 
        		 
           } else if (searchkey.equals("seoul")) {
         
               pstmt = conn.prepareStatement(seoul);
               pstmt.setInt(1, m.getUno());
               pstmt.setString(2, searchvalue);
       		 
        		  
            } else if (searchkey.equals("addr")) {
               pstmt = conn.prepareStatement(addr);
                pstmt.setString(1, searchvalue);
               pstmt.setInt(2, m.getUno());
       		   pstmt.setString(3, searchvalue);
       		   pstmt.setInt(4, m.getUno());
    		   pstmt.setString(5, searchvalue);
    		   pstmt.setInt(6, m.getUno());
        		pstmt.setString(7, searchvalue);
        		pstmt.setInt(8, m.getUno());
        		 
           } else {
        	   System.out.println("b");
           }
 			rset = pstmt.executeQuery();
			list = new ArrayList<RestaurantVo>();
			
			while(rset.next()) {
				RestaurantVo r =new RestaurantVo();
				 
				r.setRtitle(rset.getString("RTITLE"));
				System.out.println("p:"+r);
				r.setRaddr(rset.getString("RADDR"));
				r.setRfirstimage(rset.getString("FIRSTIMAGE"));
 
				
				list.add(r);
 			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}return list;
		
}
	 

}
	
	
	
	
	
	
	
	
	
	
	
	
