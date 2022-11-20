package kr.co.mpnp.user.domain;

import java.sql.Date;

public class CartDomain {

	private String cartId, productId, thImg, productName;
	private int productPrice, actualPrice, totalCnt;
	private Date inputDate;
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getThImg() {
		return thImg;
	}
	public void setThImg(String thImg) {
		this.thImg = thImg;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getActualPrice() {
		return actualPrice;
	}
	public void setActualPrice(int actualPrice) {
		this.actualPrice = actualPrice;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public Date getInputDate() {
		return inputDate;
	}
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}
	@Override
	public String toString() {
		return "CartDomain [cartId=" + cartId + ", productId=" + productId + ", thImg=" + thImg + ", productName="
				+ productName + ", productPrice=" + productPrice + ", actualPrice=" + actualPrice + ", totalCnt="
				+ totalCnt + ", inputDate=" + inputDate + "]";
	}
	
	
	
}
