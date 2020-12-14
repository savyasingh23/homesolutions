package daos;

public interface ISignupqueries {
	
	public boolean checkUser(String contnum , String password);
	public boolean checkContact(String contnum);
	public boolean forgotPassword(String contnum, String newpassword);
	public String loginPage(String contnum);
	public boolean changeAvuav(String avunav,String contnum);

}
