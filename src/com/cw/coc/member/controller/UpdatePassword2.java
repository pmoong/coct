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

/**
 * Servlet implementation class UpdatePassword2
 */
@WebServlet("/updatePassword2.me")
public class UpdatePassword2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePassword2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member m1 = (Member)session.getAttribute("loginUser");
		
		System.out.println("m.id ::::: " + m1.getUserId());
		System.out.println("m.Pwd ::::: " + m1.getUserPwd());
		
		String userPwd = request.getParameter("userPwd");
		
		Member m = new Member();
		m.setUserId(m1.getUserId());
		m.setUserPwd(userPwd);
	
		int result = new MemberService().updatePassword2(m);

		String page = "";

		if(result > 0 ) {	
			page="/coc/views/member/login.jsp";
			 session = request.getSession();
			session.setAttribute("loginUser", m);
			response.sendRedirect(page);
		}else {

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
