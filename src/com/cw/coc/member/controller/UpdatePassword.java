package com.cw.coc.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;


@WebServlet("/updatePassword")
public class UpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public UpdatePassword() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userId = request.getParameter("id");
		//int uno = Integer.parseInt(request.getParameter("uno"));
		String userPwd = request.getParameter("pass1");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		String icode = request.getParameter("icode");


		Member m = new Member();

		//m.setUno(uno);
		m.setUserId(userId);
		m.setUserPwd(userPwd);
		m.setGender(gender);
		m.setEmail(email);
		m.setAge(age);
		m.setiCode(icode);

		int result = new MemberService().updatePassword(m);

		String page = "";

		if(result > 0 ) {
			page="myPageServletTwo";
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", m);
			request.getSession().setAttribute("loginUser", m);
			response.sendRedirect(page);
		}else {

		}

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
