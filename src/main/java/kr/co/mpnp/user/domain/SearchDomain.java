package kr.co.mpnp.user.domain;

public class SearchDomain {

	
	private String productid,thimg,productname,status;
	private int price,reviewCnt;
	private double starscoreAvg;
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getThimg() {
		return thimg;
	}
	public void setThimg(String thimg) {
		this.thimg = thimg;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getReviewCnt() {
		return reviewCnt;
	}
	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}
	public double getStarscoreAvg() {
		return starscoreAvg;
	}
	public void setStarscoreAvg(double starscoreAvg) {
		this.starscoreAvg = starscoreAvg;
	}
	@Override
	public String toString() {
		return "SearchDomain [productid=" + productid + ", thimg=" + thimg + ", productname=" + productname
				+ ", status=" + status + ", price=" + price + ", reviewCnt=" + reviewCnt + ", starscoreAvg="
				+ starscoreAvg + "]";
	}
	
	
	
	
}//class
