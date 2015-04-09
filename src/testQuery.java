import java.util.List;

import com.hoticket.dao.*;
import com.hoticket.modal.*;
import com.hoticket.util.ConnectionUtil;

import java.util.ArrayList;
import java.util.List;


public class testQuery {
	
			
public static void main(String args[]){
	
		TheatreDAO theatreDao = TheatreDAO.getInstance();
		
		List<Theatre> t=theatreDao.getTheatre();
		for (int i=0;i<t.size();i++)
			System.out.print("\""+t.get(i).getCity().trim()+"\", ");
}
}
