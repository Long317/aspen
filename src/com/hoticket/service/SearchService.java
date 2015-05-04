package com.hoticket.service;

import static com.hoticket.util.Constants.*;
import java.util.ArrayList;
import java.util.List;
<<<<<<< HEAD

import org.json.simple.parser.ParseException;

import com.hoticket.modal.Customer;
=======
>>>>>>> refs/remotes/origin/master
import com.hoticket.modal.Movie;
import com.hoticket.modal.Theatre;
import com.hoticket.util.AddressConverter;
import com.hoticket.util.Methods;

public class SearchService {
	/**
	 * return a arraylist contains all states that match the search input
	 * 
	 * @param searchInput
	 * @return
	 */
	public static ArrayList<String> matchState(String searchInput) {
		ArrayList<String> matchedStates = new ArrayList<String>();
		for (int i = 0; i < STATES.length; i++) {
			// if equal then return the state
			if (STATES[i].toLowerCase().equals(searchInput.toLowerCase())) {
				matchedStates.clear();
				if (i > 50 && !matchedStates.contains(STATES[i - 51])) {
					matchedStates.add(STATES[i - 51]);
				} else {
					matchedStates.add(STATES[i]);
				}
				return matchedStates;
			}
			// if contains then return the state array
			if (STATES[i].contains(searchInput)) {
				if (i > 50 && !matchedStates.contains(STATES[i - 51])) {
					matchedStates.add(STATES[i - 51]);
				} else {
					matchedStates.add(STATES[i]);
				}
			}
		}
		return matchedStates;

	}

