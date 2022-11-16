package kr.co.mpnp.user.vo;
//?„¤ë¹?
import java.util.Date;

public class OrderVO {
	private String memberName,phone, orderId, productId, zipcode,addr,addrDetail,
	shipReq,cartId,inputDate, id,status, defaultFlag ;
	private int discountPrice, totalPrdPrice, actualPrice, cartCnt;
	
	public OrderVO() {
	}

	public OrderVO(String memberName, String phone, String orderId, String productId, String zipcode, String addr,
			String addrDetail, String shipReq, String cartId, String inputDate, String id, String status,
			String defaultFlag, int discountPrice, int totalPrdPrice, int actualPrice, int cartCnt) {
		super();
		this.memberName = memberName;
		this.phone = phone;
		this.orderId = orderId;
		this.productId = productId;
		this.zipcode = zipcode;
		this.addr = addr;
		this.addrDetail = addrDetail;
		this.shipReq = shipReq;
		this.cartId = cartId;
		this.inputDate = inputDate;
		this.id = id;
		this.status = status;
		this.defaultFlag = defaultFlag;
		this.discountPrice = discountPrice;
		this.totalPrdPrice = totalPrdPrice;
		this.actualPrice = actualPrice;
		this.cartCnt = cartCnt;
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

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
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

	public String getShipReq() {
		return shipReq;
	}

	public void setShipReq(String shipReq) {
		this.shipReq = shipReq;
	}

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public String getInputDate() {
		return inputDate;
	}

	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
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

	public String getDefaultFlag() {
		return defaultFlag;
	}

	public void setDefaultFlag(String defaultFlag) {
		this.defaultFlag = defaultFlag;
	}

	public int getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}

	public int getTotalPrdPrice() {
		return totalPrdPrice;
	}

	public void setTotalPrdPrice(int totalPrdPrice) {
		this.totalPrdPrice = totalPrdPrice;
	}

	public int getActualPrice() {
		return actualPrice;
	}

	public void setActualPrice(int actualPrice) {
		this.actualPrice = actualPrice;
	}

	public int getCartCnt() {
		return cartCnt;
	}

	public void setCartCnt(int cartCnt) {
		this.cartCnt = cartCnt;
	}

	@Override
	public String toString() {
		return "OrderVO [memberName=" + memberName + ", phone=" + phone + ", orderId=" + orderId + ", productId="
				+ productId + ", zipcode=" + zipcode + ", addr=" + addr + ", addrDetail=" + addrDetail + ", shipReq="
				+ shipReq + ", cartId=" + cartId + ", inputDate=" + inputDate + ", id=" + id + ", status=" + status
				+ ", defaultFlag=" + defaultFlag + ", discountPrice=" + discountPrice + ", totalPrdPrice="
				+ totalPrdPrice + ", actualPrice=" + actualPrice + ", cartCnt=" + cartCnt + "]";
	}

	
	
}//class