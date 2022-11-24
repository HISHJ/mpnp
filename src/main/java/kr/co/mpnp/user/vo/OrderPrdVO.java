package kr.co.mpnp.user.vo;

import java.util.Arrays;

//설빈
public class OrderPrdVO {
	
	//장바구니에서 넘어올 값 (view로부터 전달받을 값)
 private String prdName, prdId, cartId;
 private int prdCnt, prdPrice;

 //만들어낼 값
 private int totalPrice,totalProductPrice;

 
 
public OrderPrdVO() {

}




public OrderPrdVO(String prdName, String prdId, String cartId, int prdCnt, int prdPrice, int totalPrice,
		int totalProductPrice) {
	this.prdName = prdName;
	this.prdId = prdId;
	this.cartId = cartId;
	this.prdCnt = prdCnt;
	this.prdPrice = prdPrice;
	this.totalPrice = totalPrice;
	this.totalProductPrice = totalProductPrice;
}



//선택 상품의 총 가격 구하는 메서드
//상품의 가격, 갯수 [할인율을 세션에 저장해둔 상태에서 총 가격을 계산한 후 그에 대한 할인가까지 계산을 하고 넘겨야 하려나?]
//아니면 주문페이지에서 할 수 있나?
public int initSaleTotal() {
	
	return this.totalPrice = this.prdPrice *this.prdCnt ;
	
}

//상품끼리의 합을 구하는 메서드
public int totalProduct() {
	return this.totalProductPrice = this.totalPrice++;
}




public String getPrdName() {
	return prdName;
}




public void setPrdName(String prdName) {
	this.prdName = prdName;
}




public String getPrdId() {
	return prdId;
}




public void setPrdId(String prdId) {
	this.prdId = prdId;
}




public String getCartId() {
	return cartId;
}




public void setCartId(String cartId) {
	this.cartId = cartId;
}




public int getPrdCnt() {
	return prdCnt;
}




public void setPrdCnt(int prdCnt) {
	this.prdCnt = prdCnt;
}




public int getPrdPrice() {
	return prdPrice;
}




public void setPrdPrice(int prdPrice) {
	this.prdPrice = prdPrice;
}




public int getTotalPrice() {
	return totalPrice;
}




public void setTotalPrice(int totalPrice) {
	this.totalPrice = totalPrice;
}




public int getTotalProductPrice() {
	return totalProductPrice;
}




public int  setTotalProductPrice(int totalProductPrice) {
	return this.totalProductPrice = totalProductPrice;
}




@Override
public String toString() {
	return "OrderPrdVO [prdName=" + prdName + ", prdId=" + prdId + ", cartId=" + cartId + ", prdCnt=" + prdCnt
			+ ", prdPrice=" + prdPrice + ", totalPrice=" + totalPrice + ", totalProductPrice=" + totalProductPrice
			+ "]";
}














 
}
