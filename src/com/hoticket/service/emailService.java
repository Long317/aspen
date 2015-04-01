package com.hoticket.service;


import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import static com.hoticket.util.Constants.*;

public class emailService {

	static Properties properties = new Properties();
	static {
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");
	}
	 public static boolean send(String to, String subject, String body) 
	   {
		 boolean result =true;
	      try
	      {
	         Session session = Session.getDefaultInstance(properties,  
	            new javax.mail.Authenticator() {
	            protected PasswordAuthentication 
	            getPasswordAuthentication() {
	            return new 
	            PasswordAuthentication(FROM, PASSWORD);
	            }});

	         Message message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(FROM));
	         message.setRecipients(Message.RecipientType.TO, 
	            InternetAddress.parse(to));
	         message.setSubject(subject);
	         message.setText(body);
	         Transport.send(message);
	      }
	      catch(Exception e)
	      {
	    	  result=false;
	         e.printStackTrace();
	      }
	      return result;
	   }

	 
	
}
