package com.hoticket.service;

import java.util.List;

import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Theatre;

public class SearchTheatreByZipcodeService {
	private TheatreDAO theatreDao = TheatreDAO.getInstance();
	public List<Theatre> searchTheatreFromZipcode(int inputZipcode){
		return theatreDao.getTheatreByZipcode(inputZipcode);
		
	}
}

