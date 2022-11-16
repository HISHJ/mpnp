package kr.co.mpnp.admin.vo;

import java.sql.Date;
import java.util.List;

public class AdminProductVO2 {

	private String productid,name;
	private int price;


	public AdminProductVO2() {

	}


	public AdminProductVO2(String productid, String name, int price) {
		super();
		this.productid = productid;
		this.name = name;
		this.price = price;
	}


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


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "AdminProductVO2 [productid=" + productid + ", name=" + name + ", price=" + price + "]";
	}

	
}//class
