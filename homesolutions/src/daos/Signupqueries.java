package daos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import hibernate.util.Hibernateutil;
import pojos.Signup;

public class Signupqueries implements ISignupqueries {

	@Override
	public boolean checkUser(String username, String password) {
		
		Transaction t = null;
        Signup signup = null;
        try  {
        	SessionFactory sf = Hibernateutil.getSessionFactory();
        	Session s = sf.openSession();
        	t = s.beginTransaction();
            signup = (Signup) s.createQuery("FROM Signup S WHERE S.username = :userName").setParameter("userName", username)
                .uniqueResult();

            if (signup != null && signup.getPassword().equals(password)) {
                return true;
            }
            t.commit();
        } catch (Exception e) {
            if (t != null) {
                t.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }
	

}
