package kr.co.mpnp.admin.service;

import java.util.List;

import kr.co.mpnp.admin.domain.AdminReviewDomain;
import kr.co.mpnp.admin.vo.AdminReviewVO;

public class AdminReviewService {
	
	// 전체, 조건조회
	public List<AdminReviewDomain> searchReviewList(AdminReviewVO arVO){
		List<AdminReviewDomain> list = null;
		
		
		
		return list;
	}
	
	// 리뷰 상세보기
	public AdminReviewDomain searchReviewDetail(String reviewId) {
		AdminReviewDomain arDomain = null; 
		
		// 이메서드만 필요한게아니고 들어온 리뷰코드로 주문상세코드를 타고가서 뭐 상품코드 등등 또 가져와야되네?? 
		
		
		return arDomain;
	}
	
	
	// 리뷰삭제
	public boolean removeReview(String reviewId) {
		boolean removeFlag = false;
		
		
		
		return removeFlag;
	}
	
	
}