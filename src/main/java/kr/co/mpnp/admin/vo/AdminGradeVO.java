package kr.co.mpnp.admin.vo;

public class AdminGradeVO {
  private String gradeId, gradeName, level, gradeInfo,discountRate_, minPrice_, maxPrice_;
  private int discountRate, minPrice, maxPrice;

  public AdminGradeVO() {
}
  
  
  

public AdminGradeVO(String gradeId, String gradeName, String level, String gradeInfo, String discountRate_,
		String minPrice_, String maxPrice_, int discountRate, int minPrice, int maxPrice) {
	super();
	this.gradeId = gradeId;
	this.gradeName = gradeName;
	this.level = level;
	this.gradeInfo = gradeInfo;
	this.discountRate_ = discountRate_;
	this.minPrice_ = minPrice_;
	this.maxPrice_ = maxPrice_;
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




public String getDiscountRate_() {
	return discountRate_;
}




public void setDiscountRate_(String discountRate_) {
	this.discountRate_ = discountRate_;
}




public String getMinPrice_() {
	return minPrice_;
}




public void setMinPrice_(String minPrice_) {
	this.minPrice_ = minPrice_;
}




public String getMaxPrice_() {
	return maxPrice_;
}




public void setMaxPrice_(String maxPrice_) {
	this.maxPrice_ = maxPrice_;
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
			+ gradeInfo + ", discountRate_=" + discountRate_ + ", minPrice_=" + minPrice_ + ", maxPrice_=" + maxPrice_
			+ ", discountRate=" + discountRate + ", minPrice=" + minPrice + ", maxPrice=" + maxPrice + ", getClass()="
			+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
}


  
}
