package com.cw.coc.course.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.course.model.sevice.SearchService;
import com.cw.coc.place.model.vo.CultureVo;

/**
 * Servlet implementation class Plan
 */
@WebServlet("/PlanLogment")
public class LogmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public LogmentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<CultureVo> list =new SearchService().searchtot();
  		String page="";
		
		if(list != null){
			page="views/course/plan.jsp";
			request.setAttribute("list", list);
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
