package kr.co.mpnp.user.vo;

public class mainVO {

	private String mainid,productid,orderdetailid,reviewid ;
	/* mainId(대분류코드) , productId(상품코드), orderDetailID(주문상세코드), reviewID(후기코드) */

	public mainVO() {
		
	}
	public mainVO(String mainid, String productid, String orderdetailid, String reviewid) {
	
		this.mainid = mainid;
		this.productid = productid;
		this.orderdetailid = orderdetailid;
		this.reviewid = reviewid;
	}
	public String getMainid() {
		return mainid;
	}
	public void setMainid(String mainid) {
		this.mainid = mainid;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getOrderdetailid() {
		return orderdetailid;
	}
	public void setOrderdetailid(String orderdetailid) {
		this.orderdetailid = orderdetailid;
	}
	public String getReviewid() {
		return reviewid;
	}
	public void setReviewid(String reviewid) {
		this.reviewid = reviewid;
	}
	@Override
	public String toString() {
		return "mainVO [mainid=" + mainid + ", productid=" + productid + ", orderdetailid=" + orderdetailid
				+ ", reviewid=" + reviewid + "]";
	}
	
	
	
}//CLASS
