package com.cw.coc.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.board.model.sevice.BoardService;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.board.model.vo.PageInfo;
import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;

/**
 * Servlet implementation class SelectBoardListServlet
 */
@WebServlet("/List.ad")
public class AdminSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSelectListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage;		//현재 페이지를 표시할 변수
		int limit;				//한 페이지에 보여질 게시물 수
		int maxPage;			//전체 페이지에서 가장 마지막 페이지
		int mMaxPage;			//전체 페이지에서 가장 마지막 페이지
		int startPage;			//한 번에 표시될 페이징 버튼이 시작할 번호
		int endPage;			//한 번에 표시될 페이징 버튼이 끝나는 번호
		HashMap hmap = new HashMap();
		//게시판은 1페이지부터 시작
		currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		//한 페이지에 보여질 목록 갯수
		limit =10;
		
		//전체 목록 갯수를 리턴받음
		int blistCount = new BoardService().getListCount();
		int mlistCount = new MemberService().getListCount();
		
		System.out.println("listCount : " + blistCount);
		System.out.println("mlistCount : " + mlistCount);
		
		//총 페이지 수 계산
		maxPage = (int)((double)blistCount / limit + 0.9);
		mMaxPage = (int)((double)mlistCount / limit + 0.9);
		
		//현재 페이지에서 보여줄 시작 페이지 숫자
		//아래쪽에 페이지 수가 10개씩 보여지게
		startPage = (((int)((double) currentPage / limit + 0.9)) - 1) * 10 + 1;
		
		//목록 아래 쪽에 보여질 마지막 페이지 수
		endPage = startPage + 10 - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = 
				new PageInfo(currentPage, blistCount, limit, maxPage, startPage, endPage);
		
		PageInfo pi2 = 
				new PageInfo(currentPage, mlistCount, limit, maxPage, startPage, endPage);
		
		ArrayList<Board> blist = new BoardService().selectList(currentPage, limit);
		ArrayList<Member> mlist = new MemberService().selectList(currentPage, limit);
		
		
		hmap.put(blist, blist);
		hmap.put(mlist, mlist);
		System.out.println("hmap : " +hmap);
		
		System.out.println("PT : " + pi);
		System.out.println("PT2 : " + pi2);
		System.out.println("LIST : " + blist);
		System.out.println("LIST : " + mlist);
		String page = "";
		
		if(blist != null) {
			page = "views/admin/managerIndex.jsp";
			request.setAttribute("blist", blist);
			request.setAttribute("pi", pi);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시판 조회 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
