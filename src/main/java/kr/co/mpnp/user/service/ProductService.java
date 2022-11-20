package kr.co.mpnp.user.service;


import java.util.List;

import kr.co.mpnp.user.dao.ProductDAO;
import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.vo.ProductCartVO;

	
public class ProductService {

	ProductDAO pDAO = ProductDAO.getInstance();

	//상품상세보기
	public ProductDomain  searchPrdDetail(String productid) {
		
		ProductDomain pd=pDAO.selectPrdDetail(productid);
		return pd;
	}//
	
	
	//상품 중분류
	public List<ProductDomain> searchPrdList(String subid){
		List<ProductDomain> list = pDAO.selectprdList(subid);
		return list;
	}
	//상품총 갯수
	public int searchPrdCnt (String subid) {
		int cnt=pDAO.selectprdCnt(subid);
		
		
		return cnt;
		
	}
	
	//장바구니 추가
	public int addCart(ProductCartVO cVO) {
		int cnt=pDAO.insertCart(cVO);
	
		return cnt;
	}
	


}//class

