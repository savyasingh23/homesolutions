package daos;

import pojos.Worktodo;

public interface IWorktodo {

	public void saveUsers(Worktodo w);
	public boolean changeStatus(String cod, int w_id);
}
