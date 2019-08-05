package com.cw.coc.course.model.sevice.Place;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;


import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.choice.model.dao.CocDao;
import com.cw.coc.choice.model.vo.Coc;
import com.cw.coc.course.model.dao.Place.PlaceCocDao;
import com.cw.coc.course.model.vo.Place.PlaceCocVo;

public class PlaceCocService {
	public int insertCoc(PlaceCocVo c) {
		Connection con = getConnection();
		
		int result = new PlaceCocDao().insertCoc(con, p);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
		
	}
	
	public int PlaceinsertCoc(int cCode, int userNo) {
			Connection con=getConnection();
			
			int result=new PlaceCocDao().PlaceinsertCoc(con,cCode,userNo);
			
			if(result >0) {
				commit(con);
			}else {
				rollback(con);
			}
		close(con);
		
		return result;
		
	}
	
	
	
	public ArrayList<PlaceCocVo> PlaceisCoc(int userNo){
		
		
		Connection con=getConnection();
		ArrayList<PlaceCocVo> list=new PlaceCocDao().PlaceisCoc(con,userNo);
			
		close(con);
		
		return list;
		}
	
	public int PlacedeleteCoc (int cCode,int UserNo) {
		
		Connection con=getConnection();
		int result=new PlaceCocDao().PlacedeleteCoc(con,cCode,UserNo);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}return result;
		
	}
	
	

}
