package kr.co.mpnp.user.vo;

public class mainVO {

	private String mainid,productid,orderdetailid,reviewid ;
	private int pageFlag=1;
	/* mainId(대분류코드) , productId(상품코드), orderDetailID(주문상세코드), reviewID(후기코드) */

	public mainVO() {
		
	}

	public mainVO(String mainid, String productid, String orderdetailid, String reviewid, int pageFlag) {
	
		this.mainid = mainid;
		this.productid = productid;
		this.orderdetailid = orderdetailid;
		this.reviewid = reviewid;
		this.pageFlag = pageFlag;
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

	public int getPageFlag() {
		return pageFlag;
	}

	public void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
	}

	@Override
	public String toString() {
		return "mainVO [mainid=" + mainid + ", productid=" + productid + ", orderdetailid=" + orderdetailid
				+ ", reviewid=" + reviewid + ", pageFlag=" + pageFlag + "]";
	}

	
	
	
}//CLASS
