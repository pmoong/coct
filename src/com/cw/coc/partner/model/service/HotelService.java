package com.cw.coc.partner.model.service;

import static com.cw.coc.common.JDBCTemplate.commit;
import static com.cw.coc.common.JDBCTemplate.getConnection;
import static com.cw.coc.common.JDBCTemplate.rollback;
import static com.cw.coc.common.JDBCTemplate.close;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.cw.coc.partner.model.dao.HotelDao;
import com.cw.coc.partner.model.vo.Attachment;
import com.cw.coc.partner.model.vo.Hotel;
 
public class HotelService {
	//호텔 이미지 정보 작성용
	
	
	//첨부파일정보 insert!
	public int insertImg(Hotel h, ArrayList<Attachment> fileList) {
		Connection con =getConnection();
		int result =0;
		
		int result1 =new HotelDao().insertImgContent(con,h);
		
		if(result1 > 0) {
			int bid =new HotelDao().selectCurrval(con);
			for(int i =0; i<fileList.size(); i++) {
				fileList.get(i).setBid(bid);
			}
		}
		
		int result2 =new HotelDao().insertAttachment(con,fileList);
		
		if(result1 >0 && result2 >0) {
			commit(con);
			result =1;
		}else {
			rollback(con);
		}
		return result;
	}
 

	public ArrayList<HashMap<String, Object>> selecthotelImg() {
		Connection con =getConnection();
		ArrayList<HashMap<String,Object>> list=
				new HotelDao().selecthotelImg(con);
		close(con);
		
		return list;
	}

 
	
	
	
	
 
}
