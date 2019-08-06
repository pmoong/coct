package com.cw.coc.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.reserve.model.vo.Reserve;
import com.cw.coc.room.model.vo.Room;


@WebServlet("/myPage")
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public MyPageServlet() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member m = new Member(); 
		
		
		int uno = Integer.parseInt(request.getParameter("uno"));
		String id = request.getParameter("id");
		String password = request.getParameter("password"); 
		String email = request.getParameter("email");
		String utype = request.getParameter("utype");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age")); 
		String icode = request.getParameter("icode");
		int status = Integer.parseInt(request.getParameter("status"));

		m.setUno(uno);
		m.setUserId(id);
		m.setUserPwd(password);
		m.setEmail(email);
		m.setuType(utype); 
		m.setGender(gender); 
		m.setAge(age);
		m.setiCode(icode);
		m.setStatus(status);

		ArrayList<Object> list = new MemberService().myPage(m);
		Member m1 = (Member) list.get(0);
		ArrayList<Board> bo = (ArrayList<Board>)list.get(1);
		ArrayList<Board> rv = (ArrayList<Board>) list.get(2);
		ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) list.get(3);
		ArrayList<Room> rm = (ArrayList<Room>) list.get(4);
		ArrayList<Reserve> rs = (ArrayList<Reserve>) list.get(5);
		
		//이용내역
		//ArrayList<Place> uh = (ArrayList<Place>) list.get(3);
		//System.out.println("uh!!!!" + uh);
		
/*		Place p1 = uh.get(0),uh.;
		Place p2 = ;*/
		
		//ArrayList<Reserve> r = (ArrayList<Reserve>) list.get(3);
		//Reserve r1 =  r.get(1);
		
		//System.out.println("p1:::::::" + p1);
		//System.out.println("r1:::::::" + r1);
		
		//Payment pm1 = (Payment) list.get(5);
		//Payment pm2 = (Payment) list.get(6);
		
		String page = "";
		page = "/views/member/myPage.jsp";
		request.setAttribute("list", list);
		request.setAttribute("m1", m1);
		request.setAttribute("bo", bo);
		request.setAttribute("rv", rv);
		request.setAttribute("lm", lm);
		request.setAttribute("rm", rm);
		request.setAttribute("rs", rs);
		//request.setAttribute("pm1", pm1);
		//request.setAttribute("pm2", pm2);
		
		request.getRequestDispatcher(page).forward(request, response);

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
