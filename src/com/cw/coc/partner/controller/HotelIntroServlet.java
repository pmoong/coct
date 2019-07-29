package com.cw.coc.partner.controller;

 import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.cw.coc.common.MyFileRenamePolicy;
import com.cw.coc.partner.model.service.HotelService;
import com.cw.coc.partner.model.vo.Attachment;
import com.cw.coc.partner.model.vo.Hotel;
import com.oreilly.servlet.MultipartRequest;
 
 
@WebServlet("/hotel.intro")
public class HotelIntroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HotelIntroServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024*1024*10;
			
			String root =request.getSession().getServletContext().getRealPath("/");
			System.out.println(root);

			String savePath=root +"img_uploadFiles/";
			
			MultipartRequest multiRequest = new MultipartRequest(request,savePath,maxSize,"UTF-8",new MyFileRenamePolicy());
		
			/*MultipartRequest multiRequest =new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());*/
			
			ArrayList<String> saveFiles =new ArrayList<String>();
			ArrayList<String> originFiles =new ArrayList<String>();
			Enumeration<String> files =multiRequest.getFileNames();
			
			while(files.hasMoreElements()) {
				
				String name=files.nextElement();
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));
			}
			String multiTitle =multiRequest.getParameter("title");
			String multiContent =multiRequest.getParameter("content");
			
			/*int uno =((Member)(request.getSession().getAttribute("loginUser"))).getUno();
			*/
			
			Hotel h =new Hotel();
			h.sethTitle(multiTitle);
			h.sethContent(multiContent);
/*			h.sethWriter(String.valueOf(uno));
*/	
			ArrayList<Attachment>fileList =new ArrayList<Attachment>();
			
			for(int i=originFiles.size() -1; i>=0; i--) {
				
				Attachment a =new Attachment();
				/*Attachment a =new Attachment();*/
				a.setFilePath(savePath);
				a.setOriginName(originFiles.get(i));
				a.setChangeName(saveFiles.get(i));
				
				fileList.add(a);
			}
			System.out.println(h+"controller board");

			int result=new HotelService().insertImg(h,fileList);
			if(result >0) {
				response.sendRedirect(request.getContextPath()+"/select.hi");
			}else {
				for(int i=0; i<saveFiles.size(); i++) {
					File failedFile =new File(savePath+saveFiles.get(i));
					failedFile.delete();
				}
				request.setAttribute("msg", "등록 실패!!");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
