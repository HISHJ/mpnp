package kr.co.mpnp.user.domain;

public class MainDomain {

	/*- productId(��ǰ�ڵ�), productName(��ǰ��),thImg(��ǰ�̹���), price(��ǰ����) , reviewCnt(�ıⰹ��) ,starScoreAvg(�������?) Ŀ�Խõ�*/
	
	private String productid,productname,thimg,mainid,subid,reviewid;
	private int price,reviewcnt,star_score;
	private double starScoreAvg;
	public MainDomain() {
		
	}
	public MainDomain(String productid, String productname, String thimg, String mainid, String subid, String reviewid,
			int price, int reviewcnt, int star_score, double starScoreAvg) {
	
		this.productid = productid;
		this.productname = productname;
		this.thimg = thimg;
		this.mainid = mainid;
		this.subid = subid;
		this.reviewid = reviewid;
		this.price = price;
		this.reviewcnt = reviewcnt;
		this.star_score = star_score;
		this.starScoreAvg = starScoreAvg;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getThimg() {
		return thimg;
	}
	public void setThimg(String thimg) {
		this.thimg = thimg;
	}
	public String getMainid() {
		return mainid;
	}
	public void setMainid(String mainid) {
		this.mainid = mainid;
	}
	public String getSubid() {
		return subid;
	}
	public void setSubid(String subid) {
		this.subid = subid;
	}
	public String getReviewid() {
		return reviewid;
	}
	public void setReviewid(String reviewid) {
		this.reviewid = reviewid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getReviewcnt() {
		return reviewcnt;
	}
	public void setReviewcnt(int reviewcnt) {
		this.reviewcnt = reviewcnt;
	}
	public int getStar_score() {
		return star_score;
	}
	public void setStar_score(int star_score) {
		this.star_score = star_score;
	}
	public double getStarScoreAvg() {
		return starScoreAvg;
	}
	public void setStarScoreAvg(double starScoreAvg) {
		this.starScoreAvg = starScoreAvg;
	}
	@Override
	public String toString() {
		return "MainDomain [productid=" + productid + ", productname=" + productname + ", thimg=" + thimg + ", mainid="
				+ mainid + ", subid=" + subid + ", reviewid=" + reviewid + ", price=" + price + ", reviewcnt="
				+ reviewcnt + ", star_score=" + star_score + ", starScoreAvg=" + starScoreAvg + "]";
	}

	
	
}//class