package com.hoticket.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.hoticket.dao.MovieDAO;
import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Movie;
import com.hoticket.modal.Theatre;
import com.hoticket.service.SearchService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import static com.hoticket.util.Constants.*;

public class SearchAction extends ActionSupport {
	private String searchInput;

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public String execute() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		//clear search result
		session.put(SEARCH_GENERAL_THEATRES, null);
		session.put(SEARCH_GENERAL_MOVIES, null);
		session.put(SEARCH_GENERAL, null);
		// used to check if match states
		ArrayList<String> matchedStates;
		// used to check if match cities
		ArrayList<String> matchedCities;
		// used to check if match movies
		ArrayList<Movie> matchedMovies;
		// used to check if match theatres
		ArrayList<Theatre> matchedTheatres;
		// store all the movie theatres
		List<Theatre> theatres =TheatreDAO.getInstance().getTheatre();
		//get all movies
		List<Movie> movies = MovieDAO.getInstance().getMovies();
		
		// Only keep letter, number and space
		System.out.println(searchInput);
		searchInput = searchInput.replaceAll("[^\\d^A-Za-z\\s]", "").trim();
		//replace two space to one space
		searchInput = searchInput.replaceAll("  ", " ").replaceAll("  ", " ").trim();
		System.out.println(searchInput);
		// check if input is zipcode
		// if user enter 5 digit number, we confirm he enters a zipcode
		if (searchInput.matches("[0-9]{5}")) {
			matchedTheatres=SearchService.searchTheaterByZipcode(searchInput,theatres);
			session.put(SEARCH_GENERAL_THEATRES, matchedTheatres);
			return GENERAL;
		}// check for state
		else if (!(matchedStates = SearchService.matchState(searchInput)).isEmpty()) {
			// check if only one theatre match
			if (matchedStates.size() == 1) {
				// get result theatres
				matchedTheatres =SearchService.searchTheaterByState(matchedStates.get(0),theatres);
				session.put(SEARCH_GENERAL_THEATRES, matchedTheatres);
				return GENERAL;
			} else {
				// If multiple states matched return to general search result page
				session.put(SEARCH_GENERAL, matchedStates);
			}
		}//check for cities
		else if (!(matchedCities = SearchService.matchCities(searchInput,theatres)).isEmpty()){
			// check if only one city match
						if (matchedCities.size() == 1) {
							// get result theatres
							matchedTheatres =SearchService.searchTheaterByCity(matchedCities.get(0),theatres);
							session.put(SEARCH_GENERAL_THEATRES, matchedTheatres);
							return GENERAL;
						} else {
							// If multiple cities matched return to general search result page
							session.put(SEARCH_GENERAL, matchedCities);
						}
		}
		//check for movies
		else if (!(matchedMovies = SearchService.matchMovies(searchInput,movies)).isEmpty()){
			// check if only one state match
			if (matchedMovies.size() == 1) {
				// get result theatres
				session.put(SEARCH_MOVIE, matchedMovies.get(0));
				return MOVIE;
			} else {
				// If multiple cities matched return to general search result page
				session.put(SEARCH_GENERAL_MOVIES, matchedMovies);
			}
		}
		//check for theatre
		else if (!(matchedTheatres = SearchService.matchTheatres(searchInput,theatres)).isEmpty()){
			// check if only one state match
			if (matchedTheatres.size() == 1) {
				// get result theatres
				session.put(THEATER, matchedTheatres.get(0));
				return THEATER;
			} else {
				// If multiple cities matched return to general search result page
				session.put(SEARCH_GENERAL_THEATRES, matchedTheatres);
			}
		}
		
		//No result found
			if (session.get(SEARCH_GENERAL_THEATRES)!=null||
					session.get(SEARCH_GENERAL_MOVIES)!=null||
					session.get(SEARCH_GENERAL)!=null){
				return GENERAL;
			}
			return ERROR;
	}

	public String getSearchInput() {
		return searchInput;
	}

	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}

}
