/*package com.cw.coc.place.model.service;


import java.sql.Connection;
import java.util.ArrayList;
import static com.cw.coc.common.JDBCTemplate.*;

import com.cw.coc.place.model.dao.RestaurantDao;
import com.cw.coc.place.model.vo.RestaurantVo;

public class RestaurantService {

	public ArrayList<RestaurantVo> selecttot() {

		Connection con=getConnection();
		ArrayList<RestaurantVo> list=new RestaurantDao().selecttot(con);
		close(con);
		return list;
		
		
		
 	}

}
*/