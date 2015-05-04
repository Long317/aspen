package com.hoticket.action;


import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import com.hoticket.dao.UserDAO;
import com.hoticket.service.emailService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class subscriptionAction extends ActionSupport{
	private String email;
	private static final long serialVersionUID = 1L;
	public String execute() {
		UserDAO userdao=new UserDAO();
		if (userdao.addSubscription(email)==-1){
			return ERROR;
		}
		emailService.send(email, "You have subscript hoticket's movie infomation!!", "Congradulations!!"
				+ "You have subscript hoticket's movie infomation!! ");
		return SUCCESS;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	   public void validate() {
		   @SuppressWarnings({ "rawtypes", "unused" })
		Map session = (Map) ActionContext.getContext().get("session");
		 //validate for email field
		   if (email.indexOf("@") == -1 ) {
				addFieldError("emailInvalid", "email is invalid");
			}
		   if (StringUtils.isEmpty(email)) {
				addFieldError("emailInvalid", "email is required");
			}

	   }

}
