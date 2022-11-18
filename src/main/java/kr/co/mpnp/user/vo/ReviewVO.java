package kr.co.mpnp.user.vo;

import java.util.List;

public class ReviewVO {
	private String id, status, reviewChk, contents, orderDetailId, reviewId;
	private int starScore ;
	private List<String> reviewImg ;
	
	public ReviewVO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewVO(String id, String status, String reviewChk, String contents, String orderDetailId, String reviewId,
			int starScore, List<String> reviewImg) {
		this.id = id;
		this.status = status;
		this.reviewChk = reviewChk;
		this.contents = contents;
		this.orderDetailId = orderDetailId;
		this.reviewId = reviewId;
		this.starScore = starScore;
		this.reviewImg = reviewImg;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReviewChk() {
		return reviewChk;
	}

	public void setReviewChk(String reviewChk) {
		this.reviewChk = reviewChk;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getOrderDetailId() {
		return orderDetailId;
	}

	public void setOrderDetailId(String orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public String getReviewId() {
		return reviewId;
	}

	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}

	public int getStarScore() {
		return starScore;
	}

	public void setStarScore(int starScore) {
		this.starScore = starScore;
	}

	public List<String> getReviewImg() {
		return reviewImg;
	}

	public void setReviewImg(List<String> reviewImg) {
		this.reviewImg = reviewImg;
	}

	@Override
	public String toString() {
		return "ReviewVO [id=" + id + ", status=" + status + ", reviewChk=" + reviewChk + ", contents=" + contents
				+ ", orderDetailId=" + orderDetailId + ", reviewId=" + reviewId + ", starScore=" + starScore
				+ ", reviewImg=" + reviewImg + "]";
	}
	
	
	
}
