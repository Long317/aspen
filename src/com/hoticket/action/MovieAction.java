package com.hoticket.action;



import java.util.Map;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Movie;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import static com.hoticket.util.Constants.*;

public class MovieAction extends ActionSupport implements
ModelDriven<Movie>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Movie movie;

	@Override
	public Movie getModel() {
		return movie;
	}
	
	@SuppressWarnings("unchecked")
	public String execute(){
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		//if no movie id pass
		if (movie.getId()==0){
			return ERROR;
		}
		//get movie object
		Movie m = MovieDAO.getInstance().getMovieById(movie.getId());
		//if no theatre in the db has same name return to error page
				if (m.getName() == null) {
					return ERROR;
				} else {
					session.put(SEARCH_MOVIE, m);
					return SUCCESS;
				}
		
	}

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	
	

}
