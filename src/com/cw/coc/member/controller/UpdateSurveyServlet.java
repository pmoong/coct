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
		Member m = new Member();
		
		int uno = Integer.parseInt(request.getParameter("uno"));
		String id = request.getParameter("id");
		String userPwd = request.getParameter("userPwd");  
		String email = request.getParameter("email");
		String utype = request.getParameter("utype");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		int status = Integer.parseInt(request.getParameter("status"));
		String[] icodeArr = request.getParameterValues("checkbox"); 
		String icode = "";
		System.out.println("pwd:::::" + userPwd);
		m.setUno(uno);
		m.setUserId(id);
		m.setUserPwd(userPwd);
		m.setEmail(email);
		m.setuType(utype);
		m.setGender(gender);
		m.setAge(age);
		m.setStatus(status);
		
		for(int i=0;i<icodeArr.length;i++) {
			if(i==0) {
				icode += icodeArr[i];
			}else {
				icode += "," + icodeArr[i];
			}
		}
		m.setiCode(icode);
		
		int result = new MemberService().updateSurvey(m);
		
		String page = "";
		
		
		if(result > 0 ) {
			page="/coc/myPage.two";
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", m);
			response.sendRedirect(page);
			 
		}else {

		}
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
