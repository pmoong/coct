package com.cw.coc.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.board.model.sevice.BoardService;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.vo.Member;


@WebServlet("/reviewUpdatePage.rv")
public class ReviewUpdatePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ReviewUpdatePageServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String bWriter = String.valueOf(((Member) request.getSession().getAttribute("loginUser")).getUserId());
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		
		Board b = new BoardService().selectOneReview(num, m);
		
		
		String page = null;
		
		if(b != null) {
			page = "views/board/reviewUpdate.jsp";
			request.setAttribute("b", b);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시판 상세 조회 실패!");
		}
		request.getRequestDispatcher(page).forward(request, response);
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
