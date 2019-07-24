package com.cw.coc.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.board.model.sevice.BoardService;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.vo.Member;

/**
 * Servlet implementation class InsertBoardServlet
 */
@WebServlet("/insert.bo")
public class InsertBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bType = request.getParameter("bType");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		/*HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		String writer = String.valueOf(loginUser.getUno());*/
		
		String writer = String.valueOf(((Member) request.getSession().getAttribute("loginUser")).getUno());
		 //request.getSession().getAttribute("loginUser")).getUno()
		System.out.println("bType : " + bType);
		System.out.println("bTitle : " + bTitle);
		System.out.println("bContent : " + bContent);
		System.out.println("writer : " + writer);
		
		Board b = new Board();
		b.setbType(bType);
		b.setbTitle(bTitle);
		b.setbContent(bContent);
		b.setbWriter(writer);
		
		
		int result = new BoardService().insertBoard(b);
		
		String page = "";
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/selectList.bo");
			//request.getRequestDispatcher("selectList.bo").forward(request, response);
		}else {
			request.setAttribute("msg", "게시판 작성 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
