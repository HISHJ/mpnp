package kr.co.mpnp.user.vo;
//¼³ºó
import java.util.List;

public class OrderVO {
	private String memberName,phone, orderId, prdId, zipcode,addr,addrDetail,
	shipReq,cartId,inputDate, id,status, defaultFlag, ship_name,receiver,  receiver_phone,desId;
	private int discountPrice, totalPrdPrice, actualPrice,prdCnt, cartCnt,prdPrice, totalPrice,totalPrdCnt;
	private List<OrderPrdVO> orders;
	public OrderVO() {
	}
	public OrderVO(String memberName, String phone, String orderId, String prdId, String zipcode, String addr,
			String addrDetail, String shipReq, String cartId, String inputDate, String id, String status,
			String defaultFlag, String ship_name, String receiver, String receiver_phone, String desId,
			int discountPrice, int totalPrdPrice, int actualPrice, int prdCnt, int cartCnt, int prdPrice,
			int totalPrice, int totalPrdCnt, List<OrderPrdVO> orders) {
		super();
		this.memberName = memberName;
		this.phone = phone;
		this.orderId = orderId;
		this.prdId = prdId;
		this.zipcode = zipcode;
		this.addr = addr;
		this.addrDetail = addrDetail;
		this.shipReq = shipReq;
		this.cartId = cartId;
		this.inputDate = inputDate;
		this.id = id;
		this.status = status;
		this.defaultFlag = defaultFlag;
		this.ship_name = ship_name;
		this.receiver = receiver;
		this.receiver_phone = receiver_phone;
		this.desId = desId;
		this.discountPrice = discountPrice;
		this.totalPrdPrice = totalPrdPrice;
		this.actualPrice = actualPrice;
		this.prdCnt = prdCnt;
		this.cartCnt = cartCnt;
		this.prdPrice = prdPrice;
		this.totalPrice = totalPrice;
		this.totalPrdCnt = totalPrdCnt;
		this.orders = orders;
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
	public String getPrdId() {
		return prdId;
	}
	public void setPrdId(String prdId) {
		this.prdId = prdId;
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
	public String getShip_name() {
		return ship_name;
	}
	public void setShip_name(String ship_name) {
		this.ship_name = ship_name;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getReceiver_phone() {
		return receiver_phone;
	}
	public void setReceiver_phone(String receiver_phone) {
		this.receiver_phone = receiver_phone;
	}
	public String getDesId() {
		return desId;
	}
	public void setDesId(String desId) {
		this.desId = desId;
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
	public int getPrdCnt() {
		return prdCnt;
	}
	public void setPrdCnt(int prdCnt) {
		this.prdCnt = prdCnt;
	}
	public int getCartCnt() {
		return cartCnt;
	}
	public void setCartCnt(int cartCnt) {
		this.cartCnt = cartCnt;
	}
	public int getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(int prdPrice) {
		this.prdPrice = prdPrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getTotalPrdCnt() {
		return totalPrdCnt;
	}
	public void setTotalPrdCnt(int totalPrdCnt) {
		this.totalPrdCnt = totalPrdCnt;
	}
	public List<OrderPrdVO> getOrders() {
		return orders;
	}
	public void setOrders(List<OrderPrdVO> orders) {
		this.orders = orders;
	}
	@Override
	public String toString() {
		return "OrderVO [memberName=" + memberName + ", phone=" + phone + ", orderId=" + orderId + ", prdId=" + prdId
				+ ", zipcode=" + zipcode + ", addr=" + addr + ", addrDetail=" + addrDetail + ", shipReq=" + shipReq
				+ ", cartId=" + cartId + ", inputDate=" + inputDate + ", id=" + id + ", status=" + status
				+ ", defaultFlag=" + defaultFlag + ", ship_name=" + ship_name + ", receiver=" + receiver
				+ ", receiver_phone=" + receiver_phone + ", desId=" + desId + ", discountPrice=" + discountPrice
				+ ", totalPrdPrice=" + totalPrdPrice + ", actualPrice=" + actualPrice + ", prdCnt=" + prdCnt
				+ ", cartCnt=" + cartCnt + ", prdPrice=" + prdPrice + ", totalPrice=" + totalPrice + ", totalPrdCnt="
				+ totalPrdCnt + ", orders=" + orders + "]";
	}
	
	
	
	
}//class