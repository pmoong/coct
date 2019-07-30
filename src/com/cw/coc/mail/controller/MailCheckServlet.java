package com.cw.coc.mail.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cw.coc.mail.model.vo.SendEmail;

/**
 * Servlet implementation class MailCheckServlet
 */
@WebServlet("/mailCheck")
public class MailCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String userId = request.getParameter("userId");
		
		SendEmail sm = new SendEmail();
		sm.setFrom(email);
	
		String auth = getRandom();
		sm.sendMail2(email,auth);
		
		request.setAttribute("userId", userId);
		request.setAttribute("email", email);
		request.setAttribute("auth", auth);

		//되는 소스
		//response.sendRedirect("/coc/views/member/joinForm.jsp?userId="+userId+"&email="+email);
		
		request.getRequestDispatcher("/views/member/joinForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public String getRandom(){
		StringBuffer temp =new StringBuffer();
         Random rnd = new Random();
         for(int i=0;i<10;i++)
         {
             int rIndex = rnd.nextInt(3);
             switch (rIndex) {
             case 0:
                 // a-z
                 temp.append((char) ((int) (rnd.nextInt(26)) + 97));
                 break;
             case 1:
                 // A-Z
                 temp.append((char) ((int) (rnd.nextInt(26)) + 65));
                 break;
             case 2:
                 // 0-9
                 temp.append((rnd.nextInt(10)));
                 break;
             }
         }
         String AuthenticationKey = temp.toString();
         System.out.println("인증번호 : " + AuthenticationKey);
         return AuthenticationKey;
	}
}
