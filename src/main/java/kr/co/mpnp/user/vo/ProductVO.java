package kr.co.mpnp.user.vo;

import java.sql.Date;

public class ProductVO {




private String id,productid,productname,thimg,status,sub_id,subname,mainid,mainname;
private int price,totalcount,pageFlag=1;
private Date cartdate, wishdate;
public ProductVO() {
	
}
public ProductVO(String id, String productid, String productname, String thimg, String status, String sub_id,
		String subname, String mainid, String mainname, int price, int totalcount, int pageFlag, Date cartdate,
		Date wishdate) {

	this.id = id;
	this.productid = productid;
	this.productname = productname;
	this.thimg = thimg;
	this.status = status;
	this.sub_id = sub_id;
	this.subname = subname;
	this.mainid = mainid;
	this.mainname = mainname;
	this.price = price;
	this.totalcount = totalcount;
	this.pageFlag = pageFlag;
	this.cartdate = cartdate;
	this.wishdate = wishdate;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getProductid() {
	return productid;
}
public void setProductid(String productid) {
	this.productid = productid;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public String getThimg() {
	return thimg;
}
public void setThimg(String thimg) {
	this.thimg = thimg;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getsub_id() {
	return sub_id;
}
public void setsub_id(String sub_id) {
	this.sub_id = sub_id;
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
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getTotalcount() {
	return totalcount;
}
public void setTotalcount(int totalcount) {
	this.totalcount = totalcount;
}
public int getPageFlag() {
	return pageFlag;
}
public void setPageFlag(int pageFlag) {
	this.pageFlag = pageFlag;
}
public Date getCartdate() {
	return cartdate;
}
public void setCartdate(Date cartdate) {
	this.cartdate = cartdate;
}
public Date getWishdate() {
	return wishdate;
}
public void setWishdate(Date wishdate) {
	this.wishdate = wishdate;
}
@Override
public String toString() {
	return "ProductVO [id=" + id + ", productid=" + productid + ", productname=" + productname + ", thimg=" + thimg
			+ ", status=" + status + ", sub_id=" + sub_id + ", subname=" + subname + ", mainid=" + mainid + ", mainname="
			+ mainname + ", price=" + price + ", totalcount=" + totalcount + ", pageFlag=" + pageFlag + ", cartdate="
			+ cartdate + ", wishdate=" + wishdate + "]";
}






}
