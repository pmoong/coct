package com.cw.coc.mail.model.vo;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
		String to = "cornpu380@gmail.com";
		
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

}
