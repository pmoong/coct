package com.cw.coc.choice.model.sevice;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.cw.coc.choice.model.dao.CocDao;
import com.cw.coc.choice.model.vo.Coc;



public class CocService {
	
	public int insertCoc(Coc c) {
		Connection con = getConnection();
		
		int result = new CocDao().insertCoc(con, c);
		
		if(result > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
		
	}

}
