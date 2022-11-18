package kr.co.mpnp.user.domain;

public class MypageDomain {
	
	private String id,pass,pfimg,nick,name,gradeid,gradeName;
	
	public MypageDomain( ) {
		// TODO Auto-generated constructor stub
	}

	public MypageDomain(String id, String pass, String pfimg, String nick, String name, String gradeid,
			String gradeName) {
		super();
		this.id = id;
		this.pass = pass;
		this.pfimg = pfimg;
		this.nick = nick;
		this.name = name;
		this.gradeid = gradeid;
		this.gradeName = gradeName;
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

	public String getGradeid() {
		return gradeid;
	}

	public void setGradeid(String gradeid) {
		this.gradeid = gradeid;
	}

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	@Override
	public String toString() {
		return "MypageDomain [id=" + id + ", pass=" + pass + ", pfimg=" + pfimg + ", nick=" + nick + ", name=" + name
				+ ", gradeid=" + gradeid + ", gradeName=" + gradeName + "]";
	}
	
	
	
	

}
