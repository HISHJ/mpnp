package kr.co.mpnp.user.vo;

public class ProductCartVO {
	
	private String productid,id;
	private int cartcnt;
	public ProductCartVO() {
		
	}
	public ProductCartVO(String productid, String id, int cartcnt) {
	
		this.productid = productid;
		this.id = id;
		this.cartcnt = cartcnt;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCartcnt() {
		return cartcnt;
	}
	public void setCartcnt(int cartcnt) {
		this.cartcnt = cartcnt;
	}
	@Override
	public String toString() {
		return "ProductCartVO [productid=" + productid + ", id=" + id + ", cartcnt=" + cartcnt + "]";
	}
	
	
	

}
