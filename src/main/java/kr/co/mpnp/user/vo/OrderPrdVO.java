package kr.co.mpnp.user.vo;

import java.util.Arrays;

//?„¤ë¹?
public class OrderPrdVO {
	
   private String[] prdName, prdId, cartId,prdCnt, prdPrice;
  // private int prdCnt, prdPrice;

   
   
public OrderPrdVO() {

}





public OrderPrdVO(String[] prdName, String[] prdId, String[] cartId, String[] prdCnt, String[] prdPrice) {

	this.prdName = prdName;
	this.prdId = prdId;
	this.cartId = cartId;
	this.prdCnt = prdCnt;
	this.prdPrice = prdPrice;
}





public String[] getPrdName() {
	return prdName;
}



public void setPrdName(String[] prdName) {
	this.prdName = prdName;
}



public String[] getPrdId() {
	return prdId;
}



public void setPrdId(String[] prdId) {
	this.prdId = prdId;
}



public String[] getCartId() {
	return cartId;
}



public void setCartId(String[] cartId) {
	this.cartId = cartId;
}



public String[] getPrdCnt() {
	return prdCnt;
}



public void setPrdCnt(String[] prdCnt) {
	this.prdCnt = prdCnt;
}



public String[] getPrdPrice() {
	return prdPrice;
}



public void setPrdPrice(String[] prdPrice) {
	this.prdPrice = prdPrice;
}



@Override
public String toString() {
	return "OrderPrdVO [prdName=" + Arrays.toString(prdName) + ", prdId=" + Arrays.toString(prdId) + ", cartId="
			+ Arrays.toString(cartId) + ", prdCnt=" + Arrays.toString(prdCnt) + ", prdPrice="
			+ Arrays.toString(prdPrice) + "]";
}




   
}
