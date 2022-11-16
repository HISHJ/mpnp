package kr.co.mpnp.user.vo;

public class ReviewVO {

//	- productid : String
//	totalcount(전체게시물수),totalpage(전체페이지수),
//	currentpage(현재페이지),startnum(시작번호),endnum(끝번호),
//	pagescale(한 페이지에 보여줄 게시물수) : int
	
	private String productid;

	
	
public ReviewVO() {

}

public ReviewVO(String productid) {
	
	this.productid = productid;
}

public String getProductid() {
	return productid;
}

public void setProductid(String productid) {
	this.productid = productid;
}

@Override
public String toString() {
	return "ReviewVO [productid=" + productid + "]";
}

	
	
}//class
