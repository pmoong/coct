package com.cw.coc.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.allpayment.model.sevice.AllPaymentService;
import com.cw.coc.allpayment.model.vo.AllPayment;
import com.cw.coc.allpayment.model.vo.aPageInfo;
import com.cw.coc.board.model.sevice.BoardService;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.board.model.vo.PageInfo;
import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.member.model.vo.Partner;
import com.cw.coc.member.model.vo.mPageInfo;
import com.cw.coc.member.model.vo.pPageInfo;
import com.cw.coc.partner.model.service.PartnerService;
import com.cw.coc.reserve.model.sevice.ReserveService;
import com.cw.coc.reserve.model.vo.Reserve;
import com.cw.coc.reserve.model.vo.rPageInfo;


@WebServlet("/ListN.ad")
public class AdminNListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AdminNListServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage;		//현재 페이지를 표시할 변수
		int limit;				//한 페이지에 보여질 게시물 수
		int maxPage;			//전체 페이지에서 가장 마지막 페이지
		int startPage;			//한 번에 표시될 페이징 버튼이 시작할 번호
		int endPage;			//한 번에 표시될 페이징 버튼이 끝나는 번호
		
		Map<String,ArrayList> result = new HashMap<String, ArrayList>();
		//게시판은 1페이지부터 시작
		currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		//한 페이지에 보여질 목록 갯수
		limit =10;
		
		//전체 목록 갯수를 리턴받음
		int nlistCount = new BoardService().getListCount();
		
		maxPage = (int)((double)nlistCount / limit + 0.9);
		
		
		startPage = (((int)((double) currentPage / limit + 0.9)) - 1) * 10 + 1;
		
		endPage = startPage + 10 - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = 
				new PageInfo(currentPage, nlistCount, limit, maxPage, startPage, endPage);
		

	
		ArrayList<Board> nlist = new BoardService().selectNList(currentPage, limit);
		
		result.put("nlist", nlist);	
		String page = "";
		
		if(result != null) {
			
				
			page = "views/admin/notice.jsp";
			request.setAttribute("result", result);
			request.setAttribute("pi", pi);
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
