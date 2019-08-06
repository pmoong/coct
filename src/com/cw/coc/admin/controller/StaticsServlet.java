package com.cw.coc.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

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
		ArrayList<HashMap<String, Object>> as= new BoardService().statics();
		ArrayList<HashMap<String, Object>> as2= new BoardService().statics2();
		ArrayList<HashMap<String, Object>> as3= new BoardService().statics3();
/*		ArrayList<HashMap<String, Object>> as4= new BoardService().statics4();
		ArrayList<HashMap<String,Object>> as5 = new BoardService().statics5();
		ArrayList<HashMap<String,Object>> as6 = new BoardService().statics6();
		ArrayList<HashMap<String,Object>> as7 = new BoardService().statics7();
*/


		String page = "";
		if(as != null) {

			page = "views/admin/1_admin/7_statistics.jsp";
			request.setAttribute("static", as);
			request.setAttribute("static2", as2);
			request.setAttribute("static3", as3);
			/*request.setAttribute("static4", as4);
			request.setAttribute("static5", as5);
			request.setAttribute("static6", as6);
			request.setAttribute("static7", as7);*/

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