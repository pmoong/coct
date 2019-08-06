
package com.cw.coc.course.controller;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.cw.coc.place.model.service.PlaceService;
import com.cw.coc.place.model.vo.PageInfo;
import com.cw.coc.place.model.vo.Place;

 
/**
 * Servlet implementation class Plan
 */
@WebServlet("/plan")
public class Plan extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Plan() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*		ArrayList<Place> list =new PlaceService().selecttot();
*//*		ArrayList<CultureVo> list1 =new SearchService().selectcoc();
*/		 
		int currentPage;
		int limit;
		int maxPage;
	/*	String con = "";
		String word= "";*/
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
		
		if(list != null){
			page="views/course/plan.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
		}else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "실패!");
		}
	 
		request.getRequestDispatcher(page).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

//package com.cw.coc.course.controller;
//
//import java.io.IOException;
//import java.util.ArrayList;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.cw.coc.course.model.sevice.Place.PlaceCocService;
//import com.cw.coc.course.model.vo.Place.PlaceCocVo;
//import com.cw.coc.member.model.vo.Member;
//import com.cw.coc.place.model.service.PlaceService;
//import com.cw.coc.place.model.vo.CultureVoYM;
//import com.cw.coc.place.model.vo.LogmentVoYM;
//import com.cw.coc.place.model.vo.Place;
//import com.cw.coc.place.model.vo.RestaurantVo;
//import com.cw.coc.place.model.vo.SeoulVoYM;
//
// 
//@WebServlet("/plan")
//public class Plan extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//    public Plan() {
//        super();
//    }
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	HttpSession session = request.getSession();
//	Member m =(Member)session.getAttribute("loginUser");
// 	
// 	int userNo = m.getUno();
//  	ArrayList<PlaceCocVo> PlacecocList  = new PlaceCocService().PlaceisCoc(userNo);
//  	ArrayList<Place> list =new PlaceService().selectList(m);
//	/*
//  		int currentPage;
//		int limit;
//		int maxPage;
//		int startPage;
//		int endPage;
//		currentPage=1;
//		if(request.getParameter("currentPage")!=null) {
//			currentPage=Integer.parseInt(request.getParameter("currentPage"));
//		}
//		
//		limit =5;
//				
//		int listCount =new PlaceService().getListCount();
//		
//		maxPage=(int)((double)listCount/limit+0.95);
//		startPage=(((int)((double)currentPage/limit+0.95))-1)*10 +1;
//		
//		endPage=startPage +10 -1;
//		
//		if(maxPage <endPage) {
//			endPage = maxPage;
//		}
//		PageInfo pi=new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage);*/
//		
//	/*	
//	  ArrayList<Object> list2 = new MemberService().myCoc(m);
//		
//		ArrayList<Place> pl = (ArrayList<Place>)list2.get(0);
//		ArrayList<CultureVoYM> ct = (ArrayList<CultureVoYM>) list2.get(1);
//		ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) list2.get(2);
//		ArrayList<RestaurantVo> rt = (ArrayList<RestaurantVo>) list2.get(3);
//		ArrayList<SeoulVoYM> sl = (ArrayList<SeoulVoYM>) list2.get(4); 
//  	*/
//  	
//  	
//	ArrayList<Object> list1 =new PlaceService().selectCoc(m);
//	
//	 /*ArrayList<CultureVoYM> ct = (ArrayList<CultureVoYM>) list.get(0);
//	ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) list.get(1);
//	ArrayList<RestaurantVo> rt  = (ArrayList<RestaurantVo>) list.get(2);
//	ArrayList<SeoulVoYM> sl = (ArrayList<SeoulVoYM>) list.get(3); 
//	*/
//
//	  /*list.add(ct);
//	list.add(lm);
//	list.add(rt);
//	list.add(sl) ;*/
//		String page="";
//		 if(list != null){
//			request.setAttribute("list", list);
//		 /*	request.setAttribute("ct", ct);
//				request.setAttribute("lm", lm);
//				request.setAttribute("rt", rt);
//				request.setAttribute("sl", sl);  */
// 			request.setAttribute("PlacecocList", PlacecocList);
//			page="views/course/plan.jsp";
//			
//		}else {
//			page="views/common/errorPage.jsp";
//			request.setAttribute("msg", "실패!");
//		}
//   			 
// 
//		request.getRequestDispatcher(page).forward(request, response);
//		
//		/*HttpSession session = request.getSession();
//		Member m = (Member)session.getAttribute("loginUser");
//		
//		ArrayList<Object> list = new MemberService().myCoc(m);
//		
//		ArrayList<Place> pl = (ArrayList<Place>)list.get(0);
//		ArrayList<CultureVoYM> ct = (ArrayList<CultureVoYM>) list.get(1);
//		ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) list.get(2);
//		ArrayList<RestaurantVo> rt = (ArrayList<RestaurantVo>) list.get(3);
//		ArrayList<SeoulVoYM> sl = (ArrayList<SeoulVoYM>) list.get(4);
//		
//		String page = "";
//		page="views/course/plan.jsp";
//		request.setAttribute("pl", pl);
//		request.setAttribute("ct", ct);
//		request.setAttribute("lm", lm);
//		request.setAttribute("rt", rt);
//		request.setAttribute("sl", sl);
//		request.getRequestDispatcher(page).forward(request, response);
//*/	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}
