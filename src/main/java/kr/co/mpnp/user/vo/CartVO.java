package kr.co.mpnp.user.vo;

public class CartVO {

	private String memberId, productId, cartId;
	private int cnt;
	
	public CartVO() {
	}

	public CartVO(String memberId, String productId, String cartId, int cnt) {
		this.memberId = memberId;
		this.productId = productId;
		this.cartId = cartId;
		this.cnt = cnt;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "CartVO [memberId=" + memberId + ", productId=" + productId + ", cartId=" + cartId + ", cnt=" + cnt
				+ "]";
	}

	
	
}
