package com.hoticket.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Movie;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SpecialOfferAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public String execute() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		List<Movie> ms = MovieDAO.getInstance().getMovies();
		List<Movie> specialOffers = new ArrayList<Movie>();
		for (int i = 0; i < ms.size(); i++) {
			if (ms.get(i).getSpecial() == 1) {
				specialOffers.add(ms.get(i));
			}
		}
		session.put("specialOffers", specialOffers);
		return SUCCESS;
	}

}
