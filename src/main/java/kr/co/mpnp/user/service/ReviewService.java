package kr.co.mpnp.user.service;

import java.util.List;

import kr.co.mpnp.user.dao.ReviewDAO;
import kr.co.mpnp.user.domain.ReviewDomain;
import kr.co.mpnp.user.vo.ReviewVO;

public class ReviewService {

	// 작성가능후기 조회
	public List<ReviewDomain> searchWritableReview(String id){
		List<ReviewDomain> list = null;
		
		System.out.println("ReviewService : id - "+id);
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		list = reviewDAO.selectWritableReview(id);
		
		return list;
	}
	
 	// 작성후기 조회
	public List<ReviewDomain> searchWritenReview(String id){
		List<ReviewDomain> list = null;
		
		System.out.println("ReviewService : id - "+id);
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		list = reviewDAO.selectWritenReview(id);
		
		return list;
	}
	
	// 리뷰작성
	public boolean addReview(ReviewVO rVO){
		boolean flag = false;
		
		
		return flag;
	}
	
	// 리뷰수정
	public boolean modifyReview(ReviewVO rVO){
		boolean flag = false;
		
		
		return flag;
	}
	
	// 리뷰삭제
	public boolean deleteReview(ReviewVO rVO){
		boolean flag = false;
		
		
		return flag;
	}
	
}
