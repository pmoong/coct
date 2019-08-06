package com.cw.coc.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.reserve.model.vo.Reserve;
import com.cw.coc.room.model.vo.Room;


@WebServlet("/myPage.two")
public class MyPageServletTwo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyPageServletTwo() {
        super(); 
    } 

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		ArrayList<Object> list = new MemberService().myPage(m);
		Member m1 = (Member) list.get(0);
		ArrayList<Board> bo = (ArrayList<Board>)list.get(1);
		ArrayList<Board> rv = (ArrayList<Board>) list.get(2);
		ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) list.get(3);
		ArrayList<Room> rm = (ArrayList<Room>) list.get(4);
		ArrayList<Reserve> rs = (ArrayList<Reserve>) list.get(5);
		
		
		String page = "";
		page = "/views/member/myPage.jsp";
		request.setAttribute("list", list);
		request.setAttribute("m1", m1);
		request.setAttribute("bo", bo);
		request.setAttribute("rv", rv);
		request.setAttribute("lm", lm);
		request.setAttribute("rm", rm);
		request.setAttribute("rs", rs);
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
