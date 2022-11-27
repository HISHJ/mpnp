package kr.co.mpnp.user.domain;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class ReviewDomain {

	private String thImg, name, contents, reviewId, orderDetailId, reviewImgs ;
	private int price, starScore;
	private Date purchaseDate, writeDate ;
	private String[] reviewImg;
	//private List<String> reviewImg;
	public String getThImg() {
		return thImg;
	}
	public void setThImg(String thImg) {
		this.thImg = thImg;
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
	public String getOrderDetailId() {
		return orderDetailId;
	}
	public void setOrderDetailId(String orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	public String getReviewImgs() {
		return reviewImgs;
	}
	public void setReviewImgs(String reviewImgs) {
		this.reviewImgs = reviewImgs;
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
	
	public String[] getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String[] reviewImg) {
		this.reviewImg = reviewImg;
	}
	@Override
	public String toString() {
		return "ReviewDomain [thImg=" + thImg + ", name=" + name + ", contents=" + contents + ", reviewId=" + reviewId
				+ ", orderDetailId=" + orderDetailId + ", reviewImgs=" + reviewImgs + ", price=" + price
				+ ", starScore=" + starScore + ", purchaseDate=" + purchaseDate + ", writeDate=" + writeDate
				+ ", reviewImg=" + Arrays.toString(reviewImg) + "]";
	}
	
	
}
