package com.cw.coc.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	//로그인 처리를 위한 상수 필드 선언
	public static final int LOGIN_OK = 1;
	public static final int WRONG_PASSWORD = 0;
	public static final int ID_NOT_EXIST = -1;	
	
    
    public LoginServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		System.out.println("userId : " + userId);
		System.out.println("userPwd : " + userPwd);
		
		
		Member reqMember = new Member();
		reqMember.setUserId(userId);
		reqMember.setUserPwd(userPwd);
		
		Member loginUser = new MemberService().loginCheck(reqMember);
		
		String view = "";
		if(loginUser.getStatus() == LOGIN_OK) {
			
			if(userId != null && userId.equals("admin")) {
				view = "/coc/selectList.ad";
				//request.setAttribute("loginsUser", loginUser);
				
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginUser);
				
				response.sendRedirect(view);
				
			}else{
			view = "/coc/index.jsp";
			//request.setAttribute("loginUser", loginUser);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			response.sendRedirect(view);
			}
		}else {
			view = "/views/common/errorPage.jsp";
			
			String msg;
			if(loginUser.getStatus() == WRONG_PASSWORD) {
				msg = "패스워드를 잘못 입력 하셨습니다.";
			}else {
				msg = "존재하지 않는 아이디입니다.";
			}
			
			request.setAttribute("msg", msg);
			
			RequestDispatcher rd = request.getRequestDispatcher(view);
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
