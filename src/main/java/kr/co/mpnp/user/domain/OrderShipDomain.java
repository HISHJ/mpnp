package kr.co.mpnp.user.domain;

public class OrderShipDomain {
	private  String  zipcode, addr, addrDetail, shipReq, phone, default_flag, shipName,desid;
	int discountRate;
	
	
	
	public OrderShipDomain() {
	}



	public OrderShipDomain(String zipcode, String addr, String addrDetail, String shipReq, String phone,
			String default_flag, String shipName, String desid, int discountRate) {
		this.zipcode = zipcode;
		this.addr = addr;
		this.addrDetail = addrDetail;
		this.shipReq = shipReq;
		this.phone = phone;
		this.default_flag = default_flag;
		this.shipName = shipName;
		this.desid = desid;
		this.discountRate = discountRate;
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



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getDefault_flag() {
		return default_flag;
	}



	public void setDefault_flag(String default_flag) {
		this.default_flag = default_flag;
	}



	public String getShipName() {
		return shipName;
	}



	public void setShipName(String shipName) {
		this.shipName = shipName;
	}



	public String getDesid() {
		return desid;
	}



	public void setDesid(String desid) {
		this.desid = desid;
	}



	public int getDiscountRate() {
		return discountRate;
	}



	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}



	@Override
	public String toString() {
		return "OrderShipDomain [zipcode=" + zipcode + ", addr=" + addr + ", addrDetail=" + addrDetail + ", shipReq="
				+ shipReq + ", phone=" + phone + ", default_flag=" + default_flag + ", shipName=" + shipName
				+ ", desid=" + desid + ", discountRate=" + discountRate + "]";
	}
	
	

	
	

}
