package daos;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import hibernate.util.Hibernateutil;
import pojos.Signup;

public class Signupdao implements ISignupdao {

	@Override
	public void saveUsers(Signup signup) {
		
		SessionFactory sf = Hibernateutil.getSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(signup);
		t.commit();
		
	}

	@Override
	public String findUser() {
		return null;
	}

	

}
