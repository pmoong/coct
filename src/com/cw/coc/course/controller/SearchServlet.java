package com.cw.coc.course.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.course.model.sevice.SearchService;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	   int pagen=1;
		String page=request.getParameter("page");
	if(page != null) {
		pagen=Integer.parseInt(page);
	}
	String opt=request.getParameter("opt");
	String condition =request.getParameter("condition");
	 
	HashMap<String,Object> listOpt=new HashMap<String,Object>();
	listOpt.put("opt", opt);
	listOpt.put("condition", condition);
	listOpt.put("start", pagen*10-9);
	
	BoardDao dao =BoardDao.getInstance();
	int listCount =dao.getBoardListCount(listOpt);
/*	ArrayList<SearchService>list =dao.getBoardList("listOpt");
*/	 
	

		
 
	} 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
