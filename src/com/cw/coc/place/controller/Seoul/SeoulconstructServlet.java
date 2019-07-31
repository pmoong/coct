package com.cw.coc.place.controller.Seoul;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.place.model.service.SeoulService;
import com.cw.coc.place.model.vo.SeoulVo;

 
/**
 * Servlet implementation class SeoulServlet
 */
@WebServlet("/seoul.con")
public class SeoulconstructServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulconstructServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
ArrayList<SeoulVo> list = new SeoulService().selectconList();
		
		System.out.println("controller list : " + list);
		
		String page = "";
		
		if(list != null) {
			page = "views/seoul.jsp";
			request.setAttribute("list", list);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "실패!");
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
