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
		System.out.println("DAO까지왔다.");
		System.out.println(rVO.getId());
		System.out.println(rVO.getOrderDetailId());
		System.out.println(rVO.getContents());
		System.out.println(rVO.getStarScore());
		for(String imgName : rVO.getReviewImg()) {
			System.out.println(imgName);
		}
		
		// 여기서 해야할 작업
		// 리뷰테이블에 가져온정보 insert
		// rVO에 이미지리스트의 길이가 0보다 크다면
		// 방금 insert한 리뷰번호 select 0보다작거나 ㅇㅇ 없으면 굳이 할필요없고 ㅇㅇ
		// select한 리뷰번호로 리뷰이미지테이블에 이미지갯수만큼 insert
		// od아이디로 order_detail테이블에 review_chk Y로 update
		
		// 이 모든작업이 성공적으로 끝났을때 commit후 반환
		
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
