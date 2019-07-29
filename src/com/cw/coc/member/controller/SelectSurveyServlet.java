package com.cw.coc.member.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;


@WebServlet("/selectSurvey")
public class SelectSurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SelectSurveyServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	//	String[] iCodeArr = request.getParameterValues("checkbox");
		
		Member m = new Member ();
	
		String id = request.getParameter("id");
		
		m.setUserId(id);
		
		System.out.println("111");
		String icode = new MemberService().selectSurvey("id");
		
		String page = "";
		
		page = "/views/member/myPage.jsp";
		
		request.getRequestDispatcher(page).forward(request, response);
		//ResultSet rset = new MemberService().selectSurvey(m);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
