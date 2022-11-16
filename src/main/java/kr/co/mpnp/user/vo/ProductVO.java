package kr.co.mpnp.user.vo;

import java.sql.Date;

public class ProductVO {




private String id,productid,productname,thimg,status,subid,subname,mainid,mainname;
private int price,totalcount,totalpage,currentpage,startnum,endnum,pagescale;
private Date cartdate, wishdate;
public ProductVO() {
	
}
public ProductVO(String id, String productid, String productname, String thimg, String status, String subid,
		String subname, String mainid, String mainname, int price, int totalcount, int totalpage, int currentpage,
		int startnum, int endnum, int pagescale, Date cartdate, Date wishdate) {
	
	this.id = id;
	this.productid = productid;
	this.productname = productname;
	this.thimg = thimg;
	this.status = status;
	this.subid = subid;
	this.subname = subname;
	this.mainid = mainid;
	this.mainname = mainname;
	this.price = price;
	this.totalcount = totalcount;
	this.totalpage = totalpage;
	this.currentpage = currentpage;
	this.startnum = startnum;
	this.endnum = endnum;
	this.pagescale = pagescale;
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
public int getTotalpage() {
	return totalpage;
}
public void setTotalpage(int totalpage) {
	this.totalpage = totalpage;
}
public int getCurrentpage() {
	return currentpage;
}
public void setCurrentpage(int currentpage) {
	this.currentpage = currentpage;
}
public int getStartnum() {
	return startnum;
}
public void setStartnum(int startnum) {
	this.startnum = startnum;
}
public int getEndnum() {
	return endnum;
}
public void setEndnum(int endnum) {
	this.endnum = endnum;
}
public int getPagescale() {
	return pagescale;
}
public void setPagescale(int pagescale) {
	this.pagescale = pagescale;
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
			+ ", status=" + status + ", subid=" + subid + ", subname=" + subname + ", mainid=" + mainid + ", mainname="
			+ mainname + ", price=" + price + ", totalcount=" + totalcount + ", totalpage=" + totalpage
			+ ", currentpage=" + currentpage + ", startnum=" + startnum + ", endnum=" + endnum + ", pagescale="
			+ pagescale + ", cartdate=" + cartdate + ", wishdate=" + wishdate + "]";
}





}
