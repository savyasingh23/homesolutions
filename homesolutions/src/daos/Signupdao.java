package daos;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import hibernate.util.Hibernateutil;
import pojos.Emailpassword;
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
		// TODO Auto-generated method stub
		return null;
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	public void deleteUser(int l) {
		SessionFactory sf = Hibernateutil.getSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		Query query = s.createQuery("delete signup password = :password");
		query.setParameter("password", l);
		int result=query.executeUpdate();
		System.out.print(result);
		t.commit();
		
	}

	

}
