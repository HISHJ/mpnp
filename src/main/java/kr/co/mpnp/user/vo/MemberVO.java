package kr.co.mpnp.user.vo;

import java.sql.Date;

public class MemberVO {
	private String id,pfimg,nick,name,pass,phone,status,gradeid;
	private Date inputdate;
	
	public MemberVO() {
		
	}

	public MemberVO(String id, String pfimg, String nick, String name, String pass, String phone, String status,
			String gradeid, Date inputdate) {
		this.id = id;
		this.pfimg = pfimg;
		this.nick = nick;
		this.name = name;
		this.pass = pass;
		this.phone = phone;
		this.status = status;
		this.gradeid = gradeid;
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

	public Date getInputdate() {
		return inputdate;
	}

	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pfimg=" + pfimg + ", nick=" + nick + ", name=" + name + ", pass=" + pass
				+ ", phone=" + phone + ", status=" + status + ", gradeid=" + gradeid + ", inputdate=" + inputdate + "]";
	}
	

}//class
