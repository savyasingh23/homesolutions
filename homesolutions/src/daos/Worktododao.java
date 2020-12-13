package daos;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

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

}
