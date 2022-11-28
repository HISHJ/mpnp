package kr.co.mpnp.user.vo;

import java.util.Date;
//설빈
//페이징 관련 변수
//totalPageCnt(전체 게시물수), totalPage,(전체 페이지수) currentPage(현재페이지), startNum(시작번호),
//endNum(끝번호), pageScale(한페이지에 보여줄 게시물 수)
public class MyOrderVO {
	 private String id, orderId, review_chk,deliveryId, deliveryName, zipcode, addr, addrDetail, phone, receiver, shipReq, orderStatus,
	  orderDetailId, prdtId, prdName, thImg, findStartDate, findEndDate,inputDateS,cartID;
	  private int actualPrice, totalPrdCnt, productPrice, totalPageCnt, totalPage, currentPage, startNum, endNum, pageScale;
	  private Date inputDate, completionDate;

	  public MyOrderVO() {
	}

	public MyOrderVO(String id, String orderId, String review_chk, String deliveryId, String deliveryName,
			String zipcode, String addr, String addrDetail, String phone, String receiver, String shipReq,
			String orderStatus, String orderDetailId, String prdtId, String prdName, String thImg, String findStartDate,
			String findEndDate, String inputDateS, String cartID, int actualPrice, int totalPrdCnt, int productPrice,
			int totalPageCnt, int totalPage, int currentPage, int startNum, int endNum, int pageScale, Date inputDate,
			Date completionDate) {
	
		this.id = id;
		this.orderId = orderId;
		this.review_chk = review_chk;
		this.deliveryId = deliveryId;
		this.deliveryName = deliveryName;
		this.zipcode = zipcode;
		this.addr = addr;
		this.addrDetail = addrDetail;
		this.phone = phone;
		this.receiver = receiver;
		this.shipReq = shipReq;
		this.orderStatus = orderStatus;
		this.orderDetailId = orderDetailId;
		this.prdtId = prdtId;
		this.prdName = prdName;
		this.thImg = thImg;
		this.findStartDate = findStartDate;
		this.findEndDate = findEndDate;
		this.inputDateS = inputDateS;
		this.cartID = cartID;
		this.actualPrice = actualPrice;
		this.totalPrdCnt = totalPrdCnt;
		this.productPrice = productPrice;
		this.totalPageCnt = totalPageCnt;
		this.totalPage = totalPage;
		this.currentPage = currentPage;
		this.startNum = startNum;
		this.endNum = endNum;
		this.pageScale = pageScale;
		this.inputDate = inputDate;
		this.completionDate = completionDate;
	}

	public synchronized String getId() {
		return id;
	}

	public synchronized void setId(String id) {
		this.id = id;
	}

	public synchronized String getOrderId() {
		return orderId;
	}

	public synchronized void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public synchronized String getReview_chk() {
		return review_chk;
	}

	public synchronized void setReview_chk(String review_chk) {
		this.review_chk = review_chk;
	}

	public synchronized String getDeliveryId() {
		return deliveryId;
	}

	public synchronized void setDeliveryId(String deliveryId) {
		this.deliveryId = deliveryId;
	}

	public synchronized String getDeliveryName() {
		return deliveryName;
	}

	public synchronized void setDeliveryName(String deliveryName) {
		this.deliveryName = deliveryName;
	}

	public synchronized String getZipcode() {
		return zipcode;
	}

	public synchronized void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public synchronized String getAddr() {
		return addr;
	}

	public synchronized void setAddr(String addr) {
		this.addr = addr;
	}

	public synchronized String getAddrDetail() {
		return addrDetail;
	}

