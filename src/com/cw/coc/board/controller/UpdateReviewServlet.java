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


@WebServlet("/updateReview.rv")
public class UpdateReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateReviewServlet() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int num = Integer.parseInt(request.getParameter("num"));
		
		Board b = new Board();
		
		b.setbTitle(title);
		b.setbContent(content);
		System.out.println("num::::" + num);
		System.out.println("m::::" + m.getUno());
		
		int result = new BoardService().updateReview(m, b, num);
		
		System.out.println("b:::" + b);
		String page = "";
		
		if(result > 0) {
			response.sendRedirect("/jsp/selectReviewList.rv?num=" + m.getUno());
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "공지사항 수정 실패!!");
			request.getRequestDispatcher(page).forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
