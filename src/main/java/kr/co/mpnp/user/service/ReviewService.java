package kr.co.mpnp.user.service;

import java.util.List;

import org.json.simple.JSONObject;

import kr.co.mpnp.user.dao.DestinationDAO;
import kr.co.mpnp.user.dao.ReviewDAO;
import kr.co.mpnp.user.domain.ReviewDomain;
import kr.co.mpnp.user.vo.ReviewVO;

public class ReviewService {
	
	// 작성가능후기 조회
	public List<ReviewDomain> searchWritableReview(String id){
		List<ReviewDomain> list = null;
		
		//System.out.println("ReviewService : id - "+id);
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		list = reviewDAO.selectWritableReview(id);
		
		return list;
	}
	
 	// 작성후기 조회
	public List<ReviewDomain> searchWritenReview(String id){
		List<ReviewDomain> list = null;
		
		//System.out.println("ReviewService : id - "+id);
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		list = reviewDAO.selectWritenReview(id);
		
		return list;
	}
	
	// 리뷰작성
//	public String addReview(ReviewVO rVO){
	public boolean addReview(ReviewVO rVO){
		boolean finalFlag = false;
		//System.out.println("DAO까지왔다.");
		//System.out.println(rVO.getId());
		//System.out.println(rVO.getOrderDetailId());
		//System.out.println(rVO.getContents());
		//System.out.println(rVO.getStarScore());
		//for(String imgName : rVO.getReviewImg()) {
//			System.out.println(imgName);
		//}
		//System.out.println("사진등록안하면 null인가? 일단 null은 아니지않나 "+rVO.getReviewImg()==null); // ㅇㅇ null은 아님
		//System.out.println("사진등록안해도 일단 있으니까 size 는 1 아닌가?"+rVO.getReviewImg().size());
		// 0이네 하나등록했다가 지우고 해도 0임
		
		// 리스트는 일단 있을거같은데 각 인덱스가 null이 아닌경우만 해야겠다 ㅇㅇ
		
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		
		// 리뷰작성
		finalFlag = reviewDAO.insertReviewTest(rVO);
		// 작성된 리뷰코드조회
		// 이미지테이블 추가위해 rVO에 set
//		String rId = reviewDAO.selectReviewId(rVO.getOrderDetailId());
//		rVO.setReviewId(rId);
//		System.out.println("조회된 리뷰 id");
//		boolean imgFlag = false;
//		if(rVO.getReviewImg().size()>0){
//			imgFlag = reviewDAO.insertReviewImgs(rVO);
//		}
//		
//		boolean chkFlag = reviewDAO.updateReviewChk(rVO.getOrderDetailId());
//		
//		if(rVO.getReviewImg().size()>0){
//			if(rFlag&&imgFlag&&chkFlag) {
//				finalFlag = true;
//			}
//		}else {
//			if(rFlag&&chkFlag) {
//				finalFlag = true;
//			}
//		}
		
		// 이미지 있으면실행
//		if(rVO.getReviewImg().size()>0) {
//			// 이미지가 있을때만 실행하는게 낫겠지?
//			
//			if(rFlag&&imgFlag&&chkFlag) {
//				reviewDAO.commit();
//				System.out.println("커밋됨");
//				finalFlag = true;
//			}else {
//				System.out.println("롤백됨");
//				reviewDAO.rollback();
//			}
//		}else {
//			if(rFlag&&chkFlag) {
//				reviewDAO.commit();
//				System.out.println("커밋됨");
//				finalFlag = true; 
//			}else {
//				System.out.println("롤백됨");
//				reviewDAO.rollback();
//			}
//		}
		
		//JSONObject jsonData = new JSONObject();
		//jsonData.put("addFlag", finalFlag);
		
		//return jsonData.toJSONString();
		return finalFlag;
		
	}
	
	
	
	// 리뷰수정페이지 보여주기
	public ReviewDomain searchReviewDetail(String rId){
		
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		ReviewDomain rDomain = reviewDAO.selectDetail(rId);
		rDomain.setReviewId(rId);
		//System.out.println("ReviewService : 119 라인 : 이미지 배열로 나누기전 "+rDomain);
		List<String> imgList = null;
		// 이미지가 없는경우를 일단 식별해야지
		// 없다면 empty일까 null일까 null임
		//System.out.println("".equals(rDomain.getReviewImgs())?"oo":"xx"); // xx
		//System.out.println((rDomain.getReviewImgs()==null?"oo":"xx")); // oo
		if(rDomain.getReviewImgs()!=null) {
			String[] imgArr = rDomain.getReviewImgs().split(",");
			rDomain.setReviewImg(imgArr);
		}
		//System.out.println("리뷰디테일 페이지로 가기전 rDomain : "+rDomain.toString());
		return rDomain;
	}
	
	// 리뷰수정
	public boolean modifyReview(ReviewVO rVO){
		boolean flag = false;
		
		
		return flag;
	}
	
	// 리뷰삭제
	public String removeReview(String reviewId){
		boolean flag = false;
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		flag = reviewDAO.deleteReview(reviewId);
		
		JSONObject jsonData = new JSONObject();
		jsonData.put("removeFlag", flag);
		
		return jsonData.toJSONString();
	}
	
}
