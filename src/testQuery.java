import java.util.List;

import com.hoticket.dao.*;
import com.hoticket.modal.*;
import com.hoticket.util.ConnectionUtil;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class testQuery {
	//get movie by theatre id
	@SuppressWarnings("unchecked")
	public static List<Movie> getMovieByTheatreId(int input) {
		
		List<Movie> movies = new ArrayList<Movie>();
		try {
			Session session = ConnectionUtil.getSessionFactory().getCurrentSession();
			Transaction transaction = session.beginTransaction();		
			Query query = session.getNamedQuery("callgetMovieByTheatreIdProcedure").setParameter("theatreId",input);
			movies =  query.list();
			transaction.commit();
//			session.flush();
//			session.close();
			return movies;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return movies;
	}

			
public static void main(String args[]){
<<<<<<< HEAD
	List<Movie> t=(List<Movie>)getMovieByTheatreId(1);
	System.out.println(t);
=======
	
		MovieDAO movieDao = MovieDAO.getInstance();
		TheatreDAO theatreDao = TheatreDAO.getInstance();

		ShowingDAO showingDao = ShowingDAO.getInstance();
//		
//		List<Theatre> tt=(List<Theatre>) theatreDao.getTheatreByZipcode(85741);
//		System.out.println(tt.get(0).getName());
		List<Movie> t=(List<Movie>)movieDao.getMovieByTheatreId(2);
		System.out.println(t.get(0).getName());
//
//		Movie t =(Movie)movieDao.getMovieByName("Let's Get Married");
//		System.out.println(t.getName());
//Movie t =(Movie)movieDao.getMovieByImgURL("http://images.fandango.com/r96.3/ImageRenderer/134/0/redesign/static/img/default_poster.png/0/cp/cpc/images/masterrepository/fandango/180762/furious_seven_ver2.jpg");
//		System.out.println(t.getName());
//		List<Movie> t=(List<Movie>)movieDao.sortMovieByRating();
//		System.out.println(t.get(2).getRating());
		
//		List<Theatre> t=theatreDao.getTheatre();
//		for (int i=0;i<t.size();i++)
//			System.out.print("\""+t.get(i).getCity().trim()+"\", ");


>>>>>>> refs/remotes/origin/master

}
}
