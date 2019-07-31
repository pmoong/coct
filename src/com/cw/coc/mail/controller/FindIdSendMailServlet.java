package com.cw.coc.mail.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.mail.model.vo.SendEmail;
import com.cw.coc.member.model.service.MemberService;

/**
 * Servlet implementation class FindSendMailServlet
 */
@WebServlet("/findSend")
public class FindIdSendMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdSendMailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		String userId = new MemberService().findId(email);
		//System.out.println("userId from doGet : " + userId);
		String id = ""; 
		
		for(int i = 0; i < userId.length(); i++) {
			if(i >= userId.length() / 2) {
				id += "*";
			}else {
				id += userId.substring(i, i+1);
			}
		}
		
		//System.out.println("id : " + id);
		String msg = "로 가입된 아이디는 " + id + "입니다.";
		
		SendEmail sm = new SendEmail();
		sm.setContent(msg);
		sm.setTitle("KHCOC에서 보낸 메일입니다.");
		sm.setFrom(email);
		
		sm.findSendMail(id, email, msg);

		request.setAttribute("email", email);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
