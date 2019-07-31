package com.cw.coc.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;


@WebServlet("/myPage")
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MyPageServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member m = new Member();
		
		int uno = Integer.parseInt(request.getParameter("userNo"));
		
		m.setUno(uno);
		
		System.out.println("uno : " + uno);
		System.out.println("userid : " + m.getUserId());
		
		ArrayList<Object> list = new MemberService().myPage(m);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
