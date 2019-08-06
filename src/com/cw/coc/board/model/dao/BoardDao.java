package com.cw.coc.board.model.dao;

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

import com.cw.coc.board.model.sevice.BoardService;
import com.cw.coc.board.model.vo.Attachment;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.vo.Member;


public class BoardDao {

	private Properties prop = new Properties();

	public BoardDao() {
		String fileName = 
				BoardDao.class.getResource("/sql/board/board-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	public int insertBoard(Connection con, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertBoard");

		try {
			pstmt = con.prepareStatement(query);
			//쿼리문 작성되는 대로 작성할것~~
			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getbContent());
			pstmt.setString(3, b.getbType());
			pstmt.setString(4, b.getbWriter());
			pstmt.setInt(5, b.getUno());

			result = pstmt.executeUpdate();

			System.out.println("insertboard query : " +query);
			System.out.println("uno : " + b.getUno());

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


	public ArrayList<Board> selectList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		String query = prop.getProperty("selectListWithPaging");

		try {
			pstmt = con.prepareStatement(query);

			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();

			list = new ArrayList<Board>();

			while(rset.next()) {
				Board b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));

				list.add(b);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
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


	public int updateCount(Connection con, int num) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("updateCount");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);
			pstmt.setInt(2, num);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt); 
		}

		return result;
	}


	public Board selectOne(Connection con, int num) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board b = null;

		String query = prop.getProperty("selectOne");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, num);

			rset = pstmt.executeQuery();

			if(rset.next()) {
				b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));


			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return b;
	}


	public int deleteBoard(Connection con, int bcode) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("deleteBoard");

		System.out.println("query" + query);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, bcode);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


	public int updateBoard(Connection con, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("updateBoard");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getbContent());
			pstmt.setInt(3, b.getbCode());


			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


	public ArrayList<Board> myPageSelect(Connection con) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> bo = null;

		String query = prop.getProperty("myPageSelect");

		try {
			pstmt = con.prepareStatement(query);

			rset = pstmt.executeQuery();

			bo = new ArrayList<Board>();
			while(rset.next()) {
				Board b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));


				bo.add(b);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return bo;
	}


	public int selectCurrval(Connection con) {
		Statement stmt =null;
		ResultSet rset =null;
		int bid=0;
		String query=prop.getProperty("selectCurrval");

		try {
			stmt =con.createStatement();
			rset=stmt.executeQuery(query);

			if(rset.next()) {
				bid=rset.getInt("currval");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}


		return bid;
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

	public int insertImgContent(Connection con, Board b) {
		PreparedStatement pstmt =null;
		int result=0;
		String query =prop.getProperty("insertinfo");

		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, b.getbCode());
			/*pstmt.setString(2, b.getbType());
			pstmt.setString(3, b.getbTitle());*/
			/*pstmt.setString(1, b.getbContent());*/
			pstmt.setDate(2, b.getbDate());

			result =pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}


		return result;
	}


	public ArrayList<HashMap<String, Object>> selectconList(Connection con) {
		Statement stmt=null;
		ArrayList<HashMap<String,Object>> list=null;
		HashMap<String,Object> hmap=null;
		ResultSet rset =null;

		String query =prop.getProperty("selectThumbnailMap");

		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			list = new ArrayList<HashMap<String,Object>>();

			while(rset.next()) {
				hmap =new HashMap<String,Object>();
				hmap.put("seq_bcode",rset.getInt("SEQ_BCODE"));
				hmap.put("bdate", rset.getDate("BDATE"));
				hmap.put("bcontent",rset.getString("BCONTENT"));
				hmap.put("utype",rset.getString("UTYPE"));

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


	public ArrayList<Board> reviewSelect(Connection con, int uno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> rv = null;

		String query = prop.getProperty("reviewSelect");

		System.out.println(uno);

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, uno);

			rset = pstmt.executeQuery();

			rv = new ArrayList<Board>();


			while(rset.next()) {
				Board b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));


				rv.add(b);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}


		return rv;
	}


	public ArrayList<Board> getBoard(Connection con ,int muno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> rv = null;

		String query = prop.getProperty("getreview");

		try {


			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, muno);

			rset = pstmt.executeQuery();

			rv = new ArrayList<Board>();

			while(rset.next()) {
				Board b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));


				rv.add(b);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}


		return rv;
	}


	public ArrayList<Board> selectNList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		String query = prop.getProperty("selectNListWithPaging");

		try {
			pstmt = con.prepareStatement(query);
			System.out.println("qu" + query);
			//조회를 시작할 행 번호와 마지막 행 번호 계산
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			list = new ArrayList<Board>();

			while(rset.next()) {
				Board b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));


				list.add(b);
			}
			System.out.println("board n list = " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

	//ㄱ페이징 처리
	public static BoardDao getInstance() {
		// TODO Auto-generated method stub
		return null;
	}


	public int getBoardListCount(HashMap<String, Object> listOpt) {
		// TODO Auto-generated method stub
		return 0;
	}


	public ArrayList<Board> selectRList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		String query = prop.getProperty("selectBListWithPaging");

		try {
			pstmt = con.prepareStatement(query);
			System.out.println("qu" + query);
			//조회를 시작할 행 번호와 마지막 행 번호 계산
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			list = new ArrayList<Board>();

			while(rset.next()) {
				Board b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));


				list.add(b);
			}
			System.out.println("board n list = " + list);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}


	public ArrayList<Board> selectReviewList(Connection con, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;
		String query = prop.getProperty("selectReviewList");

		try {
			pstmt = con.prepareStatement(query);

			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			list = new ArrayList<Board>();

			while(rset.next()) {
				Board b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));


				list.add(b);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}


	public int getReviewListCount(Connection con, int uno) {
		PreparedStatement pstmt = null;
		int listCount = 0;
		ResultSet rset = null;

		String query = prop.getProperty("selectReviewListCount");


		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, uno);
			rset = pstmt.executeQuery();
			

			if(rset.next()) {
				listCount = rset.getInt(1);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return listCount;
	}
	
	public ArrayList<HashMap<String, Object>> statics(Connection con) {
		Statement stmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;

		ResultSet rset = null;
		String query = prop.getProperty("statics");//결제금액

		try {
			stmt = con.createStatement();

			rset = stmt.executeQuery(query);

			list = new ArrayList<HashMap<String, Object>>();

			while(rset.next()) {
				hmap = new HashMap<String,Object>();

				hmap.put("reason1", rset.getString("PDATE"));
				hmap.put("reason2", rset.getString("PRICE"));

				list.add(hmap);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}


		return list;
	}


	public ArrayList<HashMap<String, Object>> statics2(Connection con) {
		PreparedStatement pstmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;

		ResultSet rset = null;
		String query = prop.getProperty("statics2");//예약일, 상품일

		try {
			
			pstmt = con.prepareStatement(query);
			for(int i = 1; i >= 12 ; i++  ) {
			
				pstmt.setInt(1, i);
			
			}
			rset = pstmt.executeQuery();
			
			list = new ArrayList<HashMap<String, Object>>();

			while(rset.next()) {
				hmap = new HashMap<String,Object>();

				hmap.put("reser1", rset.getString("RSVDATE"));
				hmap.put("reser2", rset.getString("CIDATE"));

				list.add(hmap);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}


		return list;
	}


	public ArrayList<HashMap<String, Object>> statics3(Connection con) {
		Statement stmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;

		ResultSet rset = null;
		String query = prop.getProperty("statics3");//

		try {
			stmt = con.createStatement();

			rset = stmt.executeQuery(query);

			list = new ArrayList<HashMap<String, Object>>();

			while(rset.next()) {
				hmap = new HashMap<String,Object>();

				hmap.put("member1", rset.getString("SEQ_UNO"));
				hmap.put("member2", rset.getString("GENDER"));

				list.add(hmap);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}


		return list;
	}


	public Board selectOneReview(Connection con, int num, Member m) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board b = null;

		String query = prop.getProperty("selectOneReview");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, m.getUno());
			pstmt.setInt(2, num);

			rset = pstmt.executeQuery();

			if(rset.next()) {
				b = new Board();

				b.setbCode(rset.getInt("SEQ_BCODE"));
				b.setbDate(rset.getDate("BDATE"));
				b.setbTitle(rset.getString("BTITLE"));
				b.setbContent(rset.getString("BCONTENT"));
				b.setbType(rset.getString("BTYPE"));
				b.setbWriter(rset.getString("BWRITER"));
				b.setcCode(rset.getInt("SEQ_CCODE"));
				b.setpCode(rset.getString("PCODE"));
				b.setUno(rset.getInt("SEQ_UNO"));
				b.setuType(rset.getString("UTYPE"));
				b.setCount(rset.getInt("COUNT"));
				b.setModifiyDate(rset.getDate("MODIFY_DATE"));


			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return b;
	}


	public int updateReview(Connection con, Member m, Board b, int num) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateReview");
		
		try {
			
			System.out.println("BBBBB:"+ b);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getbContent());
			pstmt.setInt(3, b.getUno());
			pstmt.setInt(4, num);
			
			result = pstmt.executeUpdate();
			
			System.out.println("dao b::::" + b);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
}




