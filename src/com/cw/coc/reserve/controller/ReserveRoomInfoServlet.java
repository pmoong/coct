package com.cw.coc.reserve.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.place.model.service.PlaceService;
import com.cw.coc.place.model.vo.Place;

/**
 * Servlet implementation class ReserveRoomInfoServlet
 */
@WebServlet("/reserveRoomInfo")
public class ReserveRoomInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReserveRoomInfoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Place> rsvRoomInfo = new PlaceService().rsvRoomInfo();


		String page = "";
		if(rsvRoomInfo != null) { 
			page = "/coc/views/place/reserv_hotelView.jsp";
			request.setAttribute("rsvRoomInfo", rsvRoomInfo);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "랜덤 안돼~~~");
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
