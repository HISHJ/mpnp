package kr.co.mpnp.admin.vo;

public class AdminGradeVO {
  private String gradeId, gradeName, level, gradeInfo;
  private int discountRate, minPrice, maxPrice;

  public AdminGradeVO() {
}
public AdminGradeVO(String gradeId, String gradeName, String level, String gradeInfo, int discountRate, int minPrice,
		int maxPrice) {
	super();
	this.gradeId = gradeId;
	this.gradeName = gradeName;
	this.level = level;
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
public String getLevel() {
	return level;
}
public void setLevel(String level) {
	this.level = level;
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
	return "AdminGradeVO [gradeId=" + gradeId + ", gradeName=" + gradeName + ", level=" + level + ", gradeInfo="
			+ gradeInfo + ", discountRate=" + discountRate + ", minPrice=" + minPrice + ", maxPrice=" + maxPrice + "]";
}




  
  
}
