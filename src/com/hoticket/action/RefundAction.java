package com.hoticket.action;

import static com.hoticket.util.Constants.*;

import java.util.Map;

import com.hoticket.dao.UserDAO;
import com.hoticket.modal.Guest_pay_history;
import com.hoticket.modal.Pay_history;
import com.hoticket.modal.User;
import com.hoticket.service.emailService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RefundAction extends ActionSupport {
	private String confirmation_number;
	private static final long serialVersionUID = 1L;

	public String execute() {
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		Object c = session.get("refund_payhistory");
		if (c instanceof Pay_history) {
			//validate from remote server
			
			// send email
			String email = ((Pay_history) c).getCustomer().getEmail();
			System.out.println(email);
			emailService.send(email,
					"Your refund has been distribute to your account!!",
					"Your refund has been distribute to your account!! For your account number "
							+ ((Pay_history) c).getBilling_account()
									.getCard_number());
		} else if (c instanceof Guest_pay_history) {
			//validate from remote server
			
			//send email
			String email = ((Guest_pay_history) c).getGuest_billing_account().getEmail();
			emailService.send(email,
					"Your refund has been distribute to your account!!",
					"Your refund has been distribute to your account!! For your account number "
							+ ((Guest_pay_history) c).getGuest_billing_account().getCard_number());
		}
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public void validate() {
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		// clear session for refund
		session.put("refund_payhistory", null);
		// validate for email field
		UserDAO userdao = new UserDAO();
		// check if comfirmation number exist or not
		Object c = userdao.checkPayHistory(confirmation_number);
		if (c == null) {
			addFieldError("historynotexist",
					"This confirmation number does not exist");
		} else if (c instanceof Pay_history) {
			session.put("refund_payhistory", (Pay_history) c);
			System.out.println(((Pay_history) c).getCustomer().getEmail());
		} else if (c instanceof Guest_pay_history) {
			session.put("refund_payhistory", (Guest_pay_history) c);
		}

	}

	public String getConfirmation_number() {
		return confirmation_number;
	}

	public void setConfirmation_number(String confirmation_number) {
		this.confirmation_number = confirmation_number;
	}

}