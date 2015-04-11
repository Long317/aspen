package com.hoticket.action;

import java.util.List;
import java.util.Map;

import static com.hoticket.util.Constants.*;

import com.hoticket.dao.MovieDAO;
import com.hoticket.dao.ShowingDAO;
import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Movie;
import com.hoticket.modal.Theatre;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class TheatreAction extends ActionSupport implements
		ModelDriven<Theatre> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Theatre theatre;

	@Override
	public Theatre getModel() {
		return theatre;
	}

	/**
	 * redirect to action base on
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		//check if any id pass in 
		if (theatre.getId()==0){
			return ERROR;
		}
		//get theatre object
		Theatre t = TheatreDAO.getInstance().getTheatreById(theatre.getId());
		//if no theatre in the db has same name return to error page
		if (t.getName() == null) {
			return ERROR;
		} else {
			//get corresponding showing movies
			List<Movie> showingMovies= MovieDAO.getInstance().getMovieByTheatreId(t.getId());
			session.put(SHOWING_MOVIES, showingMovies);
			//get showing time
			t.setShowing(ShowingDAO.getInstance().getShowingByTheatreId(t.getId()));
			session.put(THEATRE, t);
			return SUCCESS;
		}
	}

	public Theatre getTheatre() {
		return theatre;
	}

	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}

}
