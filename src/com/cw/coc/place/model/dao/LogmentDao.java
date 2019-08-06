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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

import com.cw.coc.board.model.vo.Board;
import com.cw.coc.place.Condb;
import com.cw.coc.place.LogmentParser;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.place.model.vo.LogmentVo;

import oracle.net.aso.l;


public class LogmentDao {
	public static void saveDB(List<LogmentVo> xmlList){

	}
	public static void main(String[] args) {

		File file = new File("logment2.xml");

		LogmentParser LogmentParser = new LogmentParser(file);
		List<LogmentVo> tmp = LogmentParser.parse("item");

		try {
			Condb condb = new Condb();
		} catch (IOException e1) {
			e1.printStackTrace();
		}    
		Connection conn = Condb.getConnection();

		String sql="INSERT INTO LOGMENT VALUES(SEQ_CCODE.NEXTVAL, ?,?,?,?,?,?,?,?,?,?,?)";
		try {
			for(int i=0; i<tmp.size() ; i++){
				PreparedStatement stmt = conn.prepareStatement(sql);

				stmt.setString(1, tmp.get(i).getLtitle());
				stmt.setString(2, tmp.get(i).getLaddr());
				stmt.setInt(3, tmp.get(i).getLsigungucode());

				stmt.setString(4, tmp.get(i).getLtel());
				stmt.setInt(5, tmp.get(i).getLcontenttypeid());
				stmt.setString(6, tmp.get(i).getLcat1());
				stmt.setString(7, tmp.get(i).getLcat2());
				stmt.setString(8, tmp.get(i).getLcat3());
				stmt.setString(9, tmp.get(i).getLmapx());
				stmt.setString(10, tmp.get(i).getLmapy());
				stmt.setString(11, tmp.get(i).getLfirstimage());
				stmt.executeUpdate();

				System.out.println("sucess to save");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	private Properties prop = new Properties();

	public LogmentDao() {


		String fileName = 
				LogmentDao.class.getResource("/sql/place/logment-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<LogmentVoYM> searchRoomList(Connection con, String locationName) {
		Statement stmt = null;
		ArrayList<LogmentVoYM> list = null;
		ResultSet rset = null;


		String query = prop.getProperty("searchRoomList");

		try {


			stmt = con.createStatement();

			rset = stmt.executeQuery(query);
			list = new ArrayList<LogmentVoYM>();


			while(rset.next()) {
				LogmentVoYM l = new LogmentVoYM();


				l.setLtitle(rset.getString("LTITLE"));
				l.setLaddr(rset.getString("LADDR"));
				l.setLsigungucode(rset.getInt("LSIGUNGUCODE"));
				l.setLtel(rset.getString("LTEL"));
				l.setLcontenttypeid(rset.getInt("LCONTENTTYPEID"));
				l.setLcat1(rset.getString("LCAT1"));
				l.setLcat2(rset.getString("LCAT2"));
				l.setLcat3(rset.getString("LCAT3"));
				l.setLmapx(rset.getString("LMAPX"));
				l.setLmapy(rset.getString("LMAPY"));
				l.setLfirstimage(rset.getString("LFIRSTIMAGE"));

				if(Integer.parseInt(locationName) ==  rset.getInt("LSIGUNGUCODE")) {

					list.add(l);
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


	public ArrayList<LogmentVoYM> randomPlace(Connection con) {

		Statement stmt = null;
		ArrayList<LogmentVoYM> list = null;
		ArrayList<LogmentVoYM> randomlist = null;
		ResultSet rset = null;


		String query = prop.getProperty("randomPlaceList");

		try {
			stmt = con.createStatement();

			rset = stmt.executeQuery(query);
			list = new ArrayList<LogmentVoYM>();


			String query1 = prop.getProperty("selectRandomList");
			randomlist = new ArrayList<LogmentVoYM>();
			rset = stmt.executeQuery(query1);

			while(rset.next()) {
				LogmentVoYM l = new LogmentVoYM();

				l.setcCode(rset.getInt("SEQ_CCODE"));
				l.setLtitle(rset.getString("LTITLE"));
				l.setLaddr(rset.getString("LADDR"));
				l.setLsigungucode(rset.getInt("LSIGUNGUCODE"));
				l.setLtel(rset.getString("LTEL"));
				l.setLcontenttypeid(rset.getInt("LCONTENTTYPEID"));
				l.setLcat1(rset.getString("LCAT1"));
				l.setLcat2(rset.getString("LCAT2"));
				l.setLcat3(rset.getString("LCAT3"));
				l.setLmapx(rset.getString("LMAPX"));
				l.setLmapy(rset.getString("LMAPY"));
				l.setLfirstimage(rset.getString("LFIRSTIMAGE"));
				randomlist.add(l);
			}

			for(LogmentVoYM l : randomlist) {
				System.out.println(l);
			}

			Collections.shuffle(randomlist);

			System.out.println("===========");
			for(LogmentVoYM l : randomlist) {
				System.out.println(l);
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
	}
	public ArrayList<LogmentVoYM> rsvRoomInfo(Connection con, String ltitle) {
		Statement stmt = null;
		ArrayList<LogmentVoYM> lm = null;
		ResultSet rset = null;


		String query = prop.getProperty("selectRoomInfo");

		try {


			stmt = con.createStatement();

			rset = stmt.executeQuery(query);
			lm = new ArrayList<LogmentVoYM>();

			System.out.println("@@@" + ltitle);

			while(rset.next()) {

				LogmentVoYM l = new LogmentVoYM();

				l.setcCode(rset.getInt("SEQ_CCODE"));
				l.setLtitle(rset.getString("LTITLE"));
				l.setLaddr(rset.getString("LADDR"));
				l.setLsigungucode(rset.getInt("LSIGUNGUCODE"));
				l.setLtel(rset.getString("LTEL"));
				l.setLcontenttypeid(rset.getInt("LCONTENTTYPEID"));
				l.setLcat1(rset.getString("LCAT1"));
				l.setLcat2(rset.getString("LCAT2"));
				l.setLcat3(rset.getString("LCAT3"));
				l.setLmapx(rset.getString("LMAPX"));
				l.setLmapy(rset.getString("LMAPY"));
				l.setLfirstimage(rset.getString("LFIRSTIMAGE"));

				if (l.getLtitle().equals(ltitle)) {


					lm.add(l);
				}
			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}


		return lm;
	}
	public ArrayList<LogmentVoYM> LogmentSelect(Connection con) {
		PreparedStatement pstmt = null;
		ArrayList<LogmentVoYM> lm = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectLogment");

		try {
			pstmt = con.prepareStatement(query);

			rset = pstmt.executeQuery();

			lm = new ArrayList<LogmentVoYM>();

			while(rset.next()) {

				LogmentVoYM l = new LogmentVoYM();

				l.setcCode(rset.getInt("SEQ_CCODE"));
				l.setLtitle(rset.getString("LTITLE"));
				l.setLaddr(rset.getString("LADDR"));
				l.setLsigungucode(rset.getInt("LSIGUNGUCODE"));
				l.setLtel(rset.getString("LTEL"));
				l.setLcontenttypeid(rset.getInt("LCONTENTTYPEID"));
				l.setLcat1(rset.getString("LCAT1"));
				l.setLcat2(rset.getString("LCAT2"));
				l.setLcat3(rset.getString("LCAT3"));
				l.setLmapx(rset.getString("LMAPX"));
				l.setLmapy(rset.getString("LMAPY"));
				l.setLfirstimage(rset.getString("LFIRSTIMAGE"));

					lm.add(l);
				}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return lm;
	}
}
