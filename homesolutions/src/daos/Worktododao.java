package daos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import hibernate.util.Hibernateutil;
import pojos.Worktodo;

public class Worktododao implements IWorktodo{

	@Override
	public void saveUsers(Worktodo w) {
		SessionFactory sf = Hibernateutil.getSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(w);
		t.commit();
	}

	@Override
	public boolean changeStatus(String cod, int w_id) {
		Transaction t = null;
	    try  {
	    	SessionFactory sf = Hibernateutil.getSessionFactory();
	    	Session s = sf.openSession();
	    	t = s.beginTransaction();
	        @SuppressWarnings("rawtypes")
			Query query= s.createQuery("UPDATE Worktodo set status=:cod WHERE w_id=:w_id");
	        query.setParameter("w_id", w_id);
	        query.setParameter("cod", cod);
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
