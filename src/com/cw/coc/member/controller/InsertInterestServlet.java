package com.cw.coc.member.controller;

import java.io.Console;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	 *//*,HttpSession session*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String[] irr = request.getParameterValues("survey");
		String survey = "";

		if(irr != null) {
			for(int i=0; i<irr.length; i++) {
				if(i==0) {
					survey += irr[i];
				}else {
					survey += "," + irr[i];
				}
			}
		}
//		HttpSession session = request.getSession();
//		System.out.println(session.getAttribute("Info"));
//		String hi = session.getAttribute("Info").toString();
		Member member = new Member();
//		Member m = new Member();
//		String var = m.getUserId();
		//m.setSurvey(survey);
		HttpSession session= request.getSession();
		Map<String,Object> var=(Map<String, Object>) session.getAttribute("Info");
//		System.out.println("uuuuuu"+var);
		System.out.println(var); 
		System.out.println(var.get("userId"));
		member.setUserId(var.get("userId").toString());
		member.setEmail(var.get("useremail").toString());
		member.setGender(var.get("usergender").toString());
		member.setSurvey(survey);
		member.setUserPwd(var.get("userPwd").toString());
		member.setAge(Integer.parseInt(var.get("userAge").toString()));
		
		System.out.println("InsertInterestMemberServlet : " + member);
	//	member.setUserId(session.getAttribute("Info"));
		int result = new MemberService().insertMember(member);

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
//		System.out.println(request +"%%"+ response+"qweqweqweqwe"+member);
	}

}
