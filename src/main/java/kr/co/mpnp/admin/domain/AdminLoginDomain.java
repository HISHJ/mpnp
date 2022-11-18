package kr.co.mpnp.admin.domain;

public class AdminLoginDomain {
	private String id,pass;
	
	public AdminLoginDomain() {
	}

	public AdminLoginDomain(String id, String pass) {
		this.id = id;
		this.pass = pass;
	}

	public String getId() {
		return  id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	

}
