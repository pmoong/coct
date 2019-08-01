package com.cw.coc.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.member.model.service.MemberService;

/**
 * Servlet implementation class DeleteBoardServlet
 */
@WebServlet("/deleteMember.ad")
public class AdminDeleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uno = Integer.parseInt(request.getParameter("uno"));
		System.out.println("삭ㅈ제~잘되니?");
		
		int result = new MemberService().deleteMember(uno);
		String page = "";
		
		if(result > 0) {
			response.sendRedirect("/List.ad");
		}else {
			page ="views/common/errorPage.jsp";
			request.setAttribute("msg", "공지사항 삭제 실패!");
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
