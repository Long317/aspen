package com.hoticket.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.hoticket.dao.RatingDAO;
import com.hoticket.modal.Rating;
import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Rating r;
	private String url;
	
	public String addComment() {
		HttpServletRequest request = ServletActionContext.getRequest();
		 url = request.getHeader("referer").split("&")[0];
		 url = "http://localhost:8080/aspen/movie?movie.id="+(url.charAt(url.length()-1)-'0');
		 System.out.println(url);
		 System.out.println(r.getComment());
		 System.out.println(r.getRating_score());
		 System.out.println(r.getCustomer());
		 RatingDAO.getInstance().addRate(r);
		
		return SUCCESS;
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
