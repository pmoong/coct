 package com.cw.coc.course.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.member.model.vo.Member;
import com.cw.coc.place.model.service.PlaceService;
import com.cw.coc.place.model.vo.PageInfo;
import com.cw.coc.place.model.vo.Place;
import com.cw.coc.place.model.vo.SeoulVoYM;

 
@WebServlet("/PlanSeoul")
public class PlanSeoul extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public PlanSeoul() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		/*
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
		ArrayList<SeoulVoYM> list = new PlaceService().selectseoul(currentPage,limit,m);*/
		ArrayList<SeoulVoYM> listseo = new PlaceService().selectseoul( m);
  		String page="";
		
		if(listseo != null){
			page="views/course/plan.jsp";
			request.setAttribute("listseo", listseo);
/*			request.setAttribute("pi", pi);
*/		}else {
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
 