package com.hoticket.action;

import java.util.List;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Subscription;
import com.hoticket.service.emailService;
import com.opensymphony.xwork2.ActionSupport;


public class sendMovieInfoAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String subject;
	private String body;
	
	public String execute(){
		UserDAO userdao = new UserDAO();
		List<Subscription> subs =userdao.getSubscription();
		for (int i=0;i<subs.size();i++){
			emailService.send(subs.get(i).getEmail(), subject, body);
		}
		return SUCCESS;
	}
	
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	
	
}
