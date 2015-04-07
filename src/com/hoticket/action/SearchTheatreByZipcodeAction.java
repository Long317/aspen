package com.hoticket.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Theatre;
import com.hoticket.service.SearchTheatreByZipcodeService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SearchTheatreByZipcodeAction extends ActionSupport implements ModelDriven<Theatre> {
	private Theatre theatre = new Theatre();
	private List<Theatre> theatres = new ArrayList<Theatre>();
	private TheatreDAO theatreDao = TheatreDAO.getInstance();
	
	@Override
	public Theatre getModel() {
		return theatre;
	}

	
	/**
	 * this method will call loginService, which will setup role attribute
	 * for user. 0: user, 1: admin, 2.manager, 3. Error
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		int intputZipcode=theatre.getZipcode();
		//jessie for test
		System.out.println("inputZipcode"+intputZipcode);
		//jessie for test
		SearchTheatreByZipcodeService searchTheathreByZipcodeService= new SearchTheatreByZipcodeService();
		if(searchTheathreByZipcodeService.searchTheatreFromZipcode(intputZipcode)==null){
			return ERROR;
		}
		else{
			//jessie for test
			System.out.println("listof theatre"+searchTheathreByZipcodeService.searchTheatreFromZipcode(intputZipcode));
			//jessie for test
			return "TheatreList";
		}
		
		}

	public Theatre getTheatre() {
		return theatre;
	}
	
	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}

	public List<Theatre> getTheatres() {
		return theatres;
	}

	public void setTheatres(List<Theatre> theatres) {
		this.theatres = theatres;
	}
	
}