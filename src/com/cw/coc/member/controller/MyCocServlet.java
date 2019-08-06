package com.cw.coc.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.model.vo.CultureVoYM;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.place.model.vo.Place;
import com.cw.coc.place.model.vo.RestaurantVo;
import com.cw.coc.place.model.vo.SeoulVoYM;


@WebServlet("/myCoc")
public class MyCocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyCocServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		ArrayList<Object> list = new MemberService().myCoc(m);
		
		ArrayList<Place> pl = (ArrayList<Place>)list.get(0);
		ArrayList<CultureVoYM> ct = (ArrayList<CultureVoYM>) list.get(1);
		ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) list.get(2);
		ArrayList<RestaurantVo> rt = (ArrayList<RestaurantVo>) list.get(3);
		ArrayList<SeoulVoYM> sl = (ArrayList<SeoulVoYM>) list.get(4);
		
		
		String page = "";
		page = "/views/member/myCoc.jsp";
		request.setAttribute("pl", pl);
		request.setAttribute("ct", ct);
		request.setAttribute("lm", lm);
		request.setAttribute("rt", rt);
		request.setAttribute("sl", sl);
		
		
		request.getRequestDispatcher(page).forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
