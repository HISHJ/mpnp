package kr.co.mpnp.user.vo;

public class ProductReviewVO {
	private String productid;

	public ProductReviewVO() {
		
	}

	public ProductReviewVO(String productid) {
		
		this.productid = productid;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	@Override
	public String toString() {
		return "ProductReviewVO [productid=" + productid + "]";
	}
	
	
	

}
