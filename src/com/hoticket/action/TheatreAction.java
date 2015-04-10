package com.hoticket.action;

import com.hoticket.modal.Theatre;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class TheatreAction  extends ActionSupport implements ModelDriven<Theatre>{
	private Theatre theatre;

	@Override
	public Theatre getModel() {
		return theatre;
	}
	/**
	 * redirect to action base on 
	 */
	public String execute() {
		
		
	}
	public Theatre getTheatre() {
		return theatre;
	}

	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}
	

}
