/*package com.cw.coc.course.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.course.model.sevice.Place.PlaceCocService;
import com.cw.coc.course.model.vo.Place.PlaceCocVo;
import com.cw.coc.place.model.service.PlaceService;
import com.cw.coc.place.model.vo.PageInfo;
import com.cw.coc.place.model.vo.Place;

 
*//**
 * Servlet implementation class Plan
 *//*
@WebServlet("/plan")
public class Plan extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final int display = 30;

    public Plan() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int userNo=Integer.parseInt(request.getParameter("userNo"));
	String userNo = request.getParameter("userNo");
	
	System.out.println("userNo"+userNo);
		if (userNo == null) {
			userNo = "0";
		}
		int userNo = Integer.parseInt(userNo);
		
		String userNo1 =request.getParameter("userNo").trim();
		int currentPage;
		int limit;
		int maxPage;
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
		
 		ArrayList<Place> list =new PlaceService().selectList(currentPage,limit);
 		String page="";
		ArrayList<PlaceCocVo> PlacecocList = new PlaceCocService().PlaceisCoc(userNo1);
		System.out.println("placeCoc:"+PlacecocList);
		 if(list != null){
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			request.setAttribute("PlacecocList", PlacecocList);
			page="views/course/plan.jsp";
 			
		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "실패!");
		}
	 
		request.getRequestDispatcher(page).forward(request, response); 
 
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			request.setAttribute("PlacecocList", PlacecocList);
			page="views/course/plan.jsp";
 			System.out.println("list:"+list);
 			
		request.getRequestDispatcher(page).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
*/