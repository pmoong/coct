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

import com.cw.coc.board.model.sevice.BoardService;
import com.cw.coc.board.model.vo.Board;
import com.cw.coc.member.model.service.MemberService;
import com.cw.coc.member.model.vo.Member;

/**
 * Servlet implementation class SelectOneBoardServlet
 */
@WebServlet("/selectOneRe.ad")
public class AdminSelectOneMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSelectOneMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member m = new Member();
		
		Map<String,ArrayList> result = new HashMap<String, ArrayList>();
		System.out.println("나와라");
		
		int muno = Integer.parseInt(request.getParameter("muno"));
		System.out.println("나와라2");
		System.out.println("m" + muno);
		

		m.setUno(muno);
	

		ArrayList<Member> list = new MemberService().getMember(muno);
		ArrayList<Board> blist = new BoardService().getBoard(muno);
		String page = "";
		
		if(result != null) {
		result.put("list", list);
		result.put("blist", blist);
		
		
		System.out.println("라스트 리스트 홀리 펀치라인"  + result);
		page = "/views/admin/MemberPage.jsp";
		request.setAttribute("result", result);
		
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
