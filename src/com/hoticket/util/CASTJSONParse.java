package com.hoticket.util;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import org.hibernate.Session;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Cast;
import com.hoticket.modal.Movie;

public class CASTJSONParse {
	public static void main(String args[]) {
		Session session = ConnectionUtil.getSessionFactory().openSession();
		FileReader fr = null;
		JSONParser parser = new JSONParser();
		try {
			File f = new File("castsInfo.json");
			fr = new FileReader(f);
			JSONArray movies = (JSONArray) parser.parse(fr);
			for (int i = 0; i < movies.size(); i++) {
				String movieInfoURL = ((JSONObject) movies.get(i)).get("movieInfoURL").toString();
				String synopsis= ((JSONObject) movies.get(i)).get("SYNOPSIS").toString();
				List<Movie> m = MovieDAO.getInstance().getMovieByInfoURL(movieInfoURL);
				for (int j = 0; j<m.size();j++){
				MovieDAO.getInstance().updateSYNPOSIS(synopsis, m.get(j).getId());
				}
				JSONArray casts = (JSONArray) (((JSONObject) movies.get(i))
						.get("casts"));
				for (int j=0;j<casts.size();j++){
					for (int x = 0; x<m.size();x++){
					Cast c = new Cast();	
					c.setImg_url((String) ((JSONObject) casts.get(j))
								.get("img_URL"));
					c.setInfo_url((String) ((JSONObject) casts.get(j))
								.get("info_URL"));
					c.setName((String) ((JSONObject) casts.get(j))
								.get("name"));
					c.setMovie(m.get(x));
					session.beginTransaction();
					session.save(c);
					session.getTransaction().commit();
					}
				}
		
				
				
				
			}
			
		
			session.close();
			System.out.println("Done");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				fr.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
