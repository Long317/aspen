import java.util.List;

import com.hoticket.dao.*;
import com.hoticket.modal.*;
import com.hoticket.util.ConnectionUtil;

import java.util.ArrayList;
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
	List<Movie> t=(List<Movie>)getMovieByTheatreId(1);
	System.out.println(t);

}
}
