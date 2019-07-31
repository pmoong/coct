package com.cw.coc.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;


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


		ArrayList<Object> list = new MemberService().myPage();

		String page = "";

		page = "/views/member/myPage.jsp";
		request.setAttribute("list2", list);
		
		request.getRequestDispatcher(page).forward(request, response);

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
