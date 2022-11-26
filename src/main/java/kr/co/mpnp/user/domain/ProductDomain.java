package kr.co.mpnp.user.domain;

import java.sql.Date;

public class ProductDomain {

	private String productid,productname,thimg,infoimg,sub_id,status,product_imgid,prdimg;
	private int price,reviewcnt;
	private double staravg;
	private Date inputdate;
	public ProductDomain() {
	
	}
	public ProductDomain(String productid, String productname, String thimg, String infoimg, String sub_id,
			String status, String product_imgid, String prdimg, int price, int reviewcnt, double staravg,
			Date inputdate) {

		this.productid = productid;
		this.productname = productname;
		this.thimg = thimg;
		this.infoimg = infoimg;
		this.sub_id = sub_id;
		this.status = status;
		this.product_imgid = product_imgid;
		this.prdimg = prdimg;
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
	public String getSub_id() {
		return sub_id;
	}
	public void setSub_id(String sub_id) {
		this.sub_id = sub_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getProduct_imgid() {
		return product_imgid;
	}
	public void setProduct_imgid(String product_imgid) {
		this.product_imgid = product_imgid;
	}
	public String getPrdimg() {
		return prdimg;
	}
	public void setPrdimg(String prdimg) {
		this.prdimg = prdimg;
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
		return "ProductDomain [productid=" + productid + ", productname=" + productname + ", thimg=" + thimg
				+ ", infoimg=" + infoimg + ", sub_id=" + sub_id + ", status=" + status + ", product_imgid="
				+ product_imgid + ", prdimg=" + prdimg + ", price=" + price + ", reviewcnt=" + reviewcnt + ", staravg="
				+ staravg + ", inputdate=" + inputdate + ", getProductid()=" + getProductid() + ", getProductname()="
				+ getProductname() + ", getThimg()=" + getThimg() + ", getInfoimg()=" + getInfoimg() + ", getSub_id()="
				+ getSub_id() + ", getStatus()=" + getStatus() + ", getProduct_imgid()=" + getProduct_imgid()
				+ ", getPrdimg()=" + getPrdimg() + ", getPrice()=" + getPrice() + ", getReviewcnt()=" + getReviewcnt()
				+ ", getStaravg()=" + getStaravg() + ", getInputdate()=" + getInputdate() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	


	
	
}//class
