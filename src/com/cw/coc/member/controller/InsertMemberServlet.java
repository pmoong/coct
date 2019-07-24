package com.cw.coc.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertMemberServlet
 */
@WebServlet("/insertMember.me")
public class InsertMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		
		String userId = request.getParameter("userId");
		String email = request.getParameter("email");
		String userPwd = request.getParameter("userPwd");
		String phone = request.getParameter("phone");
		String add = request.getParameter("address");
		String age = request.getParameter("age");
		
		String zip = request.getParameter("zipCode");
		String address = zip + "$" + add1 + "$" + add2;
		String[] irr = request.getParameterValues("interest");
		String interest = "";

		if(irr != null) {
			for(int i=0; i<irr.length; i++) {
				if(i==0) {
					interest += irr[i];
				}else {
					interest += ", " + irr[i];
				}
			}
		}

		Member m = new Member();
		m.setUserId(userId);
		m.setUserPwd(userPwd);
		m.setNickName(nickName);
		m.setPhone(phone);
		m.setEmail(email);
		m.setAddress(address);
		m.setInterest(interest);

		System.out.println("Request Member : " + m);

		int result = new MemberService().insertMember(m);

		String page = "";

		if(result > 0) {
			page = "views/common/successPage.jsp";

			response.sendRedirect(page);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "회원가입 실패!");
			request.getRequestDispatcher(page).forward(request, response);
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
