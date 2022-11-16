package kr.co.mpnp.user.domain;

import java.sql.Date;

public class ProductDomain {

	private String productid,productname,thimg,infoimg,status;
	private int price,reviewcnt;
	private double staravg;
	private Date inputdate;
	public ProductDomain() {
	
	}
	public ProductDomain(String productid, String productname, String thimg, String infoimg, String status, int price,
			int reviewcnt, double staravg, Date inputdate) {
		
		this.productid = productid;
		this.productname = productname;
		this.thimg = thimg;
		this.infoimg = infoimg;
		this.status = status;
		this.price = price;
		this.reviewcnt = reviewcnt;
		this.staravg = staravg;
		this.inputdate = inputdate;
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
	public String getInfoimg() {
		return infoimg;
	}
	public void setInfoimg(String infoimg) {
		this.infoimg = infoimg;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getReviewcnt() {
		return reviewcnt;
	}
	public void setReviewcnt(int reviewcnt) {
		this.reviewcnt = reviewcnt;
	}
	public double getStaravg() {
		return staravg;
	}
	public void setStaravg(double staravg) {
		this.staravg = staravg;
	}
	public Date getInputdate() {
		return inputdate;
	}
	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}
	@Override
	public String toString() {
		return "productdomain [productid=" + productid + ", productname=" + productname + ", thimg=" + thimg
				+ ", infoimg=" + infoimg + ", status=" + status + ", price=" + price + ", reviewcnt=" + reviewcnt
				+ ", staravg=" + staravg + ", inputdate=" + inputdate + "]";
	}


	
	
}//class
