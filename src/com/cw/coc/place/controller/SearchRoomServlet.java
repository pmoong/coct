package com.cw.coc.place.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.place.model.service.PlaceService;


/**
 * Servlet implementation class SearchRoomServlet
 */
@WebServlet("/searchRoom")
public class SearchRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchRoomServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("servlet ? ");
		
		ArrayList<HashMap<String, Object>> list = new PlaceService().searchRoomList();
		
		String locationName = request.getParameter("locationName");
		System.out.println("locationName::"+locationName);
		
		
		String page = "";
		if(list != null) {
			page = "views/place/searchRoom.jsp";
			request.setAttribute("list", list);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "뭐야!");
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
