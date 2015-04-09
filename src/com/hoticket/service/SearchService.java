package com.hoticket.service;

import static com.hoticket.util.Constants.STATES;

import java.util.ArrayList;
import java.util.List;

import com.hoticket.modal.Movie;
import com.hoticket.modal.Theatre;

public class SearchService {
	/**
	 * return a arraylist contains all states that match the search input
	 * @param searchInput
	 * @return
	 */
	public static ArrayList<String> matchState(String searchInput){
		ArrayList<String> matchedStates = new ArrayList<String>();
		for (int i=0;i<STATES.length;i++){
			if (STATES[i].contains(searchInput)){
				if (i>50 &&!matchedStates.contains(STATES[i-51])){
					matchedStates.add(STATES[i-51]);
				}
			}
		}
		return matchedStates;
		
	}
	/**
	 * return a arraylist contains all cities that match the search input
	 * @param searchInput
	 * @param theatres
	 * @return
	 */
	public static ArrayList<String> matchCities(String searchInput,
			List<Theatre> theatres) {
		ArrayList<String> matchedCities = new ArrayList<String>();
		for (int i=0;i<theatres.size();i++){
			String city=theatres.get(i).getCity();
			if (city.toLowerCase().contains(searchInput.toLowerCase())){
				if (!matchedCities.contains(city)){
					matchedCities.add(city);
				}
			}
		}
		return matchedCities;
	}
/**
 * 
 * @param searchInput
 * @param movies
 * @return movies that contains search input or movie that equals search input
 */
	public static ArrayList<Movie> matchMovies(String searchInput,
			List<Movie> movies) {
		ArrayList<Movie> matchedMovies = new ArrayList<Movie>();
		for (int i=0;i<movies.size();i++){
			String DBMovieName = movies.get(i).getName().toLowerCase();
			//if equal then return the movie
			if (DBMovieName.equals(searchInput.toLowerCase())){
				matchedMovies = new ArrayList<Movie>();
				matchedMovies.add(movies.get(i));
				return matchedMovies;
			}
			//if only contains
			if (DBMovieName.contains(searchInput.toLowerCase())){
				matchedMovies.add(movies.get(i));
			}
		}
		return matchedMovies;
	}
/**
 * 
 * @param searchInput  search input	
 * @param theatres   all theatres in db
 * @return	theatres that contains search input or theatre that equals search input
 */
	public static ArrayList<Theatre> matchTheatres(String searchInput,
			List<Theatre> theatres) {
		ArrayList<Theatre> matchTheatres = new ArrayList<Theatre>();
		for (int i=0;i<theatres.size();i++){
			String DBMovieName = theatres.get(i).getName().toLowerCase();
			//if equal then return the movie
			if (DBMovieName.equals(searchInput.toLowerCase())){
				matchTheatres = new ArrayList<Theatre>();
				matchTheatres.add(theatres.get(i));
				return matchTheatres;
			}
			//if only contains
			if (DBMovieName.contains(searchInput.toLowerCase())){
				matchTheatres.add(theatres.get(i));
			}
		}
		return matchTheatres;
	}
}
