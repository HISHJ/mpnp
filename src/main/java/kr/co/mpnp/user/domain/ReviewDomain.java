package kr.co.mpnp.user.domain;

import java.util.Date;
import java.util.List;

public class ReviewDomain {

	private String th_img, name, contents, reviewId ;
	private int price, starScore;
	private Date purchaseDate, writeDate ;
	private List<String> reviewImg;
	public String getTh_img() {
		return th_img;
	}
	public void setTh_img(String th_img) {
		this.th_img = th_img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getReviewId() {
		return reviewId;
	}
	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStarScore() {
		return starScore;
	}
	public void setStarScore(int starScore) {
		this.starScore = starScore;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public List<String> getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(List<String> reviewImg) {
		this.reviewImg = reviewImg;
	}
	@Override
	public String toString() {
		return "ReviewDomain [th_img=" + th_img + ", name=" + name + ", contents=" + contents + ", reviewId=" + reviewId
				+ ", price=" + price + ", starScore=" + starScore + ", purchaseDate=" + purchaseDate + ", writeDate="
				+ writeDate + ", reviewImg=" + reviewImg + "]";
	}
	
	
	
	
}
