package com.cw.coc.reserve.model.dao;

import static com.cw.coc.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.cw.coc.member.model.dao.MemberDao;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.reserve.model.vo.Reserve;
import com.cw.coc.room.model.vo.Room;

public class ReserveDao {

	private Properties prop = new Properties();

	public ReserveDao() {
		String fileName = ReserveDao.class.getResource("/sql/reserve/reserve-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;

		String query = prop.getProperty("selectListCount");


		try {
			stmt = con.createStatement();

			rset = stmt.executeQuery(query);

			if(rset.next()) {
				listCount = rset.getInt(1);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}

		return listCount;
	}

	public ArrayList<Reserve> selectList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Reserve> rlist = null;
		String query = prop.getProperty("selectListWithRPaging");

		try {
			pstmt = con.prepareStatement(query);
			System.out.println("rquery : " + query);

			//조회를 시작할 행 번호와 마지막 행 번호 계산
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();


			rlist = new ArrayList<Reserve>();
			while(rset.next()) {
				Reserve r = new Reserve();

				r.setRsvCode(rset.getInt("SEQ_RSVCODE"));
				r.setUno(rset.getInt("SEQ_UNO"));
				r.setRmCode(rset.getInt("SEQ_RMCODE"));
				r.setRsvDate(rset.getDate("RSVDATE"));
				r.setCiDate(rset.getDate("CIDATE"));
				r.setpName(rset.getString("PNAME"));
				

				rlist.add(r);
			}
			System.out.println("r list = " + rlist);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt); 
		}

		return rlist;
	}

	public ArrayList<Reserve> Reservation(Connection con) {
		PreparedStatement pstmt = null;
		ArrayList<Reserve> rs = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectReserve");

		try {
			pstmt = con.prepareStatement(query);

			rset = pstmt.executeQuery();

			rs = new ArrayList<Reserve>();

			while(rset.next()) {

				Reserve r = new Reserve();

				r.setRsvCode(rset.getInt("SEQ_RSVCODE"));
				r.setUno(rset.getInt("SEQ_UNO"));
				r.setRmCode(rset.getInt("SEQ_RMCODE"));
				r.setRsvDate(rset.getDate("RSVDATE"));
				r.setCiDate(rset.getDate("CIDATE"));

				rs.add(r);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return rs;
	}
}
