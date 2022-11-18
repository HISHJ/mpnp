package kr.co.mpnp.admin.domain;

import java.sql.Date;


public class AdminMemberDomain {
	
	private String id,nick,name,phone,status,gradeid,gradeName;
	private  Date inputdate;
	
	public AdminMemberDomain() {
	}

	public AdminMemberDomain(String id, String nick, String name, String phone, String status, String gradeid,
			String gradeName, Date inputdate) {
		super();
		this.id = id;
		this.nick = nick;
		this.name = name;
		this.phone = phone;
		this.status = status;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
		return "AdminMemebrDomain [id=" + id + ", nick=" + nick + ", name=" + name + ", phone=" + phone + ", status="
				+ status + ", gradeid=" + gradeid + ", gradeName=" + gradeName + ", inputdate=" + inputdate + "]";
	}

	

}
