package com.hoticket.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.hoticket.dao.MovieDAO;
import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Movie;
import com.hoticket.modal.Theatre;
import com.opensymphony.xwork2.ActionSupport;
import static com.hoticket.util.Constants.*;

public class AutocompAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String term;
	private InputStream inputStream;
	private boolean isauto = false;
	private List<String> list;
	private List<String> output;

	public String execute() {
		if (!isauto) {
			System.out.println("Data from ajax call " + term);
			list = new ArrayList<String>();
			List<Theatre> ts = TheatreDAO.getInstance().getTheatre();
			List<Movie> ms = MovieDAO.getInstance().getMovies();
			for (int i = 0; i < ts.size(); i++) {
				list.add(ts.get(i).getName());
				if (!list.contains(ts.get(i).getCity())) {
					list.add(ts.get(i).getCity());
				}
			}
			for (int i = 0; i < ms.size(); i++) {
				list.add(ms.get(i).getName());
			}
			for (int i = 0; i < STATES.length; i++) {
				list.add(STATES[i]);
			}
			isauto =true;
		}
		output= new ArrayList<String>();
		for (int i=0;i<list.size();i++){
			if (list.get(i).toLowerCase().contains(term.toLowerCase())){
				output.add(list.get(i));
			}
			if (output.size()>10){
				break;
			}
		}
		
		String searchList = new Gson().toJson(output);
		// return JSON String to the client
		try {
			inputStream = new ByteArrayInputStream(searchList.getBytes("UTF-8"));
			return SUCCESS;
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

}
