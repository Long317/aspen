package com.hoticket.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SignoutAction extends ActionSupport  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String execute() {
		Map session = (Map) ActionContext.getContext().get("session");
		session.put("login", null);
		return SUCCESS;
	}
	
}
