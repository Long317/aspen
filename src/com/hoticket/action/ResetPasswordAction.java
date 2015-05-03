package com.hoticket.action;

import static com.hoticket.util.Constants.*;

import java.util.Map;
import com.hoticket.dao.UserDAO;
import com.hoticket.modal.User;
import com.hoticket.service.emailService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ResetPasswordAction extends ActionSupport{
	private String email;
	private static final long serialVersionUID = 1L;
	public String execute() {
		UserDAO userdao=new UserDAO();
		String pass=userdao.generateTempPass(email);
		emailService.send(email, SUBJECT_RESETPW, BODY_RESETPW+pass);
		return SUCCESS;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	   @SuppressWarnings("unchecked")
	public void validate() {
		   @SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		 //validate for email field
		   UserDAO userdao=new UserDAO();
			User c=userdao.checkUser(email);
			if(c==null){  
				addFieldError("emailnotexist", "This email does not exist"); 
				
			}

	   }

}
