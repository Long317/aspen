package com.hoticket.util;


public class Constants {
	/**
	 * Emailer constant
	 */
	public final static String FROM = "hoticket308@gmail.com";
	public final static String PASSWORD="hoticket308:)";
	public final static String SUBJECT_REGISTER="You have register to hoticket!";
	public final static String BODY_REGISTER="You have register to hoticket!Congratulation!!!";
	
	/**
	 * URL constant
	 */
	public static final String MovieChain_URL = "http://localhost:9999/MovieChain/MovieData";
	public static final String MovieData_URL= "/WEB-INF/ACMWebInfo.json";
	public static final String GEOLocator_URL= "http://ip-api.com/json/#";
	public static final String GoolgeMapAPI_URL = "https://maps.googleapis.com/maps/api/distancematrix/json";
	public static final String ClinetIP_URL = "http://l2.io/ip.js?var=myip";
	
	
/**
 * Session attribute name or result type constant
 */
	public static final String MOVIE = "movie";
	public static final String ADMINMOVIE = "adminmovie";
	public static final String SEARCH_MOVIE = "SEARCH_MOVIE";
	public static final String ADMIN_SEARCH_MOVIE = "ADMIN_SEARCH_MOVIE";
	public static final String THEATRE = "theatre";
	public static final String SEARCH_THEATRE = "SEARCH_THEATRE";
	public static final String GENERAL = "general";
	public static final String SEARCH_GENERAL = "SEARCH_GENERAL";
	public static final String SEARCH_GENERAL_THEATRES = "SEARCH_GENERAL_THEATRES";
	public static final String SEARCH_GENERAL_MOVIES = "SEARCH_GENERAL_MOVIES";
	public static final String SHOWING_MOVIES = "SHOWING_MOVIES";
	public final static String SUBJECT_DEREGISTER="You have de-registered to hoticket!";
	public final static String BODY_DEREGISTER="You have de-register to hoticket!Congratulation!!!";
	public static final String CUSTOMER = "customer";
	public static final String SEARCH_GENERAL_CUSTOMERS = "SEARCH_GENERAL_CUSTOMERS";
	public static final String SEARCH_CUSTOMER = "SEARCH_CUSTOMER";
	
	/**
	 * Attribute for movie filter session
	 */
	public static final String ALL_MOVIES = "ALL_MOVIES";
	public static final String FILTER_MOVIES="FILTER_MOVIES";
	
	/**
	 * max theatre that closes to user location
	 */
	public static final int MAX_THEATRE =6;
	
	/**
	 * purchase action
	 */
	public static final String TICKET_PRICE = "ticket_price";
	public static final String SELECTED_SHOWING = "selected_showing";
	
	/**
	 * ticket price constant
	 */
	public static final double PRICE_3D = 171.79;
	public static final double PRICE_IMAX = 131.79;
	public static final double PRICE_NORMAL = 71.79;
	public static final String ADULT = "adult";
	public static final String SENIOR = "senior";
	public static final String CHILD = "child";
	
	/**
	 * all states in us array
	 */
	public static final String[] STATES = new String []{
		"AK", "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE",
		"FL", "GA", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", 
		"MA", "MD", "ME", "MI", "MN", "MO", "MS", "MT", "NC", "ND", 
		"NE", "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", 
		"RI", "SC", "SD", "TN", "TX", "UT", "VA", "VT", "WA", "WI",
		"WV", "WY","Alabama", "Alaska", "Arizona", "Arkansas",
		"California", "Colorado", "Connecticut", "Delaware",
		"Florida", "Georgia", "Hawaii", "Idaho", "Illinois", 
		"Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", 
		"Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota",
		"Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", 
		"New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio",
		"Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota",
		"Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", 
"		Wisconsin", "Wyoming"
	};
	
	/**
	 * popular cities array
	 */
	public static final String[] POPULAR_CITIES = new  String []{

		    "New York", "NY",
		    "Los Angeles", "CA",
		    "Atlanta", "GA",
		    "Chicago", "IL",
		    "Austin", "TX",
		    "Miami", "FL",
		    "San Francisco", "CA",
		    "Washington", "DC",
		    "Boston", "MA",


		};
	
}
