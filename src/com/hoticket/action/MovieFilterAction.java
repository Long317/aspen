package com.hoticket.action;


import java.util.List;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Movie;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import static com.hoticket.util.Constants.FILTER_MOVIES;


public class MovieFilterAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String Genre;
	private List<Movie> movies;
	
	
	@SuppressWarnings("unchecked")
	public String execute() {
		//get all movies
		movies=MovieDAO.getInstance().getMovies();
		for (int i=0;i<movies.size();i++){
			//get rid of duplicate movies
			if (movies.get(i).getName().contains("3D")||movies.get(i).getName().contains("IMAX")){
				movies.remove(i);
				i--;
			}
		}
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		if (StringUtils.isEmpty(Genre)||Genre.toLowerCase().equals("all")){
			session.put(FILTER_MOVIES, movies);
		}else{
			//filter movie by genre
			for (int i = 0;i<movies.size();i++){
				//skip movie without genre
				if (movies.get(i).getGenre()==null){
					continue;
				}
				//remove movie whose genre not matched 
				if (!movies.get(i).getGenre().toLowerCase().contains(Genre.toLowerCase())){
					movies.remove(i);
					i--;
				}
			}
			session.put(FILTER_MOVIES,movies);
		}
		return SUCCESS;
		
	}
	public String getGenre() {
		return Genre;
	}
	public void setGenre(String genre) {
		Genre = genre;
	}
	
}
