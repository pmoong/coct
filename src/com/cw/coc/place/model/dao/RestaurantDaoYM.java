package com.cw.coc.place.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.cw.coc.place.Condb;
import com.cw.coc.place.RestaurantParser;
import com.cw.coc.place.model.vo.RestaurantVo;

public class RestaurantDaoYM {
	private Properties prop = new Properties();

	public RestaurantDaoYM() {
		String fileName = RestaurantDaoYM.class.getResource("/sql/place/restaurantym-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}





	public ArrayList<RestaurantVo> searchRestaurant(Connection con, String keyWord) {
		ArrayList<RestaurantVo> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("searchRestaurant");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, keyWord);
			rset = pstmt.executeQuery();
			
			list = new ArrayList<RestaurantVo>();
			while(rset.next()) {
				RestaurantVo rt = new RestaurantVo();
				/*rt.setcCode(rset.getcCode("SEQ_CCODE"));*/
				rt.setcCode(rset.getInt("SEQ_CCODE"));
				rt.setRtitle(rset.getString("RTITLE"));
				rt.setRaddr(rset.getString("RADDR"));
				rt.setRtel(rset.getString("RTEL"));
				rt.setRcontenttypeid(rset.getInt("RCONTENTTYPEID"));
				rt.setRcat1(rset.getString("RCAT1"));
				rt.setRcat2(rset.getString("RCAT2"));
				rt.setRcat3(rset.getString("RCAT3"));
				rt.setRmapx(rset.getString("RMAPX"));
				rt.setRmapy(rset.getString("RMAPY"));
				rt.setRfirstimage(rset.getString("RFIRSTIMAGE"));
				
				list.add(rt);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return list;
	}
}
