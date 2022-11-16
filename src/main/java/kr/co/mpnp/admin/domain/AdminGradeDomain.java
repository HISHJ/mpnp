package kr.co.mpnp.admin.domain;

public class AdminGradeDomain {
	//¼³ºó
  private String gradeId, gradeName, gradeLevel, gradeInfo;
  private int discountRate, minPrice, maxPrice;
public AdminGradeDomain() {
}
public AdminGradeDomain(String gradeId, String gradeName, String gradeLevel, String gradeInfo, int discountRate,
		int minPrice, int maxPrice) {
	super();
	this.gradeId = gradeId;
	this.gradeName = gradeName;
	this.gradeLevel = gradeLevel;
	this.gradeInfo = gradeInfo;
	this.discountRate = discountRate;
	this.minPrice = minPrice;
	this.maxPrice = maxPrice;
}
public String getGradeId() {
	return gradeId;
}
public void setGradeId(String gradeId) {
	this.gradeId = gradeId;
}
public String getGradeName() {
	return gradeName;
}
public void setGradeName(String gradeName) {
	this.gradeName = gradeName;
}
public String getgradeLevel() {
	return gradeLevel;
}
public void setgradeLevel(String gradeLevel) {
	this.gradeLevel = gradeLevel;
}
public String getGradeInfo() {
	return gradeInfo;
}
public void setGradeInfo(String gradeInfo) {
	this.gradeInfo = gradeInfo;
}
public int getDiscountRate() {
	return discountRate;
}
public void setDiscountRate(int discountRate) {
	this.discountRate = discountRate;
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
@Override
public String toString() {
	return "AdminGradeDomain [gradeId=" + gradeId + ", gradeName=" + gradeName + ", gradeLevel=" + gradeLevel + ", gradeInfo="
			+ gradeInfo + ", discountRate=" + discountRate + ", minPrice=" + minPrice + ", maxPrice=" + maxPrice + "]";
}
  
  
}
