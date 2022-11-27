package kr.co.mpnp.admin.vo;

public class AdminOrderVO {
  private String memberName, status, orderId,memberId;

public AdminOrderVO() {
}

public AdminOrderVO(String memberName, String status, String orderId, String memberId) {
	this.memberName = memberName;
	this.status = status;
	this.orderId = orderId;
	this.memberId = memberId;
}

public String getMemberName() {
	return memberName;
}

public void setMemberName(String memberName) {
	this.memberName = memberName;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public String getOrderId() {
	return orderId;
}

public void setOrderId(String orderId) {
	this.orderId = orderId;
}

public String getMemberId() {
	return memberId;
}

public void setMemberId(String memberId) {
	this.memberId = memberId;
}

@Override
public String toString() {
	return "AdminOrderVO [memberName=" + memberName + ", status=" + status + ", orderId=" + orderId + ", memberId="
			+ memberId + "]";
}



  
  
}
