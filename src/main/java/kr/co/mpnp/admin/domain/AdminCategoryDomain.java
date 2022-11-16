package kr.co.mpnp.admin.domain;

public class AdminCategoryDomain {
	
	private String subid,subname,mainid,mainname;

	public String getSubid() {
		return subid;
	}

	public void setSubid(String subid) {
		this.subid = subid;
	}

	public String getSubname() {
		return subname;
	}

	public void setSubname(String subname) {
		this.subname = subname;
	}

	public String getMainid() {
		return mainid;
	}

	public void setMainid(String mainid) {
		this.mainid = mainid;
	}

	public String getMainname() {
		return mainname;
	}

	public void setMainname(String mainname) {
		this.mainname = mainname;
	}

	@Override
	public String toString() {
		return "AdminCategoryDomain [subid=" + subid + ", subname=" + subname + ", mainid=" + mainid + ", mainname="
				+ mainname + "]";
	}
	

}
