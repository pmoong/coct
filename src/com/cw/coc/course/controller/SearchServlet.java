package com.cw.coc.course.controller;

import java.io.IOException;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cw.coc.place.model.vo.*;
import com.cw.coc.board.model.dao.BoardDao;
import com.cw.coc.course.model.sevice.SearchService;
import com.cw.coc.place.model.service.PlaceService;
import com.cw.coc.place.model.vo.PageInfo;
import com.cw.coc.place.model.vo.Place;

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
		 
		int currentPage;
		int limit;
		int maxPage;
		String searchkey=request.getParameter("searchkey");
		String searchvalue=request.getParameter("searchvalue");

		int startPage;
		int endPage;
 		currentPage=1;
		if(request.getParameter("currentPage")!=null) {
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		
		limit =5;
				
		int listCount =new PlaceService().getListCount();
		
		maxPage=(int)((double)listCount/limit+0.95);
		startPage=(((int)((double)currentPage/limit+0.95))-1)*10 +1;
		
		endPage=startPage +10 -1;
		
		if(maxPage <endPage) {
			endPage = maxPage;
		}
		PageInfo pi=new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage);
		
		 ArrayList<Place> list =new PlaceService().searchListPage(currentPage,limit, searchkey, searchvalue); 
 		String page="";
		
		if(list != null ){
			page="views/course/plan.jsp";
			request.setAttribute("list", list);
 			request.setAttribute("pi", pi);
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


/*package com.cw.coc.course.controller;

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
 

*//**
 * Servlet implementation class SearchServlet
 *//*
@WebServlet("/search.hj")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
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
 
	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
*/