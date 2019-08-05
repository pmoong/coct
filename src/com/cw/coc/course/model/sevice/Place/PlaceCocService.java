package com.cw.coc.course.model.sevice.Place;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;


import java.sql.Connection;
import java.util.ArrayList;

 import com.cw.coc.course.model.dao.Place.PlaceCocDao;
import com.cw.coc.course.model.vo.Place.PlaceCocVo;

public class PlaceCocService {
	public int insertCoc(PlaceCocVo p) {
		Connection con = getConnection();
		
		int result = new PlaceCocDao().PlaceinsertCoc(con,p);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
		
	}
	
	public int PlaceinsertCoc(int cCode, int loginUserNo) {
			Connection con=getConnection();
			
			int result=new PlaceCocDao().PlaceinsertCoc(con,cCode,loginUserNo);
			
			if(result >0) {
				commit(con);
			}else {
				rollback(con);
			}
		close(con);
		
		return result;
	
	}
	/*int PlaceinsertCoc(int cCode) {
		Connection con=getConnection();
		
		int result=new PlaceCocDao().PlaceinsertCoc(con,cCode);
		
		if(result >0) {
			commit(con);
		}else {
			rollback(con);
		}
	close(con);
	
	return result;
	
}*/
	
	
	
	public ArrayList<PlaceCocVo> PlaceisCoc(int userNo){
		
		
		Connection con=getConnection();
		ArrayList<PlaceCocVo> list=new PlaceCocDao().PlaceisCoc(con,userNo);
			
		close(con);
		
		return list;
		}

	public int PlacedeleteCoc(int cCode, int loginUserNo) {

	
Connection con = getConnection();
		
		int result = new PlaceCocDao().PlacedeleteCoc(con, cCode, loginUserNo);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		return result;
	
	
	}
	
	
	/*public ArrayList<PlaceCocVo> PlaceisCoc(){
		
		
		Connection con=getConnection();
		ArrayList<PlaceCocVo> list=new PlaceCocDao().PlaceisCoc(con);
			
		close(con);
		
		return list;
		}
	
	public int PlacedeleteCoc (int cCode) {
		
		Connection con=getConnection();
		int result=new PlaceCocDao().PlacedeleteCoc(con,cCode);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}return result;
		
	}*/
	
	

}
