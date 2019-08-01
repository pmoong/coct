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
import com.cw.coc.member.model.vo.Payment;


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
		Board bo1 = (Board) list.get(1);
		Board bo2 = (Board) list.get(2);
		Board rv1 = (Board) list.get(3);
		Board rv2 = (Board) list.get(4);
		Payment pm1 = (Payment) list.get(5);
		Payment pm2 = (Payment) list.get(6);
		
		String page = "";

		page = "/views/member/myPage.jsp";
		request.setAttribute("m1", m1);
		request.setAttribute("bo1", bo1);
		request.setAttribute("bo2", bo2);
		request.setAttribute("rv1", rv1);
		request.setAttribute("rv2", rv2);
		request.setAttribute("pm1", pm1);
		request.setAttribute("pm2", pm2);
		
		request.getRequestDispatcher(page).forward(request, response);

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