	public synchronized void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}

	public synchronized String getPhone() {
		return phone;
	}

	public synchronized void setPhone(String phone) {
		this.phone = phone;
	}

	public synchronized String getReceiver() {
		return receiver;
	}

	public synchronized void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public synchronized String getShipReq() {
		return shipReq;
	}

	public synchronized void setShipReq(String shipReq) {
		this.shipReq = shipReq;
	}

	public synchronized String getOrderStatus() {
		return orderStatus;
	}

	public synchronized void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public synchronized String getOrderDetailId() {
		return orderDetailId;
	}

	public synchronized void setOrderDetailId(String orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public synchronized String getPrdtId() {
		return prdtId;
	}

	public synchronized void setPrdtId(String prdtId) {
		this.prdtId = prdtId;
	}

	public synchronized String getPrdName() {
		return prdName;
	}

	public synchronized void setPrdName(String prdName) {
		this.prdName = prdName;
	}

	public synchronized String getThImg() {
		return thImg;
	}

	public synchronized void setThImg(String thImg) {
		this.thImg = thImg;
	}

	public synchronized String getFindStartDate() {
		return findStartDate;
	}

	public synchronized void setFindStartDate(String findStartDate) {
		this.findStartDate = findStartDate;
	}

	public synchronized String getFindEndDate() {
		return findEndDate;
	}

	public synchronized void setFindEndDate(String findEndDate) {
		this.findEndDate = findEndDate;
	}

	public synchronized String getInputDateS() {
		return inputDateS;
	}

	public synchronized void setInputDateS(String inputDateS) {
		this.inputDateS = inputDateS;
	}

	public synchronized String getCartID() {
		return cartID;
	}

	public synchronized void setCartID(String cartID) {
		this.cartID = cartID;
	}

	public synchronized int getActualPrice() {
		return actualPrice;
	}

	public synchronized void setActualPrice(int actualPrice) {
		this.actualPrice = actualPrice;
	}

	public synchronized int getTotalPrdCnt() {
		return totalPrdCnt;
	}

	public synchronized void setTotalPrdCnt(int totalPrdCnt) {
		this.totalPrdCnt = totalPrdCnt;
	}

	public synchronized int getProductPrice() {
		return productPrice;
	}

	public synchronized void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public synchronized int getTotalPageCnt() {
		return totalPageCnt;
	}

	public synchronized void setTotalPageCnt(int totalPageCnt) {
		this.totalPageCnt = totalPageCnt;
	}

	public synchronized int getTotalPage() {
		return totalPage;
	}

	public synchronized void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public synchronized int getCurrentPage() {
		return currentPage;
	}

	public synchronized void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public synchronized int getStartNum() {
		return startNum;
	}

	public synchronized void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public synchronized int getEndNum() {
		return endNum;
	}

	public synchronized void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public synchronized int getPageScale() {
		return pageScale;
	}

	public synchronized void setPageScale(int pageScale) {
		this.pageScale = pageScale;
	}

	public synchronized Date getInputDate() {
		return inputDate;
	}

	public synchronized void setInputDate(Date inputDate) {
		this.inputDate = inputDate;
	}

	public synchronized Date getCompletionDate() {
		return completionDate;
	}

	public synchronized void setCompletionDate(Date completionDate) {
		this.completionDate = completionDate;
	}

	@Override
	public String toString() {
		return "MyOrderVO [id=" + id + ", orderId=" + orderId + ", review_chk=" + review_chk + ", deliveryId="
				+ deliveryId + ", deliveryName=" + deliveryName + ", zipcode=" + zipcode + ", addr=" + addr
				+ ", addrDetail=" + addrDetail + ", phone=" + phone + ", receiver=" + receiver + ", shipReq=" + shipReq
				+ ", orderStatus=" + orderStatus + ", orderDetailId=" + orderDetailId + ", prdtId=" + prdtId
				+ ", prdName=" + prdName + ", thImg=" + thImg + ", findStartDate=" + findStartDate + ", findEndDate="
				+ findEndDate + ", inputDateS=" + inputDateS + ", cartID=" + cartID + ", actualPrice=" + actualPrice
				+ ", totalPrdCnt=" + totalPrdCnt + ", productPrice=" + productPrice + ", totalPageCnt=" + totalPageCnt
				+ ", totalPage=" + totalPage + ", currentPage=" + currentPage + ", startNum=" + startNum + ", endNum="
				+ endNum + ", pageScale=" + pageScale + ", inputDate=" + inputDate + ", completionDate="
				+ completionDate + "]";
	}

	

	
	  
	}
