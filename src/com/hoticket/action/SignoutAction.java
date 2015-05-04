package com.hoticket.action;

import java.util.List;
import java.util.Map;

import com.hoticket.modal.Movie;
import com.hoticket.modal.Theatre;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SignoutAction extends ActionSupport  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unchecked")
	public String execute() {
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		List<Movie> movies = (List<Movie>)session.get("movieCarousel");
		List<Theatre> theatres= (List<Theatre>)session.get("closeTheatres");
		String[] theatreInfo = (String[])session.get("popular_cities");
		Theatre defaultTheatre = (Theatre) session.get("default_theatre");
		
		session.clear();
		session.put("movieCarousel", movies);
		session.put("closeTheatres", theatres);
		session.put("popular_cities", theatreInfo);
		session.put("default_theatre", defaultTheatre);
		return SUCCESS;
	}
	
}
