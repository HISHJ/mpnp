package kr.co.mpnp.admin.vo;

public class AdminReviewVO {

	// 11-13 최정민 테스트용이라 추후 변수수정 필요함
	
	private String contents, nick, reviewId, orderDetailId ;
	
	public AdminReviewVO() {
	}

	public AdminReviewVO(String contents, String nick, String reviewId, String orderDetailId) {
		this.contents = contents;
		this.nick = nick;
		this.reviewId = reviewId;
		this.orderDetailId = orderDetailId;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
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

	@Override
	public String toString() {
		return "AdminReviewVO [contents=" + contents + ", nick=" + nick + ", reviewId=" + reviewId + ", orderDetailId="
				+ orderDetailId + "]";
	}
	
}