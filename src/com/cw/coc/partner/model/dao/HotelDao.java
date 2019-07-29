package com.cw.coc.partner.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;
 

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.cw.coc.partner.model.vo.Attachment;
import com.cw.coc.partner.model.vo.Hotel;


public class HotelDao {
	
	private Properties prop =new Properties();
	
	public HotelDao() {
		
		String fileName=HotelDao.class.getResource("sql/partner/hotel-query.properties").getPath();
	
		try {
			prop.load(new FileReader(fileName));
		}   catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	//hotel info내용 삽입
	public int insertImgContent(Connection con, Hotel h) {
		PreparedStatement pstmt =null;
		int result=0;
		String query =prop.getProperty("insertinfo");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, h.gethTitle());
			pstmt.setString(2, h.gethContent());

		result =pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}



//hotel sequence값 가져오는것
	public int selectCurrval(Connection con) {
		Statement stmt =null;
		ResultSet rset =null;
		int hid=0;
		String query=prop.getProperty("selectCurrval");
		
		try {
			stmt =con.createStatement();
			rset=stmt.executeQuery(query);
			
			if(rset.next()) {
				hid=rset.getInt("currval");
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		
		
		return hid;
	}




	public int insertAttachment(Connection con, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt =null;
		int result=0;
		
		String query=prop.getProperty("insertAttachment");
			try {
				for(int i=0; i<fileList.size(); i++) {
				pstmt=con.prepareStatement(query);
				pstmt.setInt(1, fileList.get(i).getBid());
				pstmt.setString(2, fileList.get(i).getOriginName());
				pstmt.setString(3,fileList.get(i).getChangeName());
				pstmt.setString(4, fileList.get(i).getFilePath());
				
				int level=0;
				if(i ==0) {
					level=0;
				}else {
					level=1;
				}
				pstmt.setInt(5, level);
				result += pstmt.executeUpdate();
				}	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close(pstmt);
		}
		return result;
	}



	public ArrayList<HashMap<String, Object>> selecthotelImg(Connection con) {
		Statement stmt=null;
		ArrayList<HashMap<String,Object>> list=null;
		HashMap<String,Object> hmap=null;
		ResultSet rset =null;
		
		String query =prop.getProperty("selecthotelImg");

		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			list = new ArrayList<HashMap<String,Object>>();
		
			while(rset.next()) {
				hmap =new HashMap<String,Object>();
				hmap.put("hid", rset.getInt("HID"));
				hmap.put("bno",rset.getInt("BNO"));
				hmap.put("htitle", rset.getString("HTITLE"));
				hmap.put("hcontent", rset.getString("HCONTENT"));
				/*hmap.put("bwriter",rset.getString("NICK_NAME"));*/
				/*hmap.put("bcount",rset.getInt("BCOUNT"));*/
				hmap.put("hdate",rset.getDate("HDATE"));
				hmap.put("fid",rset.getInt("FID"));
				hmap.put("originName",rset.getString("ORIGIN_NAME"));
				hmap.put("changeName",rset.getString("CHANGE_NAME"));
				hmap.put("filePath",rset.getString("FILE_PATH"));
				hmap.put("uploadDate",rset.getString("UPLOAD_DATE"));
				
				list.add(hmap);
			    }
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

 
 
 
}
