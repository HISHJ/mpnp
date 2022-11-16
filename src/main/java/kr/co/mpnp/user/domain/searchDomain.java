package kr.co.mpnp.user.domain;

public class searchDomain {

	
	private String prdid,thimg,name;
	private int price,reviewCnt;
	private double starscoreAvg;
	public searchDomain() {
	
	}
	public searchDomain(String prdid, String thimg, String name, int price, int reviewCnt, double starscoreAvg) {
	
		this.prdid = prdid;
		this.thimg = thimg;
		this.name = name;
		this.price = price;
		this.reviewCnt = reviewCnt;
		this.starscoreAvg = starscoreAvg;
	}
	public String getPrdid() {
		return prdid;
	}
	public void setPrdid(String prdid) {
		this.prdid = prdid;
	}
	public String getThimg() {
		return thimg;
	}
	public void setThimg(String thimg) {
		this.thimg = thimg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
		return "searchDomain [prdid=" + prdid + ", thimg=" + thimg + ", name=" + name + ", price=" + price
				+ ", reviewCnt=" + reviewCnt + ", starscoreAvg=" + starscoreAvg + "]";
	}
	
	
	
}//class
