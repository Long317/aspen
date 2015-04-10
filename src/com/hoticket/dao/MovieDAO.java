
package com.hoticket.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hoticket.modal.Movie;
import com.hoticket.util.ConnectionUtil;



public class MovieDAO {
	Session session = null;

	  //create an object of MovieDAO
	   private static MovieDAO instance = new MovieDAO();

	   //make the constructor private so that this class cannot be instantiated
	   private MovieDAO(){}

	   //Get the only object available
	   public static MovieDAO getInstance(){
	      return instance;
	   }

	   
	   	//get all movies from database
		//parameter: no
		//output: list of movies
	@SuppressWarnings("unchecked")
	public List<Movie> getMovies() {

		List<Movie> movies = new ArrayList<Movie>();
		try {

			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			movies = (List<Movie>) session.createQuery("from Movie").list();
			session.getTransaction().commit();
			return movies;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return movies;
	}
	
	//get movie by movie name
	//parameter: String
	//output: a movie
			public Movie getMovieByName(String input) {
				Movie movie = new Movie();
				try {
					session = ConnectionUtil.getSessionFactory().getCurrentSession();
					session.beginTransaction();
					movie =  (Movie) session.createQuery("from Movie where name ="+"'"+input+"'").uniqueResult();
					session.getTransaction().commit();
					if (movie==null){
						movie = new Movie();
						return movie;
					}
					return movie;

				} catch (Exception e) {
					e.printStackTrace();
				}

				return movie;
			}
			
			//get movie by IMG URL
			//parameter: String
			//output: a movie
					public Movie getMovieByImgURL(String input) {
						Movie movie = new Movie();
						try {
							session = ConnectionUtil.getSessionFactory().getCurrentSession();
							session.beginTransaction();
							movie =  (Movie) session.createQuery("from Movie where img_url ="+"'"+input+"'").uniqueResult();
							session.getTransaction().commit();
							return movie;

						} catch (Exception e) {
							e.printStackTrace();
						}

						return movie;
					}
					
		
//			//sort movies by rating
//			//parameter: no
//			//output: list of movie
//					@SuppressWarnings("unchecked")
//					public List<Movie> sortMovieByRating() {
//						Movie movie = new Movie();
//						try {
//							session = ConnectionUtil.getSessionFactory().getCurrentSession();
//							session.beginTransaction();
//							movie =  (List<Movie>) session.createQuery("from Movie where name ="+"'"+input+"'");
//							session.getTransaction().commit();
//							return movie;
//
//						} catch (Exception e) {
//							e.printStackTrace();
//						}
//
//						return movie;
//					}
//				
			
    //add a new movie into movie table
	public void addMovie(Movie movie) {

		Session session = null;
		try {
	
			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();		
			Query query = session.getNamedQuery("calladdMovieProcedure");
			query.setParameter("id", movie.getId());
			query.setParameter("name", movie.getName());
			query.setParameter("release_date", movie.getRelease_time());
			query.setParameter("rating", movie.getRating());
			query.setParameter("length", movie.getLength());
			query.setParameter("trailer_url", movie.getTrailer_url());
			query.setParameter("genre", movie.getGenre());
			query.setParameter("img_url", movie.getImg_url());
			query.setParameter("synopsis", movie.getSynopsis());
			query.executeUpdate();
			transaction.commit();
			session.flush();
			session.close();
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}finally{
			session.close();
		}
		
	}
}
