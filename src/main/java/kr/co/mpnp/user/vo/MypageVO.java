package kr.co.mpnp.user.vo;

public class MypageVO {
	private String id,pass,name,phone,nick,pfimg,gradeid;
	
	public MypageVO() {
	}

	public MypageVO(String id, String pass, String name, String phone, String nick, String pfimg, String gradeid) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.phone = phone;
		this.nick = nick;
		this.pfimg = pfimg;
		this.gradeid = gradeid;
	}

	public String getId() {
		return id;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getPfimg() {
		return pfimg;
	}

	public void setPfimg(String pfimg) {
		this.pfimg = pfimg;
	}

	public String getGradeid() {
		return gradeid;
	}

	public void setGradeid(String gradeid) {
		this.gradeid = gradeid;
	}

	@Override
	public String toString() {
		return "MypageVO [id=" + id + ", pass=" + pass + ", name=" + name + ", phone=" + phone + ", nick=" + nick
				+ ", pfimg=" + pfimg + ", gradeid=" + gradeid + "]";
	}
	
	

}
