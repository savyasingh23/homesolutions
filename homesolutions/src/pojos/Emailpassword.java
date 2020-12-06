package pojos;

import javax.persistence.Embeddable;

@Embeddable
public class Emailpassword {
	private String email;
	private String password;
	public Emailpassword(String email, String password) {
		this.email = email;
		this.password = password;
	}
	public Emailpassword() {
		
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Emailpassword [email=" + email + ", password=" + password + "]";
	}

}
