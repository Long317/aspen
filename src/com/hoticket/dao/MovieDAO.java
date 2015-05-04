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

	// create an object of MovieDAO
	private static MovieDAO instance = new MovieDAO();

	// make the constructor private so that this class cannot be instantiated
	private MovieDAO() {
	}

	// Get the only object available
	public static MovieDAO getInstance() {
		return instance;
	}

	// get all movies from database
	// parameter: no
	// output: list of movies
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

	// get movie by movie name
	// parameter: String
	// output: a movie
	public Movie getMovieByName(String input) {
		Movie movie = new Movie();
		try {
			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			String query = "from Movie where name =:input";
			movie = (Movie) session.createQuery(query)
					.setParameter("input", input).uniqueResult();
			session.getTransaction().commit();
			return movie;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return movie;
	}

	// get movie by movie id
	// parameter: int
	// output: a movie
	public Movie getMovieById(int input) {
		Movie movie = new Movie();
		try {
			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			String query = "from Movie where id =:input";
			movie = (Movie) session.createQuery(query)
					.setParameter("input", input).uniqueResult();
			session.getTransaction().commit();
			return movie;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return movie;
	}

	// get movie by movieInfoURL
	// parameter: string
	// output: a movie
	@SuppressWarnings("unchecked")
	public List<Movie> getMovieByInfoURL(String url) {
		List<Movie> movies = new ArrayList<Movie>();
		try {
			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			String query = "from Movie where info_url =:input";
			movies =(List<Movie>)  session.createQuery(query)
					.setParameter("input", url).list();
			session.getTransaction().commit();
			return movies;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return movies;
	}

	// get movie by theatre id
	@SuppressWarnings("unchecked")
	public List<Movie> getMovieByTheatreId(int theatre_id) {

		List<Movie> movies = new ArrayList<Movie>();
		try {
			session = ConnectionUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.getNamedQuery(
					"callgetMovieByTheatreIdProcedure").setParameter(
					"theatre_id", theatre_id);
			// movies = (List<Movie>) session.createSQLQuery(query).list();
			movies = query.list();
			transaction.commit();
			// session.flush();
			// session.close();
			return movies;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return movies;
	}

	// get movie by IMG URL
	// parameter: String
	// output: a movie
	public Movie getMovieByImgURL(String input) {
		Movie movie = new Movie();
		try {
			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			movie = (Movie) session.createQuery(
					"from Movie where img_url =" + "'" + input + "'")
					.uniqueResult();
			session.getTransaction().commit();
			return movie;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return movie;
	}

	// filter movie by genre
	// parameter: String
	// output: list of movie
	@SuppressWarnings("unchecked")
	public List<Movie> filterMovieByGenre(String input) {
		List<Movie> movies = new ArrayList<Movie>();
		try {
			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			movies = (List<Movie>) session.createQuery(
					"from Movie where genre =" + "'" + input + "'").list();
			session.getTransaction().commit();
			return movies;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return movies;
	}

	// sort movie by rating
	// parameter: no
	// output: list of movie
	@SuppressWarnings("unchecked")
	public List<Movie> sortMovieByRating() {
		List<Movie> movies = new ArrayList<Movie>();
		try {
			session = ConnectionUtil.getSessionFactory().openSession();
			session.beginTransaction();
			movies = (List<Movie>) session.createSQLQuery(
					"select m.* from movie m order by m.rating DESC").list();
			session.getTransaction().commit();
			return movies;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return movies;
	}

	// //sort movies by rating
	// //parameter: no
	// //output: list of movie
	// @SuppressWarnings("unchecked")
	// public List<Movie> sortMovieByRating() {
	// Movie movie = new Movie();
	// try {
	// session = ConnectionUtil.getSessionFactory().openSession();
	// session.beginTransaction();
	// movie = (List<Movie>)
	// session.createQuery("from Movie where name ="+"'"+input+"'");
	// session.getTransaction().commit();
	// return movie;
	//
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	//
	// return movie;
	// }
	//

	// add a new movie into movie table
	public void addMovie(Movie movie) {

		Session session = null;
		try {

			session = ConnectionUtil.getSessionFactory().openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.getNamedQuery("calladdMovieProcedure");
			query.setParameter("id", movie.getId());
			query.setParameter("name", movie.getName());
			query.setParameter("release_time", movie.getRelease_time());
			query.setParameter("rating", movie.getRating());
			query.setParameter("length", movie.getLength());
			query.setParameter("trailer_url", movie.getTrailer_url());
			query.setParameter("genre", movie.getGenre());
			query.setParameter("img_url", movie.getImg_url());
			query.setParameter("synopsis", movie.getSynopsis());
			query.executeUpdate();
			transaction.commit();
//			session.flush();
		} catch (Exception e) {
			e.getMessage();
			e.printStackTrace();
		} finally {
			session.close();
		}

	}

	public void updateSYNPOSIS(String synopsis, int id) {
		session = ConnectionUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		try {
			Movie m = (Movie) session.get(Movie.class, id);
			m.setSynopsis(synopsis);
			session.update(m);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
		} finally {
			session.close();
		}

	}
	
	public void updateMovie(Movie newMovie, int id) {
		session = ConnectionUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		try {
			Movie m = (Movie) session.get(Movie.class, id);
			m.setName(newMovie.getName());
			m.setGenre(newMovie.getGenre());
			m.setImg_url(newMovie.getImg_url());
			m.setSynopsis(newMovie.getSynopsis());
			m.setRelease_time(newMovie.getRelease_time());
			m.setRating(newMovie.getRating());
			m.setLength(newMovie.getLength());
			m.setTrailer_url(newMovie.getTrailer_url());
			session.update(m);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
		} finally {
			session.close();
		}
	}
	
	public void deleteMovie(int movie_id) {
		session = ConnectionUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		try {
			Movie m = (Movie) session.get(Movie.class, movie_id);
			session.delete(m);
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
		} finally {
			session.close();
		}
	}
}
