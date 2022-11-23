package signup;


public class Member {

	private static String uname, lname, email, password;
	

	public Member() {
		super();
	}

	public Member(String uname, String lname, String email, String password) {
		super();
		this.uname = uname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public static String getEmail() {
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
