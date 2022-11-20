package kr.co.mpnp.admin.domain;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class AdminReviewDomain {

	private String reviewId, nick, contents, productId, reviewImgs;
	private String[] reviewImgArr;
	private int starScore;
	private Date inputDate;
	public String getReviewId() {
		return reviewId;
	}
	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getReviewImgs() {
		return reviewImgs;
	}
	public void setReviewImgs(String reviewImgs) {
		this.reviewImgs = reviewImgs;
	}
	public String[] getReviewImgArr() {
		return reviewImgArr;
	}
	public void setReviewImgArr(String[] reviewImgArr) {
		this.reviewImgArr = reviewImgArr;
	}
	public int getStarScore() {
		return starScore;
	}
	public void setStarScore(int starScore) {
		this.starScore = starScore;
	}
	public Date getInputDate() {
		return inputDate;
	}
	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}
	@Override
	public String toString() {
		return "AdminReviewDomain [reviewId=" + reviewId + ", nick=" + nick + ", contents=" + contents + ", productId="
				+ productId + ", reviewImgs=" + reviewImgs + ", reviewImgArr=" + Arrays.toString(reviewImgArr)
				+ ", starScore=" + starScore + ", inputDate=" + inputDate + "]";
	}
	
	
	
	
}