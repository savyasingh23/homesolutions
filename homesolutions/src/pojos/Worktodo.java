package pojos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Worktodo {
	
	@Id
	@GeneratedValue
	private int w_id;
	private String contnum;
	private String contnumreg;
	private String date;
	private String time;
	private String payment;
	private String address;
	private String status;
	public Worktodo() {
		
	}

	public Worktodo(int w_id, String contnum, String contnumreg, String date, String time,String payment,String address,String status) {
		this.w_id = w_id;
		this.contnum = contnum;
		this.contnumreg = contnumreg;
		this.date = date;
		this.time = time;
		this.payment = payment;
		this.address=address;
		this.status=status;

	}

	public int getW_id() {
		return w_id;
	}

	public void setW_id(int w_id) {
		this.w_id = w_id;
	}

	public String getContnum() {
		return contnum;
	}

	public void setContnum(String contnum) {
		this.contnum = contnum;
	}

	public String getContnumreg() {
		return contnumreg;
	}

	public void setContnumreg(String contnumreg) {
		this.contnumreg = contnumreg;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Worktodo [w_id=" + w_id + ", contnum=" + contnum + ", contnumreg=" + contnumreg + ", date=" + date
				+ ", time=" + time + "]";
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	

}
