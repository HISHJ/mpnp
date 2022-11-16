package kr.co.mpnp.admin.vo;

import java.sql.Date;
import java.util.List;

public class AdminProductVO {

	private String productid,subid,mainid,subname,mainname,name,thimg,infoimg,status;
	private int price;
	private List<String> prdimg;
	private Date inputdate;
	public AdminProductVO() {
	
	}
	public AdminProductVO(String productid, String subid, String mainid, String subname, String mainname,
			String name, String thimg, String infoimg, String status, int price, List<String> prdimg,
			Date inputdate) {

		this.productid = productid;
		this.subid = subid;
		this.mainid = mainid;
		this.subname = subname;
		this.mainname = mainname;
		this.name = name;
		this.thimg = thimg;
		this.infoimg = infoimg;
		this.status = status;
		this.price = price;
		this.prdimg = prdimg;
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
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
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
	public List<String> getPrdimg() {
		return prdimg;
	}
	public void setPrdimg(List<String> prdimg) {
		this.prdimg = prdimg;
	}
	public Date getInputdate() {
		return inputdate;
	}
	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}
	@Override
	public String toString() {
		return "AdminProductVO [productid=" + productid + ", subid=" + subid + ", mainid=" + mainid + ", subname="
				+ subname + ", mainname=" + mainname + ", name=" + name + ", thimg=" + thimg
				+ ", infoimg=" + infoimg + ", status=" + status + ", price=" + price + ", prdimg=" + prdimg
				+ ", inputdate=" + inputdate + "]";
	}
	
	
}//class
