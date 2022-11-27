package kr.co.mpnp.admin.domain;

public class DashMemberDomain {

	private String gradeName, lev;
	private int minPrice, maxPrice, memCnt;
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	public String getLev() {
		return lev;
	}
	public void setLev(String lev) {
		this.lev = lev;
	}
	public int getMinPrice() {
		return minPrice;
	}
	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}
	public int getMaxPrice() {
		return maxPrice;
	}
	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}
	public int getMemCnt() {
		return memCnt;
	}
	public void setMemCnt(int memCnt) {
		this.memCnt = memCnt;
	}
	@Override
	public String toString() {
		return "DashMemberDomain [gradeName=" + gradeName + ", lev=" + lev + ", minPrice=" + minPrice + ", maxPrice="
				+ maxPrice + ", memCnt=" + memCnt + "]";
	}
	
	
	
}
