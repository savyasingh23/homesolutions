package daos;



import pojos.Signup;

public interface ISignupdao {
	
	public String findUser();
		public void deleteUser(int next_val);
	public void saveUsers(Signup signup);
	

}
