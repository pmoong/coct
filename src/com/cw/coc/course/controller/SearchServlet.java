package com.cw.coc.course.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.course.model.sevice.Place.PlaceCocService;
import com.cw.coc.course.model.vo.Place.PlaceCocVo;
import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.model.service.PlaceService;
import com.cw.coc.place.model.vo.RestaurantVo;
 

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search.hj")
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
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		int userNo = m.getUno();

	  	ArrayList<PlaceCocVo> PlacecocList  = new PlaceCocService().PlaceisCoc(userNo);
		String searchkey=request.getParameter("searchkey");
		String searchvalue=request.getParameter("searchvalue");
	 
 		 ArrayList<RestaurantVo> list =new PlaceService().searchListPage( searchkey, searchvalue,m); 
  		String page="";
		
		if(list != null ){
			page="views/course/plan.jsp";
			request.setAttribute("list", list);
			request.setAttribute("PlacecocList", PlacecocList);
 		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "ㅠㅠ!");
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
