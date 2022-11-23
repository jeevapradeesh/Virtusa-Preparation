package xadmin.fpassword.bean;

public class FpasswordBean {
	
	private String email;
	private String password;
	
	
	public FpasswordBean() {
		super();
	}
	
	public FpasswordBean(String email, String password) {
		super();
		this.email = email;
		this.password = password;
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
}
