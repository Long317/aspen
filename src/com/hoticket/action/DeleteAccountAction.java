package com.hoticket.action;
import static com.hoticket.util.Constants.*;

import java.util.Map;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Customer;
import com.hoticket.modal.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAccountAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int acc_id;
	@SuppressWarnings("unchecked")
	public String execute() {
		UserDAO userdao=new UserDAO();
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		User user=(User) session.get("login");
		userdao.deleteAcc(acc_id,user.getId());
		session.put("login", userdao.getCustomer(user.getId()));
		return SUCCESS;
	}
	public int getAcc_id() {
		return acc_id;
	}
	public void setAcc_id(int acc_id) {
		this.acc_id = acc_id;
	}
}
