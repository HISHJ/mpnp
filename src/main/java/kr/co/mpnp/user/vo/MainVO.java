package kr.co.mpnp.user.vo;

public class MainVO {

	private String main_id,productid,orderdetailid,reviewid ;
	private int pageFlag=1;
	/* main_id(대분류코드) , productId(상품코드), orderDetailID(주문상세코드), reviewID(후기코드) */

	public MainVO() {
		
	}

	public MainVO(String main_id, String productid, String orderdetailid, String reviewid, int pageFlag) {
	
		this.main_id = main_id;
		this.productid = productid;
		this.orderdetailid = orderdetailid;
		this.reviewid = reviewid;
		this.pageFlag = pageFlag;
	}

	public String getmain_id() {
		return main_id;
	}

	public void setmain_id(String main_id) {
		this.main_id = main_id;
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
		return "mainVO [main_id=" + main_id + ", productid=" + productid + ", orderdetailid=" + orderdetailid
				+ ", reviewid=" + reviewid + ", pageFlag=" + pageFlag + "]";
	}

	
	
	
}//CLASS
