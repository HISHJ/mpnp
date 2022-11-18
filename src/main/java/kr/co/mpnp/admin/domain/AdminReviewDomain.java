package kr.co.mpnp.admin.domain;

import java.util.Date;
import java.util.List;

public class AdminReviewDomain {

	private String reviewId, nick, contents, productId;
	private List<String> reviewImgs;
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
	public List<String> getReviewImgs() {
		return reviewImgs;
	}
	public void setReviewImgs(List<String> reviewImgs) {
		this.reviewImgs = reviewImgs;
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
				+ productId + ", reviewImgs=" + reviewImgs + ", starScore=" + starScore + ", inputDate=" + inputDate
				+ "]";
	}
	
	
	
	
}