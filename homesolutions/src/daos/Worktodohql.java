package daos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import hibernate.util.Hibernateutil;
import pojos.Signup;

public class Worktodohql {
public String checkUser(String contnum) {
		
		Transaction t = null;
        Signup ep = null;
        try  {
        	SessionFactory sf = Hibernateutil.getSessionFactory();
        	Session s = sf.openSession();
        	t = s.beginTransaction();
            ep = (Signup) s.createQuery("FROM Signup S WHERE S.contnum = :contnum").setParameter("contnum", contnum).uniqueResult();

            if (ep != null && ep.getContnum().equals(contnum)) {
                return ep.getAddress();
            }
            
            t.commit();
        } catch (Exception e) {
            if (t != null) {
                t.rollback();
            }
            e.printStackTrace();
        }
        return "";
    }
}
