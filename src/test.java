import org.hibernate.Session;

import com.hoticket.dao.Guest_billing_accountDAO;
import com.hoticket.util.ConnectionUtil;

public class test {
	public static void main(String[] args) {
		Session session = ConnectionUtil.getSessionFactory().openSession();
		session.beginTransaction();
		int i =Guest_billing_accountDAO.getInstance().getLastestId();
		System.out.println(i);
		session.getTransaction().commit();
		session.close();
	}
}
