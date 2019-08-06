package com.cw.coc.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.board.model.sevice.BoardService;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.board.model.vo.PageInfo;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.reserve.model.vo.Reserve;
import com.cw.coc.room.model.vo.Room;


@WebServlet("/selectList.rv")
public class SelectReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SelectReviewServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		int currentPage;		
		int limit;				
		int maxPage;			
		int startPage;			
		int endPage;			
		
		
		currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		limit = 10;
		
		
		int listCount = new BoardService().getReviewListCount(m.getUno());
				
		
		maxPage = (int)((double)listCount / limit + 0.9);
		
		
		
		startPage = (((int)((double) currentPage / limit + 0.9)) - 1) * 10 + 1;
		
		
		endPage = startPage + 10 - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = 
				new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		ArrayList<Object> list = new BoardService().selectReviewList(currentPage, limit, m.getUno());
		ArrayList<Board> bo = (ArrayList<Board>)list.get(0);
		ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) list.get(1);
		ArrayList<Room> rm = (ArrayList<Room>) list.get(2);
		ArrayList<Reserve> rs = (ArrayList<Reserve>) list.get(3);
		String page = "";
		
		if(list != null) {
			page = "views/board/reviewList.jsp";
			request.setAttribute("bo", bo);
			request.setAttribute("lm", lm);
			request.setAttribute("pi", pi);
			request.setAttribute("rm", rm);
			request.setAttribute("rs", rs);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시판 조회 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
