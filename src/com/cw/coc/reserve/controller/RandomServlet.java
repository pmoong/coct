package com.cw.coc.reserve.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.place.model.service.LogmentService;
import com.cw.coc.place.model.vo.LogmentVoYM;
import com.cw.coc.place.model.vo.RestaurantVo;

/**
 * Servlet implementation class RandomServlet
 */
@WebServlet("/random2")
public class RandomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RandomServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(":::::::::::::::::");
		ArrayList<Object> list = new LogmentService().rsvRoomInfo();
		
		ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) list.get(0); 
		ArrayList<RestaurantVo> rt = (ArrayList<RestaurantVo>) list.get(1); 
		
		String page = "";
		if(list != null) { 
			page = "index.jsp";
			request.setAttribute("lm", lm);
			request.setAttribute("rt", rt);
			
		}else {page = "views/common/errorPage.jsp";
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
