package com.hoticket.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.hoticket.dao.RatingDAO;
import com.hoticket.modal.Rating;
import com.hoticket.service.emailService;
import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Rating r;
	private String url;
	
	public String addComment() {
		//get previous calling page
		HttpServletRequest request = ServletActionContext.getRequest();
		 url = request.getHeader("referer").split("&")[0];
		 url = "http://localhost:8080/aspen/movie?movie.id="+(url.charAt(url.length()-1)-'0');
		 //save rate
		 RatingDAO.getInstance().addRate(r);
		
		return SUCCESS;
	}
	public String deleteComment() {
		//get previous calling page
		HttpServletRequest request = ServletActionContext.getRequest();
		 url = request.getHeader("referer").split("&")[0];
		 url = "http://localhost:8080/aspen/movie?movie.id="+(url.charAt(url.length()-1)-'0');
		 //delete the rate
		 r= RatingDAO.getInstance().getRate(r.getId());
		 if(RatingDAO.getInstance().DeleteRate(r.getId())){
			 emailService.send(r.getCustomer().getEmail(), "Your comment for "+ r.getMovie().getName()+" has been delete!!",
					 "Your comment for "+ r.getMovie().getName()+" is not properly according to our admins inspection!!"
					 +" Your comment is following: "+r.getComment()+
					" After sincerely consideration, we decide to delete your comment!! Thank you for participation!"
					 );
			 return SUCCESS;
		 }
		 return ERROR;	
	}

	public Rating getR() {
		return r;
	}


	public void setR(Rating r) {
		this.r = r;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}
	
	
}
