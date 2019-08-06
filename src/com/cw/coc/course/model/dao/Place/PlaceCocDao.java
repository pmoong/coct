package com.cw.coc.course.model.dao.Place;
import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.course.model.vo.Place.PlaceCocVo;

public class PlaceCocDao {
	private Properties prop=new Properties();
	public PlaceCocDao() {
		
		String fileName=BoardDao.class.getResource("/sql/PlaceCoc/PlaceCoc-query.properties").getPath();
	
		
		try {
			prop.load(new FileReader(fileName));
		}    catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
 

	public int PlaceinsertCoc(Connection con, PlaceCocVo p) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("placeinsertcoc");
		
		try {
			pstmt = con.prepareStatement(query);
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int PlaceinsertCoc(Connection con, int cCode, int loginUserNo) {
		
		PreparedStatement pstmt=null;
		int result=0;
		String query=prop.getProperty("placeinsertcoc");
		
		try {
			pstmt=con.prepareStatement(query);
			
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1,loginUserNo);
			pstmt.setInt(2, cCode);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
 		return result;
	}

	public ArrayList<PlaceCocVo> PlaceisCoc(Connection con, int userNo) {
		ArrayList<PlaceCocVo> list=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		String query=prop.getProperty("placeiscoc");
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, userNo);
			rset=pstmt.executeQuery();
			list=new ArrayList<PlaceCocVo>();
			
			while(rset.next()) {
				PlaceCocVo pc =new PlaceCocVo();
				pc.setcCode(rset.getInt("SEQ_CCODE"));
				
				list.add(pc);
		} 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(rset);
		}
		return list;
	}
	
	public int PlacedeleteCoc(Connection con, int cCode, int loginUserNo) {
		PreparedStatement pstmt=null;
		int result=0;
		String query = prop.getProperty("placedeleteCoc");
		
		try {
			pstmt=con.prepareStatement(query);
			
			pstmt.setInt(1, loginUserNo);
			pstmt.setInt(2, cCode);
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
 			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	
}	
}
/*	
public int PlaceinsertCoc(Connection con, int cCode) {
	
	PreparedStatement pstmt=null;
	int result=0;
	String query=prop.getProperty("placeinsertcoc");
	
	try {
		pstmt=con.prepareStatement(query);
		
		pstmt=con.prepareStatement(query);
 		pstmt.setInt(1, cCode);
		result=pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		close(pstmt);
	}
		return result;
}

	public int PlaceinsertCoc(Connection con, PlaceCocVo p) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("placeinsertcoc");
		
		try {
			pstmt = con.prepareStatement(query);
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	 

	public int PlacedeleteCoc(Connection con, int cCode) {
		PreparedStatement pstmt=null;
		int result=0;
		String query = prop.getProperty("deleteCoc");
		
		try {
			pstmt=con.prepareStatement(query);
			
 			pstmt.setInt(1, cCode);
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
 			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}
*/
/*	public ArrayList<PlaceCocVo> PlaceisCoc(Connection con, int userNo) {
		ArrayList<PlaceCocVo> list=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		String query=prop.getProperty("placeiscoc");
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, userNo);
			rset=pstmt.executeQuery();
			list=new ArrayList<PlaceCocVo>();
			
			while(rset.next()) {
				PlaceCocVo pc =new PlaceCocVo();
				pc.setcCode(rset.getInt("SEQ_CCODE"));
				
				list.add(pc);
		} 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(rset);
		}
		return list;
	}
	public ArrayList<PlaceCocVo> PlaceisCoc(Connection con) {
		ArrayList<PlaceCocVo> list=null;
		PreparedStatement pstmt =null;
		ResultSet rset =null;
		
		String query=prop.getProperty("placeiscoc");
		try {
			pstmt=con.prepareStatement(query);
 			rset=pstmt.executeQuery();
			list=new ArrayList<PlaceCocVo>();
			
			while(rset.next()) {
				PlaceCocVo pc =new PlaceCocVo();
				pc.setcCode(rset.getInt("SEQ_CCODE"));
				
				list.add(pc);
		} 
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(rset);
		}
		return list;
	}
	*/

