package kr.co.mpnp.user.service;


import kr.co.mpnp.user.domain.ProductDomain;

public class ProductService {


	//��ǰ ������
	public ProductDomain  searchPrdDetail(String productid) {
		
		ProductDomain pd
		= new ProductDomain(productid, "테스트", "product1", "productd1", "판매중", 15000000, 2500, 1.2,null);
		
		
		return pd;
	}//


}//class

