package kr.co.mpnp.user.domain;

//¼³ºó
public class OrderDomain {
	private String memberName, gradeName, zipcode, addr, addrDetail, shipReq, phone, default_flag,shipName;
	private int discountRate;

	public OrderDomain() {
	}

	public OrderDomain(String memberName, String gradeName, String zipcode, String addr, String addrDetail,
			String shipReq, String phone, String default_flag, String shipName, int discountRate) {
		super();
		this.memberName = memberName;
		this.gradeName = gradeName;
		this.zipcode = zipcode;
		this.addr = addr;
		this.addrDetail = addrDetail;
		this.shipReq = shipReq;
		this.phone = phone;
		this.default_flag = default_flag;
		this.shipName = shipName;
		this.discountRate = discountRate;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
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

	public int getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}

	@Override
	public String toString() {
		return "OrderDomain [memberName=" + memberName + ", gradeName=" + gradeName + ", zipcode=" + zipcode + ", addr="
				+ addr + ", addrDetail=" + addrDetail + ", shipReq=" + shipReq + ", phone=" + phone + ", default_flag="
				+ default_flag + ", shipName=" + shipName + ", discountRate=" + discountRate + "]";
	}

	

}
