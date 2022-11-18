package kr.co.mpnp.user.service;


import kr.co.mpnp.user.dao.ProductDAO;
import kr.co.mpnp.user.domain.ProductDomain;

public class ProductService {


	
	public ProductDomain  searchPrdDetail(String productid) {
		ProductDAO pDAO= new ProductDAO();
		ProductDomain pd=pDAO.selectPrdDetail(productid);
		return pd;
	}//
	
	


}//class

