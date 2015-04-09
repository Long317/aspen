import java.util.List;

import com.hoticket.dao.*;
import com.hoticket.modal.*;
import com.hoticket.util.ConnectionUtil;

import java.util.ArrayList;
import java.util.List;


public class testQuery {
	
			
public static void main(String args[]){
	
		MovieDAO movieDao = MovieDAO.getInstance();
		TheatreDAO theatreDao = TheatreDAO.getInstance();

		ShowingDAO showingDao = ShowingDAO.getInstance();
		
//		List<Theatre> tt=(List<Theatre>) theatreDao.getTheatreByZipcode(98072);
		List<Movie> t=(List<Movie>)showingDao.getMovieByTheatreId(2);
		System.out.println(t);


//		
//		List<Theatre> t=theatreDao.getTheatre();
//		for (int i=0;i<t.size();i++)
//			System.out.print("\""+t.get(i).getCity().trim()+"\", ");



}
}
