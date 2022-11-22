package kr.co.mpnp.user.vo;

public class WishListVO {
	private String id,productid;

	public WishListVO() {
	
	}

	public WishListVO(String id, String productid) {
	
		this.id = id;
		this.productid = productid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	@Override
	public String toString() {
		return "WishListVO [id=" + id + ", productid=" + productid + "]";
	}
	
	

}
