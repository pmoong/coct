package com.cw.coc.mail.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

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
		System.out.println("mail_servlet");
		Properties props = System.getProperties();
		
		props.put("mail.smtp.user", "anjdicodnjs");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
	
		Authenticator auth = new MyAuthentication();
		
		//session 생성 및 MimeMessage생성
		Session session = Session.getDefaultInstance(props, auth);
		MimeMessage msg = new MimeMessage(session);
		
		try {
			//편지보낸시간
			msg.setSentDate(new Date());
			
			InternetAddress from = new InternetAddress("보내는 사람");
			
			//이메일 발신자
			msg.setFrom(from);
			
			//이메일 수신자
			String email = request.getParameter("receiver");
			
			InternetAddress to = new InternetAddress(email);
			msg.setRecipient(Message.RecipientType.TO, to);
			
			//이메일 제목
			msg.setSubject("비밀번호 인증번호", "UTF-8");
			
			//이메일 내용
			String code = request.getParameter("code_check");
			
			request.setAttribute("code", code);
			msg.setText(code, "UTF-8");
			
			
			//이메일 헤더
			msg.setHeader("content-Type", "text/html");
			
			//메일보내기
			javax.mail.Transport.send(msg);
			System.out.println("보냄!");
			
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	
		RequestDispatcher rd = request.getRequestDispatcher("인증번호확인하는페이지");
		rd.forward(request, response);
		
		
	}
	class MyAuthentication extends Authenticator{
		PasswordAuthentication pa;
		
		public MyAuthentication() {
			String id = "anjdicodnjs";
			String pw = "Aheywb457!!";
			
			pa = new PasswordAuthentication(id, pw);
		}
		
		public PasswordAuthentication getPasswordAuthentication() {
			return pa;
		}
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
