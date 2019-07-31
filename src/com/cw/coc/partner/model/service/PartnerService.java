package com.cw.coc.partner.model.service;

import static com.cw.coc.common.JDBCTemplate.close;
import static com.cw.coc.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.cw.coc.partner.model.dao.PartnerDao;
import com.cw.coc.member.model.vo.Partner;

public class PartnerService {

		public int getListCount() {
			Connection con = getConnection();
			
			int listCount = new PartnerDao().getListCount(con);
			
			close(con);
			
			return listCount;
		}

		public ArrayList<Partner> selectList(int currentPage, int limit) {
			Connection con = getConnection();
			
			ArrayList<Partner> plist = new PartnerDao().selectList(con, currentPage, limit);
			
			close(con);
			System.out.println("plist test 1 : " + plist);
			return plist;
		}


}
