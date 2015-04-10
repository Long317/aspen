package com.hoticket.action;

import java.util.Map;

import static com.hoticket.util.Constants.*;

import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Theatre;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class TheatreAction extends ActionSupport implements
		ModelDriven<Theatre> {
	private Theatre theatre;

	@Override
	public Theatre getModel() {
		return theatre;
	}

	/**
	 * redirect to action base on
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		// get session object
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		//get theatre object
		Theatre t = TheatreDAO.getInstance()
				.getTheatreByName(theatre.getName());
		//if no theatre in the db has same name return to error page
		if (t.getName() == null) {
			return ERROR;
		} else {
			session.put(THEATRE, t);
			return SUCCESS;
		}
	}

	public Theatre getTheatre() {
		return theatre;
	}

	public void setTheatre(Theatre theatre) {
		this.theatre = theatre;
	}

}
