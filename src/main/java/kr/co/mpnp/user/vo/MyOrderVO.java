package kr.co.mpnp.user.vo;

import java.util.Date;
//설빈
//페이징 관련 변수
//totalPageCnt(전체 게시물수), totalPage,(전체 페이지수) currentPage(현재페이지), startNum(시작번호),
//endNum(끝번호), pageScale(한페이지에 보여줄 게시물 수)
public class MyOrderVO {
	 private String id, orderId, review_chk,deliveryId, deliveryName, zipcode, addr, addrDetail, phone, receiver, shipReq, orderStatus,
	  orderDetailId, prdtId, prdName, thImg, findStartDate, findEndDate,inputDateS,cartID;
	  private int actualPrice, totalPrdCnt, productPrice, totalPageCnt, totalPage, currentPage, startNum, endNum, pageScale, pageFlag=1;
	  private Date inputDate, completionDate;

	  public MyOrderVO() {
	}

	public MyOrderVO(String id, String orderId, String review_chk, String deliveryId, String deliveryName,
			String zipcode, String addr, String addrDetail, String phone, String receiver, String shipReq,
			String orderStatus, String orderDetailId, String prdtId, String prdName, String thImg, String findStartDate,
			String findEndDate, String inputDateS, String cartID, int actualPrice, int totalPrdCnt, int productPrice,
			int totalPageCnt, int totalPage, int currentPage, int startNum, int endNum, int pageScale, int pageFlag,
			Date inputDate, Date completionDate) {
		
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
		this.pageFlag = pageFlag;
		this.inputDate = inputDate;
		this.completionDate = completionDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getReview_chk() {
		return review_chk;
	}

	public void setReview_chk(String review_chk) {
		this.review_chk = review_chk;
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

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getOrderDetailId() {
		return orderDetailId;
	}

	public void setOrderDetailId(String orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public String getPrdtId() {
		return prdtId;
	}

	public void setPrdtId(String prdtId) {
		this.prdtId = prdtId;
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

	public String getFindStartDate() {
		return findStartDate;
	}

	public void setFindStartDate(String findStartDate) {
		this.findStartDate = findStartDate;
	}

	public String getFindEndDate() {
		return findEndDate;
	}

	public void setFindEndDate(String findEndDate) {
		this.findEndDate = findEndDate;
	}

	public String getInputDateS() {
		return inputDateS;
	}

	public void setInputDateS(String inputDateS) {
		this.inputDateS = inputDateS;
	}

	public String getCartID() {
		return cartID;
	}

	public void setCartID(String cartID) {
		this.cartID = cartID;
	}

	public int getActualPrice() {
		return actualPrice;
	}

	public void setActualPrice(int actualPrice) {
		this.actualPrice = actualPrice;
	}

	public int getTotalPrdCnt() {
		return totalPrdCnt;
	}

	public void setTotalPrdCnt(int totalPrdCnt) {
		this.totalPrdCnt = totalPrdCnt;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getTotalPageCnt() {
		return totalPageCnt;
	}

	public void setTotalPageCnt(int totalPageCnt) {
		this.totalPageCnt = totalPageCnt;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getPageScale() {
		return pageScale;
	}

	public void setPageScale(int pageScale) {
		this.pageScale = pageScale;
	}

	public int getPageFlag() {
		return pageFlag;
	}

	public void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
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
		return "MyOrderVO [id=" + id + ", orderId=" + orderId + ", review_chk=" + review_chk + ", deliveryId="
				+ deliveryId + ", deliveryName=" + deliveryName + ", zipcode=" + zipcode + ", addr=" + addr
				+ ", addrDetail=" + addrDetail + ", phone=" + phone + ", receiver=" + receiver + ", shipReq=" + shipReq
				+ ", orderStatus=" + orderStatus + ", orderDetailId=" + orderDetailId + ", prdtId=" + prdtId
				+ ", prdName=" + prdName + ", thImg=" + thImg + ", findStartDate=" + findStartDate + ", findEndDate="
				+ findEndDate + ", inputDateS=" + inputDateS + ", cartID=" + cartID + ", actualPrice=" + actualPrice
				+ ", totalPrdCnt=" + totalPrdCnt + ", productPrice=" + productPrice + ", totalPageCnt=" + totalPageCnt
				+ ", totalPage=" + totalPage + ", currentPage=" + currentPage + ", startNum=" + startNum + ", endNum="
				+ endNum + ", pageScale=" + pageScale + ", pageFlag=" + pageFlag + ", inputDate=" + inputDate
				+ ", completionDate=" + completionDate + "]";
	}

	

	
	  
	}
