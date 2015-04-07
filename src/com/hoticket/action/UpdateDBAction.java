package com.hoticket.action;

import static com.hoticket.util.Constants.*;
import javax.servlet.ServletContext;


import org.apache.struts2.ServletActionContext;

import com.hoticket.service.JSONParseService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateDBAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	public String execute() {
		//get full URL for the mvoiedata
		ServletContext context = ServletActionContext.getServletContext();
		String fullPath = context.getRealPath(MovieData_URL);
		JSONParseService parser = new JSONParseService();
		//parse the json data and update to DB
		try {
			if (parser.parse(fullPath)) {
				return SUCCESS;
			}
			return ERROR;

		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}

	}

}
