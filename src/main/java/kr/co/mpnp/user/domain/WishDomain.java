package kr.co.mpnp.user.domain;

import java.sql.Date;

public class WishDomain {

	
	private String productid,name,thimg;
	private int price;
	private Date inputdate;
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getThimg() {
		return thimg;
	}
	public void setThimg(String thimg) {
		this.thimg = thimg;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getInputdate() {
		return inputdate;
	}
	public void setInputdate(Date inputdate) {
		this.inputdate = inputdate;
	}
	@Override
	public String toString() {
		return "WishDomain [productid=" + productid + ", name=" + name + ", thimg=" + thimg + ", price=" + price
				+ ", inputdate=" + inputdate + "]";
	}

}