	/**
	 * return a arraylist contains all cities that match the search input
	 * 
	 * @param searchInput
	 * @param theatres
	 * @return
	 */
	public static ArrayList<String> matchCities(String searchInput,
			List<Theatre> theatres) {
		ArrayList<String> matchedCities = new ArrayList<String>();
		for (int i = 0; i < theatres.size(); i++) {
			String city = theatres.get(i).getCity().toLowerCase();
			// if equals then return the city
			if (city.equals(searchInput.toLowerCase())) {
				matchedCities.clear();
				matchedCities.add(city);
				return matchedCities;
			}
			// if contains then return the city array
			if (city.contains(searchInput.toLowerCase())) {
				if (!matchedCities.contains(city)) {
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
	 * @return movies that contains search input or movie that equals search
	 *         input
	 */
	public static ArrayList<Movie> matchMovies(String searchInput,
			List<Movie> movies) {
		ArrayList<Movie> matchedMovies = new ArrayList<Movie>();
		for (int i = 0; i < movies.size(); i++) {
			String DBMovieName = movies.get(i).getName().toLowerCase();
			// if equal then return the movie
			if (DBMovieName.equals(searchInput.toLowerCase())) {
				matchedMovies = new ArrayList<Movie>();
				matchedMovies.add(movies.get(i));
				return matchedMovies;
			}
			// if only contains
			if (DBMovieName.contains(searchInput.toLowerCase())) {
				matchedMovies.add(movies.get(i));
			}
		}
		return matchedMovies;
	}

	/**
	 * 
	 * @param searchInput
	 *            search input
	 * @param theatres
	 *            all theatres in db
	 * @return theatres that contains search input or theatre that equals search
	 *         input
	 */
	public static ArrayList<Theatre> matchTheatres(String searchInput,
			List<Theatre> theatres) {
		ArrayList<Theatre> matchTheatres = new ArrayList<Theatre>();
		for (int i = 0; i < theatres.size(); i++) {
			String DBMovieName = theatres.get(i).getName().toLowerCase();
			// if equal then return the movie
			if (DBMovieName.equals(searchInput.toLowerCase())) {
				matchTheatres = new ArrayList<Theatre>();
				matchTheatres.add(theatres.get(i));
				return matchTheatres;
			}
			// if only contains
			if (DBMovieName.contains(searchInput.toLowerCase())) {
				matchTheatres.add(theatres.get(i));
			}
		}
		return matchTheatres;
	}

	/**
	 * search theatres by state
	 * 
	 * @param searchInput
	 * @param theatres
	 * @return
	 */
	public static ArrayList<Theatre> searchTheaterByState(String searchInput,
			List<Theatre> theatres) {
		ArrayList<Theatre> matchedTheatres = new ArrayList<Theatre>();
		for (int i = 0; i < theatres.size(); i++) {
			if (theatres.get(i).getState().toUpperCase()
					.contains(searchInput.toUpperCase())) {
				matchedTheatres.add(theatres.get(i));
			}
		}
		return matchedTheatres;
	}

	/**
	 * 
	 * @param searchInput
	 * @param theatres
	 * @return
	 */
	public static ArrayList<Theatre> searchTheaterByCity(String searchInput,
			List<Theatre> theatres) {
		ArrayList<Theatre> matchedTheatres = new ArrayList<Theatre>();
		for (int i = 0; i < theatres.size(); i++) {
			if (theatres.get(i).getCity().toUpperCase()
					.contains(searchInput.toUpperCase())) {
				matchedTheatres.add(theatres.get(i));
			}
		}
		return matchedTheatres;
	}

	/**
	 * 
	 * @param searchInput
	 * @param theatres
	 * @return
	 */
	public static ArrayList<Theatre> searchTheaterByZipcode(String searchInput,
			List<Theatre> theatres) {
        //store closest theatre in that area
	    ArrayList<Theatre> closeTheatres = new ArrayList<Theatre>();
        
		//get client geodata lat and lon
	    double [] geoData = new double[2];
		try {
			geoData = AddressConverter.convertToLatLong(searchInput);
			closeTheatres =getCloseTheatre (searchInput,geoData,theatres,true);
			
		} catch (Exception e1) {
			closeTheatres =getCloseTheatre (searchInput,geoData,theatres,false);
		}
		
	
	       
		return closeTheatres;
	}

	private static ArrayList<Theatre> getCloseTheatre(String searchInput, double[] geoData,
			List<Theatre> theatres, boolean isGetGeodata) {
		 //store closest theatre in that area
	    ArrayList<Theatre> closeTheatres = new ArrayList<Theatre>();
		//store matched theatre
		ArrayList<Theatre> matchedTheatres = new ArrayList<Theatre>();
		//store distances for same state theatre
        ArrayList<Double> distances = new ArrayList<Double>();
	    for (int i=0;i<theatres.size();i++){
	    	if (isGetGeodata){
	    		if (Math.abs(theatres.get(i).getZipcode()-Integer.parseInt(searchInput))<10000){
				double[] theatreGeo = new double[]{theatres.get(i).getLatitude(),theatres.get(i).getLongitude()};
				distances.add(AddressConverter.calculateDistance(geoData, theatreGeo));
	    		}
				matchedTheatres.add(theatres.get(i));
			}else{
        	//only check close distance
	    	if (Math.abs(theatres.get(i).getZipcode()-Integer.parseInt(searchInput))<1000){
	    		matchedTheatres.add(theatres.get(i));
				try {
					distances.add(TheatreFounder.calculateDistance(searchInput, theatres.get(i)));
				} catch (Exception e) {
					e.printStackTrace();
				} 
			}
		}
	  }
		//store top 5 closest theatres to the session
	       int number = matchedTheatres.size()>=MAX_THEATRE?MAX_THEATRE:matchedTheatres.size();
	       for (int i=0;i<number;i++){
	    	   closeTheatres.add(matchedTheatres.get(Methods.minIndex(distances)));
	    	  distances.remove(Methods.minIndex(distances));
	    	  System.out.println(closeTheatres.get(i).getName());
	       }
		return closeTheatres;
		
	}
	
	
	/**
	 * 
	 * @param searchInput
	 * @param users
	 * @return users that contains search input or user that equals search
	 *         input
	 */
	public static Customer matchCustomerWithCustomerEmail(String searchInput,
			List<Customer> customers) {
		for (int i = 0; i < customers.size(); i++) {
			String DBCustomerEmail =customers.get(i).getEmail();
			// if equal then return the movie
			if (DBCustomerEmail.equals(searchInput)) {
				return customers.get(i);
			}
			
		}
		return null;
	}
	
	
	
}
