package kr.co.mpnp.user.vo;

public class MemberVO {
	private String id,pfimg,nick,name,pass,phone;
	
	public MemberVO() {
	}

	public MemberVO(String id, String pfimg, String nick, String name, String pass, String phone) {
		this.id = id;
		this.pfimg = pfimg;
		this.nick = nick;
		this.name = name;
		this.pass = pass;
		this.phone = phone;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPfimg() {
		return pfimg;
	}

	public void setPfimg(String pfimg) {
		this.pfimg = pfimg;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pfimg=" + pfimg + ", nick=" + nick + ", name=" + name + ", pass=" + pass
				+ ", phone=" + phone + "]";
	}
	
	
	
	

}
