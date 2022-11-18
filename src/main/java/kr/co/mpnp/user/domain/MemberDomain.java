package kr.co.mpnp.user.domain;

import java.sql.Date;

public class MemberDomain {

	private String id,pfimg,nick,name,phone,gradeid,gradeName;
	private Date inputdate;
	
	public MemberDomain()  {
		
	}

	public MemberDomain(String id, String pfimg, String nick, String name, String phone, String gradeid,
			String gradeName, Date inputdate) {
		this.id = id;
		this.pfimg = pfimg;
		this.nick = nick;
		this.name = name;
		this.phone = phone;
		this.gradeid = gradeid;
		this.gradeName = gradeName;
		this.inputdate = inputdate;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public Date getInputdate() {
		return inputdate;
	}

	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}

	@Override
	public String toString() {
		return "MemberDomain [id=" + id + ", pfimg=" + pfimg + ", nick=" + nick + ", name=" + name + ", phone=" + phone
				+ ", gradeid=" + gradeid + ", gradeName=" + gradeName + ", inputdate=" + inputdate + "]";
	}
	
	
	
}
