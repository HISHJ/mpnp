package kr.co.mpnp.admin.domain;

import java.sql.Date;
import java.util.List;

public class AdminProductDomain {

	
	private String productid,subid,mainid,subname,mainname,productname,thimg,infoimg,status,product_imgid,prdImg1;
	private int price;
	private List<String> prdImg;
	private Date inputdate;
	public AdminProductDomain() {
	
	}
	public AdminProductDomain(String productid, String subid, String mainid, String subname, String mainname,
			String productname, String thimg, String infoimg, String status, String product_imgid, String prdImg1,
			int price, List<String> prdImg, Date inputdate) {
	
		this.productid = productid;
		this.subid = subid;
		this.mainid = mainid;
		this.subname = subname;
		this.mainname = mainname;
		this.productname = productname;
		this.thimg = thimg;
		this.infoimg = infoimg;
		this.status = status;
		this.product_imgid = product_imgid;
		this.prdImg1 = prdImg1;
		this.price = price;
		this.prdImg = prdImg;
		this.inputdate = inputdate;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getSubid() {
		return subid;
	}
	public void setSubid(String subid) {
		this.subid = subid;
	}
	public String getMainid() {
		return mainid;
	}
	public void setMainid(String mainid) {
		this.mainid = mainid;
	}
	public String getSubname() {
		return subname;
	}
	public void setSubname(String subname) {
		this.subname = subname;
	}
	public String getMainname() {
		return mainname;
	}
	public void setMainname(String mainname) {
		this.mainname = mainname;
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
	public String getProduct_imgid() {
		return product_imgid;
	}
	public void setProduct_imgid(String product_imgid) {
		this.product_imgid = product_imgid;
	}
	public String getPrdImg1() {
		return prdImg1;
	}
	public void setPrdImg1(String prdImg1) {
		this.prdImg1 = prdImg1;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public List<String> getPrdImg() {
		return prdImg;
	}
	public void setPrdImg(List<String> prdImg) {
		this.prdImg = prdImg;
	}
	public Date getInputdate() {
		return inputdate;
	}
	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}
	@Override
	public String toString() {
		return "AdminProductDomain [productid=" + productid + ", subid=" + subid + ", mainid=" + mainid + ", subname="
				+ subname + ", mainname=" + mainname + ", productname=" + productname + ", thimg=" + thimg
				+ ", infoimg=" + infoimg + ", status=" + status + ", product_imgid=" + product_imgid + ", prdImg1="
				+ prdImg1 + ", price=" + price + ", prdImg=" + prdImg + ", inputdate=" + inputdate + "]";
	}
	

	
	
}//class
