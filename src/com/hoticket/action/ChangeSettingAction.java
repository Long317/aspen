package com.hoticket.action;
import static com.hoticket.util.Constants.*;

import java.util.Map;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ChangeSettingAction extends ActionSupport{
	private String username;
	private static final long serialVersionUID = 1L;
	private String password;
	public String execute() {
		UserDAO userdao=new UserDAO();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		User user=(User) session.get("login");
		userdao.changePassAndName(username, password,user.getId());
		return SUCCESS;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
