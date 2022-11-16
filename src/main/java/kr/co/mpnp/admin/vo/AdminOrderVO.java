package kr.co.mpnp.admin.vo;

public class AdminOrderVO {
  private String memberName, orderStatus, orderID;

public AdminOrderVO() {
}

public AdminOrderVO(String memberName, String orderStatus, String orderID) {
	super();
	this.memberName = memberName;
	this.orderStatus = orderStatus;
	this.orderID = orderID;
}

public String getMemberName() {
	return memberName;
}

public void setMemberName(String memberName) {
	this.memberName = memberName;
}

public String getOrderStatus() {
	return orderStatus;
}

public void setOrderStatus(String orderStatus) {
	this.orderStatus = orderStatus;
}

public String getOrderID() {
	return orderID;
}

public void setOrderID(String orderID) {
	this.orderID = orderID;
}

@Override
public String toString() {
	return "AdminOrderVO [memberName=" + memberName + ", orderStatus=" + orderStatus + ", orderID=" + orderID + "]";
}



  
  
}
