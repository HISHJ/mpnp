package kr.co.mpnp.admin.domain;

public class DashMemberDomain {

	private String gradeName, level;
	private int minPrice, maxPrice, memCnt;
	public String getGradeName() {
		return gradeName;
	}
	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
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
		return "DashMemberDomain [gradeName=" + gradeName + ", level=" + level + ", minPrice=" + minPrice
				+ ", maxPrice=" + maxPrice + ", memCnt=" + memCnt + "]";
	}
	
	
	
}
