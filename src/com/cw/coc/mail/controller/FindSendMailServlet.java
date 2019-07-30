package com.cw.coc.mail.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.mail.model.vo.SendEmail;
import com.cw.coc.member.model.vo.Member;

/**
 * Servlet implementation class FindSendMailServlet
 */
@WebServlet("/findSend")
public class FindSendMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindSendMailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		Member m = new Member();
		
		
		String userId = request.getParameter("userId");
		String id = ""; 
		
		for(int i = 0; i < userId.length(); i++) {
			if(i >= userId.length() / 2) {
				id = "*";
			}else {
				id = userId.substring(0, 1);
			}
		}
		
		System.out.println("id : " + id);
		
		String msg = "아이디는 " + userId + " 입니다.";
		
		SendEmail sm = new SendEmail();
		sm.setFrom(email);

		
		request.setAttribute("userId", userId);
		request.setAttribute("email", email);

		//되는 소스
		//response.sendRedirect("/coc/views/member/joinForm.jsp?userId="+userId+"&email="+email);
		
		request.getRequestDispatcher("/views/member/joinForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
