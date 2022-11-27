package kr.co.mpnp.admin.domain;

public class DashCategoryDomain {

	private String subId,subName,salesCnt;

	public String getSubId() {
		return subId;
	}

	public void setSubId(String subId) {
		this.subId = subId;
	}

	public String getSubName() {
		return subName;
	}

	public void setSubName(String subName) {
		this.subName = subName;
	}

	public String getSalesCnt() {
		return salesCnt;
	}

	public void setSalesCnt(String salesCnt) {
		this.salesCnt = salesCnt;
	}

	@Override
	public String toString() {
		return "DashCategoryDomain [subId=" + subId + ", subName=" + subName + ", salesCnt=" + salesCnt + "]";
	}
	
}
