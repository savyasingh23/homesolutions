package daos;



import pojos.Signup;

public interface ISignupdao {
	
	public void saveUsers(Signup signup);
	public String findUser();
	

}
