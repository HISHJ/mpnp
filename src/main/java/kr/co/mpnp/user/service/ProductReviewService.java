package kr.co.mpnp.user.service;

import java.util.List;

import kr.co.mpnp.user.dao.ProductReviewDAO;
import kr.co.mpnp.user.domain.ProductReviewDomain;

public class ProductReviewService {

		ProductReviewDAO prDAO = new ProductReviewDAO();
	//상품별 리뷰 불러오기
	public List<ProductReviewDomain> searchProductReview(String productid){
		List<ProductReviewDomain> list= prDAO.selectProductReview(productid);
		
		
		return list;
	}
	
	//상품별 별점 인원수 
	public List<ProductReviewDomain> searchStarCnt(String productid){
		List<ProductReviewDomain> slist=prDAO.selectStarCnt(productid);
		return slist;
	}
	
	
}
