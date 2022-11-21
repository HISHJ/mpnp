package kr.co.mpnp.user.domain;

public class ProductYSBDomain {
	private String prdId,prdName;
	private int price;
	
	
	
	
	public ProductYSBDomain() {
	}

	public ProductYSBDomain(String prdId, String prdName, int price) {
		this.prdId = prdId;
		this.prdName = prdName;
		this.price = price;
	}

	public String getPrdId() {
		return prdId;
	}

	public void setPrdId(String prdId) {
		this.prdId = prdId;
	}

	public String getPrdName() {
		return prdName;
	}

	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "ProductYSBDomain [prdId=" + prdId + ", prdName=" + prdName + ", price=" + price + "]";
	}
	
	

	
	
}
