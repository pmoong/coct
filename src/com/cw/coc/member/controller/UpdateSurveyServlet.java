package com.cw.coc.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;


@WebServlet("/updateSurvey")
public class UpdateSurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateSurveyServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] surveyArr = request.getParameterValues("interest");
		String survey = "";
		
		for(int i=0;i<surveyArr.length;i++) {
			if(i==0) {
				survey += surveyArr[i];
			}else {
				survey += "," + surveyArr[i];
			}
		}
		
		Member m = new Member();
		
		m.setSurvey(survey);
		
		int result = new MemberService().updateSurvey(m);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
