package kr.co.mpnp.admin.domain;
//¼³ºó
public class AdminOrderPrdDomain {
   private String productName;
   private int price, totalCnt;
public AdminOrderPrdDomain() {
}
public AdminOrderPrdDomain(String productName, int price, int totalCnt) {
	super();
	this.productName = productName;
	this.price = price;
	this.totalCnt = totalCnt;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getTotalCnt() {
	return totalCnt;
}
public void setTotalCnt(int totalCnt) {
	this.totalCnt = totalCnt;
}
@Override
public String toString() {
	return "AdminOrderPrdDomain [productName=" + productName + ", price=" + price + ", totalCnt=" + totalCnt + "]";
}


   
}
