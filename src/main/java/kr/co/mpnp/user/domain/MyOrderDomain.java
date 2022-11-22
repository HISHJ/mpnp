package kr.co.mpnp.user.domain;

import java.util.Date;
//¼³ºó
public class MyOrderDomain {
	private String memberId, membername,orderId, deliveryId, deliveryName,
	zipcode, addr, addrDetail, phone, receiver, shipReq, status, prdId,
	prdName, thImg,inputDateS,prdImg,orDetailId;
	private int actualPrice, totalCnt, prdPrice, cntPrice, totalPrdPrice;
	private Date inputDate, completionDate;
	
	public MyOrderDomain() {
	}

	public MyOrderDomain(String memberId, String membername, String orderId, String deliveryId, String deliveryName,
			String zipcode, String addr, String addrDetail, String phone, String receiver, String shipReq,
			String status, String prdId, String prdName, String thImg, String inputDateS, String prdImg,
			String orDetailId, int actualPrice, int totalCnt, int prdPrice, int cntPrice, int totalPrdPrice,
			Date inputDate, Date completionDate) {
		super();
		this.memberId = memberId;
		this.membername = membername;
		this.orderId = orderId;
		this.deliveryId = deliveryId;
		this.deliveryName = deliveryName;
		this.zipcode = zipcode;
		this.addr = addr;
		this.addrDetail = addrDetail;
		this.phone = phone;
		this.receiver = receiver;
		this.shipReq = shipReq;
		this.status = status;
		this.prdId = prdId;
		this.prdName = prdName;
		this.thImg = thImg;
		this.inputDateS = inputDateS;
		this.prdImg = prdImg;
		this.orDetailId = orDetailId;
		this.actualPrice = actualPrice;
		this.totalCnt = totalCnt;
		this.prdPrice = prdPrice;
		this.cntPrice = cntPrice;
		this.totalPrdPrice = totalPrdPrice;
		this.inputDate = inputDate;
		this.completionDate = completionDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getDeliveryId() {
		return deliveryId;
	}

	public void setDeliveryId(String deliveryId) {
		this.deliveryId = deliveryId;
	}

	public String getDeliveryName() {
		return deliveryName;
	}

	public void setDeliveryName(String deliveryName) {
		this.deliveryName = deliveryName;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getShipReq() {
		return shipReq;
	}

	public void setShipReq(String shipReq) {
		this.shipReq = shipReq;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPrdId() {
		return prdId;
	}

	public void setPrdId(String prdId) {
		this.prdId = prdId;
	}

	public String getPrdName() {
		return prdName;
	}

	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}

	public String getThImg() {
		return thImg;
	}

	public void setThImg(String thImg) {
		this.thImg = thImg;
	}

	public String getInputDateS() {
		return inputDateS;
	}

	public void setInputDateS(String inputDateS) {
		this.inputDateS = inputDateS;
	}

	public String getPrdImg() {
		return prdImg;
	}

	public void setPrdImg(String prdImg) {
		this.prdImg = prdImg;
	}

	public String getOrDetailId() {
		return orDetailId;
	}

	public void setOrDetailId(String orDetailId) {
		this.orDetailId = orDetailId;
	}

	public int getActualPrice() {
		return actualPrice;
	}

	public void setActualPrice(int actualPrice) {
		this.actualPrice = actualPrice;
	}

	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}

	public int getPrdPrice() {
		return prdPrice;
	}

	public void setPrdPrice(int prdPrice) {
		this.prdPrice = prdPrice;
	}

	public int getCntPrice() {
		return cntPrice;
	}

	public void setCntPrice(int cntPrice) {
		this.cntPrice = cntPrice;
	}

	public int getTotalPrdPrice() {
		return totalPrdPrice;
	}

	public void setTotalPrdPrice(int totalPrdPrice) {
		this.totalPrdPrice = totalPrdPrice;
	}

	public Date getInputDate() {
		return inputDate;
	}

	public void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	public Date getCompletionDate() {
		return completionDate;
	}

	public void setCompletionDate(Date completionDate) {
		this.completionDate = completionDate;
	}

	@Override
	public String toString() {
		return "MyOrderDomain [memberId=" + memberId + ", membername=" + membername + ", orderId=" + orderId
				+ ", deliveryId=" + deliveryId + ", deliveryName=" + deliveryName + ", zipcode=" + zipcode + ", addr="
				+ addr + ", addrDetail=" + addrDetail + ", phone=" + phone + ", receiver=" + receiver + ", shipReq="
				+ shipReq + ", status=" + status + ", prdId=" + prdId + ", prdName=" + prdName + ", thImg=" + thImg
				+ ", inputDateS=" + inputDateS + ", prdImg=" + prdImg + ", orDetailId=" + orDetailId + ", actualPrice="
				+ actualPrice + ", totalCnt=" + totalCnt + ", prdPrice=" + prdPrice + ", cntPrice=" + cntPrice
				+ ", totalPrdPrice=" + totalPrdPrice + ", inputDate=" + inputDate + ", completionDate=" + completionDate
				+ "]";
	}
	
	
	
	
	
}//class 