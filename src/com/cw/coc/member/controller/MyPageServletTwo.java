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
		Board bo1 = (Board) list.get(1);
		Board bo2 = (Board) list.get(2);
		Board rv1 = (Board) list.get(3);
		Board rv2 = (Board) list.get(4);
		
		String page = "";

		page = "/views/member/myPage.jsp";
		request.setAttribute("m1", m1);
		request.setAttribute("bo1", bo1);
		request.setAttribute("bo2", bo2);
		request.setAttribute("rv1", rv1);
		request.setAttribute("rv2", rv2);
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
