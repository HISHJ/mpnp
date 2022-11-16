package kr.co.mpnp.admin.domain;

import java.util.Date;

public class AdminOrderDomain {
	//¼³ºó
	private String orderId,memberId,memberName,phone,shipName,zipcode,addr,addrDetail,receiver,
	receiverPhone, shipReq, orderStatus, inputdate,p_name,id;
	private int price, totalcnt, actualPrice, discountRate;
//	private Date inputdate;
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
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getShipName() {
		return shipName;
	}
	public void setShipName(String shipName) {
		this.shipName = shipName;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddrDetail() {
		return addrDetail;
	}
	public void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}
	public String getShipReq() {
		return shipReq;
	}
	public void setShipReq(String shipReq) {
		this.shipReq = shipReq;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getInputdate() {
		return inputdate;
	}
	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalcnt() {
		return totalcnt;
	}
	public void setTotalcnt(int totalcnt) {
		this.totalcnt = totalcnt;
	}
	public int getActualPrice() {
		return actualPrice;
	}
	public void setActualPrice(int actualPrice) {
		this.actualPrice = actualPrice;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	@Override
	public String toString() {
		return "AdminOrderDomain [orderId=" + orderId + ", memberId=" + memberId + ", memberName=" + memberName
				+ ", phone=" + phone + ", shipName=" + shipName + ", zipcode=" + zipcode + ", addr=" + addr
				+ ", addrDetail=" + addrDetail + ", receiver=" + receiver + ", receiverPhone=" + receiverPhone
				+ ", shipReq=" + shipReq + ", orderStatus=" + orderStatus + ", inputdate=" + inputdate + ", p_name="
				+ p_name + ", id=" + id + ", price=" + price + ", totalcnt=" + totalcnt + ", actualPrice=" + actualPrice
				+ ", discountRate=" + discountRate + "]";
	}


	



}
