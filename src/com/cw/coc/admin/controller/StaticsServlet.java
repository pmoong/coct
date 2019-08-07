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



@WebServlet("/statics")
public class StaticsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String,ArrayList> result = new HashMap<String, ArrayList>();
		
		ArrayList<Object> as= new BoardService().statics();
		ArrayList<Object> as2= new BoardService().statics2();
		ArrayList<Object> as3= new BoardService().statics3();
		
		result.put("as", as);	
		result.put("as2", as2);
		result.put("as3", as3);
		String page = "";
		if(as != null) {

			page = "views/admin/statistics.jsp";
			request.setAttribute("result", result);

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
