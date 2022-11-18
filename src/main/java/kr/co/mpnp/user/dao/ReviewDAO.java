package kr.co.mpnp.user.dao;

import java.util.List;

import kr.co.mpnp.user.domain.ReviewDomain;
import kr.co.mpnp.user.vo.ReviewVO;

public class ReviewDAO {

	// 작성가능후기 조회
	public List<ReviewDomain> selectWritableReview(ReviewVO rVO){
		List<ReviewDomain> list = null;
		
		
		return list;
	}
	
	// 작성후기 조회
	public List<ReviewDomain> selectWritenReview(ReviewVO rVO){
		List<ReviewDomain> list = null;
		
		
		return list;
	}
	
	// 리뷰작성
	public boolean insertReview(ReviewVO rVO){
		
		
		int cnt = 0; // 쿼리문실행결과 담기 ?? 여기에하는게 맞던가
		
		return cnt!=0?true:false;
	}
	
	// 리뷰수정
	public boolean updateReview(ReviewVO rVO){
		
		int cnt = 0; // 쿼리문실행결과 담기 ?? 여기에하는게 맞던가
		
		return cnt!=0?true:false;
	}
	
	// 리뷰삭제
	public boolean deleteReview(String rId){
		
		int cnt = 0; // 쿼리문실행결과 담기 ?? 여기에하는게 맞던가
		
		return cnt!=0?true:false;
	}
	
}
