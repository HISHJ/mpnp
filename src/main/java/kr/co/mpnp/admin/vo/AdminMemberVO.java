package kr.co.mpnp.admin.vo;

public class AdminMemberVO {
	private String id,nick,status,gradeid,findSDate,findEDate;
	
	public AdminMemberVO() {

	}

	public AdminMemberVO(String id, String nick, String status, String gradeid, String findSDate, String findEDate) {
		super();
		this.id = id;
		this.nick = nick;
		this.status = status;
		this.gradeid = gradeid;
		this.findSDate = findSDate;
		this.findEDate = findEDate;
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

	public String getFindSDate() {
		return findSDate;
	}

	public void setFindSDate(String findSDate) {
		this.findSDate = findSDate;
	}

	public String getFindEDate() {
		return findEDate;
	}

	public void setFindEDate(String findEDate) {
		this.findEDate = findEDate;
	}

	@Override
	public String toString() {
		return "AdminMemberVO [id=" + id + ", nick=" + nick + ", status=" + status + ", gradeid=" + gradeid
				+ ", findSDate=" + findSDate + ", findEDate=" + findEDate + "]";
	}
	

}//class
