package com.hoticket.action;

import java.util.Map;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Movie;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminEditMovieAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private String moviename;
	private String genre;
	private String img_url;
	private String synopsis;
	private String release_time;
	private String rating;
	private String length;
	private String trailer_url;
	private int admin_movie_id;




	@SuppressWarnings("unchecked")
	
	@Override
	public String execute() throws Exception {
		
		MovieDAO movieDAO = MovieDAO.getInstance();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		
		// create Movie object
		Movie movie = new Movie();
		movie.setName(moviename);
		movie.setGenre(genre);
		movie.setImg_url(img_url);
		movie.setSynopsis(synopsis);
		//movie.setRelease_time(release_time);
		movie.setRating(Integer.parseInt(rating));
		movie.setLength(Integer.parseInt(length));
		movie.setTrailer_url(trailer_url);
		
		movieDAO.updateMovie(movie, admin_movie_id);
		
		
		return null;
		
	}
	
	

	public String getMoviename() {
		return moviename;
	}



	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}



	public String getGenre() {
		return genre;
	}



	public void setGenre(String genre) {
		this.genre = genre;
	}



	public String getImg_url() {
		return img_url;
	}



	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}



	public String getSynopsis() {
		return synopsis;
	}



	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}



	public String getRelease_time() {
		return release_time;
	}



	public void setRelease_time(String release_time) {
		this.release_time = release_time;
	}



	public String getRating() {
		return rating;
	}



	public void setRating(String rating) {
		this.rating = rating;
	}



	public String getLength() {
		return length;
	}



	public void setLength(String length) {
		this.length = length;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public String getTrailer_url() {
		return trailer_url;
	}

	public void setTrailer_url(String trailer_url) {
		this.trailer_url = trailer_url;
	}


	public int getAdmin_movie_id() {
		return admin_movie_id;
	}



	public void setAdmin_movie_id(int admin_movie_id) {
		this.admin_movie_id = admin_movie_id;
	}
	
}
