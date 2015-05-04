package com.hoticket.action;

import static com.hoticket.util.Constants.*;

import java.util.Map;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Movie;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminSearchMovieAction extends ActionSupport {
	
	private String searchInputMovieName;
	


	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	
	@Override
	public String execute() throws Exception {
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		Movie m=MovieDAO.getInstance().getMovieByName(searchInputMovieName);
		session.put(ADMIN_SEARCH_MOVIE,m);
		return SUCCESS;
				
		
	}

	public String getSearchInputMovieName() {
		return searchInputMovieName;
	}

	public void setSearchInputMovieName(String searchInputMovieName) {
		this.searchInputMovieName = searchInputMovieName;
	}
	@SuppressWarnings("unchecked")
	public void validate() {
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		session.put(ADMIN_SEARCH_MOVIE, null);
		Movie m=MovieDAO.getInstance().getMovieByName(searchInputMovieName);
		 if(m==null){
			addFieldError("searchmovienotexit", "The movie you input does not exists");}
	
	}
	
}
