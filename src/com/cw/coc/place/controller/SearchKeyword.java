package com.cw.coc.place.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cw.coc.place.model.Searchapi;

/**
 * Servlet implementation class SearchKeyword
 */
@WebServlet("/search.kw")
public class SearchKeyword extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private static final int display = 20;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchKeyword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyWord = request.getParameter("searchKeyword");
		Searchapi sa = new Searchapi();
		StringBuilder sb = sa.search(keyWord);
		String data = sb.toString();
        String[] array;
        array = data.split("\"");
        String[] title = new String[display];
        String[] link = new String[display];
        String[] category = new String[display];
        String[] description = new String[display];
        String[] telephone = new String[display];
        String[] address = new String[display];
        String[] mapx = new String[display];
        String[] mapy = new String[display];
        int k = 0;
        for (int i = 0; i < array.length; i++) {
            if (array[i].equals("title"))
                title[k] = array[i + 2];
            if (array[i].equals("link"))
                link[k] = array[i + 2];
            if (array[i].equals("category"))
                category[k] = array[i + 2];
            if (array[i].equals("description")) {
                description[k] = array[i + 2];            
            }
            if (array[i].equals("telephone"))
                telephone[k] = array[i + 2];
            if (array[i].equals("address"))
                address[k] = array[i + 2];
            if (array[i].equals("mapx"))
                mapx[k] = array[i + 2];
            if (array[i].equals("mapy")) {
                mapy[k] = array[i + 2];
                k++;
            }
        }
        
        
		String page="/views/searchResultPage.jsp";
		request.setAttribute("keyWord", keyWord);
		request.setAttribute("title", title);
		request.setAttribute("link", link);
		request.setAttribute("category", category);
		request.setAttribute("description", description);
		request.setAttribute("telephone", telephone);
		request.setAttribute("address", address);
		request.setAttribute("mapx", mapx);
		request.setAttribute("mapy", mapy);
		
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
