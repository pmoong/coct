package com.cw.coc.place.model.service;


import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.PlaceDao;
import com.cw.coc.place.model.vo.Place;



public class PlaceService {
	
	private static final String word = null;

	/*public ArrayList<Place> searchRoomList(String locationName) {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().searchRoomList(con, locationName);

		close(con);
 
		return list;	
	}
*/
	public ArrayList<Place> randomPlace() {

		Connection con = getConnection();

		ArrayList<Place> randomlist = new PlaceDao().randomPlace(con);

		close(con);

		return randomlist;	
	}

	public ArrayList<Place> searchAllList() {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().searchAllList(con);

		close(con);
 
		return list;	
	}

	public ArrayList<Place> rsvRoomInfo() {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().rsvRoomInfo(con);

		close(con);
 
		return list;
	}

	public ArrayList<Place> selectrestaurant(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().selectrestaurant(con,currentPage,limit);

		close(con);
 
		return list;
	}
	public ArrayList<Place> selecttot(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().selecttot(con,currentPage,limit);

		close(con);
 
		return list;
	}
	public ArrayList<Place> selectculture(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().selectculture(con,currentPage,limit);

		close(con);
 
		return list;
	}
	public ArrayList<Place> selectseoul(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().selectseoul(con,currentPage,limit);

		close(con);
 
		return list;
	}
	public ArrayList<Place> selectlogment(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Place> list = new PlaceDao().selectlogment(con,currentPage,limit);

		close(con);
 
		return list;
	}

	public int getListCount() {
		Connection con=getConnection();
		int listCount =new PlaceDao().getListCount(con);
		
		close(con);
		return listCount;
	}

	public ArrayList<Place> searchList( String searchkey,String searchvalue)  {
		Connection conn=getConnection(); 
		ArrayList<Place> list=new PlaceDao().searchList(conn,searchkey,searchvalue);
		close(conn);
		
 		return list;
	}

	public ArrayList<Place> selectList(int currentPage, int limit) {
		Connection conn=getConnection(); 
		ArrayList<Place> list=new PlaceDao().selectList(conn,currentPage,limit );
		close(conn);
		
		
		return list;
	}

	public ArrayList<Place> searchListPage(int currentPage, int limit, String searchkey, String searchvalue) {
		Connection conn=getConnection(); 
		ArrayList<Place> list=new PlaceDao().selectListPage(conn,currentPage,limit,searchkey,searchvalue );
		close(conn);
		
		
		return list;
	}
}
