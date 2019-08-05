package com.cw.coc.place.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.place.model.vo.LogmentVoYM;

public class LogmentDaoYM {
	private Properties prop = new Properties();

	public LogmentDaoYM() {
		String fileName = LogmentDaoYM.class.getResource("/sql/place/logmentym-query.properties").getPath();

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





	public ArrayList<LogmentVoYM> searchLogmentYM(Connection con, String keyWord) {
		ArrayList<LogmentVoYM> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("searchLogment");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, keyWord);
			pstmt.setString(2, keyWord);
			rset = pstmt.executeQuery();
			
			list = new ArrayList<LogmentVoYM>();
			while(rset.next()) {
				LogmentVoYM lt = new LogmentVoYM();
				lt.setcCode(rset.getInt("SEQ_CCODE"));
				lt.setLtitle(rset.getString("LTITLE"));
				lt.setLaddr(rset.getString("LADDR"));
				lt.setLsigungucode(rset.getInt("LSIGUNGUCODE"));
				lt.setLtel(rset.getString("LTEL"));
				lt.setLcontenttypeid(rset.getInt("LCONTENTTYPEID"));
				lt.setLcat1(rset.getString("LCAT1"));
				lt.setLcat2(rset.getString("LCAT2"));
				lt.setLcat3(rset.getString("LCAT3"));
				lt.setLmapx(rset.getString("LMAPX"));
				lt.setLmapy(rset.getString("LMAPY"));
				lt.setLfirstimage(rset.getString("LFIRSTIMAGE"));
				
				list.add(lt);
		
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return list;
	}
}
