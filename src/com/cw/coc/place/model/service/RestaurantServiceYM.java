package com.cw.coc.place.model.service;

import static com.cw.coc.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.place.model.dao.RestaurantDaoYM;
import com.cw.coc.place.model.vo.RestaurantVo;


public class RestaurantServiceYM {
	
	public ArrayList<RestaurantVo> searchRestaurant(String keyWord) {
		Connection con = getConnection();
		
		
		ArrayList<RestaurantVo> list = new RestaurantDaoYM().searchRestaurant(con, keyWord);
		
		close(con);
		
		return list;
	}

}
