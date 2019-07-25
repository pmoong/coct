package com.cw.coc.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;

/**
 * Servlet implementation class InsertInterestServlet
 */
@WebServlet("/insertInterest.me")
public class InsertInterestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertInterestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String[] irr = request.getParameterValues("survey");
		String survey = "";

		if(irr != null) {
			for(int i=0; i<irr.length; i++) {
				if(i==0) {
					survey += irr[i];
				}else {
					survey += ", " + irr[i];
				}
			}
		}

		Member m = new Member();
		m.setSurvey(survey);

		System.out.println("InsertInterestMemberServlet : " + m);

		int result = new MemberService().insertInterest(m);

		String page = "";

		if(result > 0) {
			page = "/coc/views/member/login.jsp";
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
