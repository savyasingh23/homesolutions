package daos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import hibernate.util.Hibernateutil;
import pojos.Signup;

public class Signupqueries implements ISignupqueries {

	@Override
	public boolean checkUser(String contnum, String password) {
		
		Transaction t = null;
        Signup ep = null;
        try  {
        	SessionFactory sf = Hibernateutil.getSessionFactory();
        	Session s = sf.openSession();
        	t = s.beginTransaction();
            ep = (Signup) s.createQuery("FROM Signup S WHERE S.contnum = :contnum").setParameter("contnum", contnum).uniqueResult();

            if (ep != null && ep.getPassword().equals(password)) {
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

	@Override
	public boolean checkContact(String contnum) {
		Transaction t = null;
        Signup ep = null;
        try  {
        	SessionFactory sf = Hibernateutil.getSessionFactory();
        	Session s = sf.openSession();
        	t = s.beginTransaction();
            ep = (Signup) s.createQuery("FROM Signup S WHERE S.contnum = :contnum").setParameter("contnum", contnum).uniqueResult();

            if (ep != null && ep.getContnum().equals(contnum)) {
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

	@Override
	public boolean forgotPassword(String contnum, String newpassword) {
		Transaction t = null;
        try  {
        	SessionFactory sf = Hibernateutil.getSessionFactory();
        	Session s = sf.openSession();
        	t = s.beginTransaction();
            @SuppressWarnings("rawtypes")
			Query query= s.createQuery("UPDATE Signup set password=:newpassword WHERE contnum=:contnum");
            query.setParameter("contnum", contnum);
            query.setParameter("newpassword", newpassword);
            @SuppressWarnings("unused")
			int status=query.executeUpdate();
            t.commit();
             return true;
                      
        } catch (Exception e) {
            if (t != null) {
                t.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }

	

}
