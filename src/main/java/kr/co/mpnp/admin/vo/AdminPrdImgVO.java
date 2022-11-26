package kr.co.mpnp.admin.vo;

public class AdminPrdImgVO {
	private String productid,img;

	public AdminPrdImgVO() {
	}

	public AdminPrdImgVO(String productid, String img) {
		super();
		this.productid = productid;
		this.img = img;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "AdminPrdImgVO [productid=" + productid + ", img=" + img + "]";
	}

	
}
