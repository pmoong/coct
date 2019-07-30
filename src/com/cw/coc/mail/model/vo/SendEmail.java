package com.cw.coc.mail.model.vo;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SendEmail {
	private String from;
	private String title;
	private String content;
	
	public SendEmail() {}
	
	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void sendMail() {
		
		String host = "smtp.naver.com";
		final String user = "khcoct";
		final String password = "1qazXSW@";
		String to = "heywb457@gmail.com";
		
		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		// Compose the message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Subject
			message.setSubject(this.title);

			// Text
			message.setText(this.from+"님이 작성한 메일입니다."+"\n"+this.content);

			// send the message
			Transport.send(message);
			System.out.println("message sent successfully...");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
	public void sendMail2(String email,String auth) {
		String host = "smtp.naver.com";
		final String user = "khcoct";
		final String password = "1qazXSW@";
		String to = email;
		
		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		System.out.println("sendMail2 method()..." + email);
		// Compose the message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// Subject
			message.setSubject(this.title);
			message.setText(auth);
			// Text
			message.setText(this.from + "님 이메일 인증번호를 입력해주세요" + "\n" + auth);
			// send the message
			try {
				Transport.send(message);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.getMessage());
			}
			
			System.out.println("message sent successfully...");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
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
