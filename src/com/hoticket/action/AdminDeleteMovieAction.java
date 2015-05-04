package com.hoticket.action;

import static com.hoticket.util.Constants.ADMIN_SEARCH_MOVIE;

import java.util.Map;

import com.hoticket.dao.MovieDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminDeleteMovieAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private int admin_movie_id;
	
	@SuppressWarnings("unchecked")
	
	@Override
	public String execute() throws Exception {
		MovieDAO movieDAO = MovieDAO.getInstance();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		movieDAO.deleteMovie(admin_movie_id);
		session.put(ADMIN_SEARCH_MOVIE, null);
		return SUCCESS;
	
	}
	
	
	public int getAdmin_movie_id() {
		return admin_movie_id;
	}
	public void setAdmin_movie_id(int admin_movie_id) {
		this.admin_movie_id = admin_movie_id;
	}
	
	
}
