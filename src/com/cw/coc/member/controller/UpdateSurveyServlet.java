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


@WebServlet("/updateSurvey")
public class UpdateSurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateSurveyServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uno = request.getParameter("userNo");
		String[] icodeArr = request.getParameterValues("checkbox"); 
		String icode = "";
		
		System.out.println(uno);
		
		
		
		
		
		for(int i=0;i<icodeArr.length;i++) {
			if(i==0) {
				icode += icodeArr[i];
			}else {
				icode += "," + icodeArr[i];
			}
		}
		
		int result = new MemberService().updateSurvey(uno, icode);
		
		String page = "";
		
		if(result > 0 ) {
			page="/coc/views/member/myPage.jsp";
			/*HttpSession session = request.getSession();
			session.setAttribute("uno", uno);
			request.getSession().setAttribute("uno", uno);*/
			response.sendRedirect(page);
		}else {

		}
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
