package pojos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Signup {
	
	@Id
	@GeneratedValue
	int userid;
	private String email;
	private String password;
	private String signedupasa;
	private String firstname;
	private String lastname;
	private String address;
	private int pincode;
	private String gender;
	private String city;
	private String contnum;
	private String state;
	private String agreeandcontinue;
	private String avunav;
	public Signup() {
		
	}

	public Signup(int userid, String email,String password, String signedupasa, String firstname, String lastname, String address,
			int pincode, String gender, String city, String contnum, String state, String agreeandcontinue,String avunav) {
		this.userid = userid;
		this.email =email;
		this.password=password;
		this.signedupasa = signedupasa;
		this.firstname = firstname;
		this.lastname = lastname;
		this.address = address;
		this.pincode = pincode;
		this.gender = gender;
		this.city = city;
		this.contnum = contnum;
		this.state = state;
		this.agreeandcontinue = agreeandcontinue;
		this.avunav=avunav;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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

	public String getSignedupasa() {
		return signedupasa;
	}

	public void setSignedupasa(String signedupasa) {
		this.signedupasa = signedupasa;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getContnum() {
		return contnum;
	}

	public void setContnum(String contnum) {
		this.contnum = contnum;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String isAgreeandcontinue() {
		return agreeandcontinue;
	}

	public void setAgreeandcontinue(String agreeandcontinue) {
		this.agreeandcontinue = agreeandcontinue;
	}

	@Override
	public String toString() {
		return "Signup [userid=" + userid + ", email=" +email+"password="+password  + ", signedupasa=" + signedupasa + ", firstname=" + firstname
				+ ", lastname=" + lastname + ", address=" + address + ", pincode=" + pincode + ", gender=" + gender
				+ ", city=" + city + ", contnum=" + contnum + ", state=" + state + ", agreeandcontinue="
				+ agreeandcontinue + "]";
	}

	public String getAvunav() {
		return avunav;
	}

	public void setAvunav(String avunav) {
		this.avunav = avunav;
	}

	
}
