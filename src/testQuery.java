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
//		List<Theatre> tt=(List<Theatre>) theatreDao.getTheatreByZipcode(98072);
		Movie t=(Movie)movieDao.getMovieByName("Interstellarr");
		System.out.println(t);
}
}
