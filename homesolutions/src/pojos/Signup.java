package pojos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Signup {
	
	@Id
	@GeneratedValue
	int userid;
	String username;
	String password;
	String email;
	
	public Signup() {
		
	}

	public Signup(int userid, String username, String password, String email) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.email = email;
	}
	
	public Signup( String username, String password, String email) {
		this.username = username;
		this.password = password;
		this.email = email;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Signup [userid=" + userid + ", username=" + username + ", password=" + password + ", email=" + email
				+ "]";
	}
	
	
	
}
