package kr.co.mpnp.admin.service;

import java.util.List;

import org.json.simple.JSONObject;

import kr.co.mpnp.admin.dao.AdminReviewDAO;
import kr.co.mpnp.admin.domain.AdminReviewDomain;
import kr.co.mpnp.admin.vo.AdminReviewVO;

public class AdminReviewService {
	
	// 전체, 조건조회
	public List<AdminReviewDomain> searchReviewList(AdminReviewVO arVO){
		List<AdminReviewDomain> list = null;
		
		System.out.println("AdminReviewService : "+arVO.toString());
		
		AdminReviewDAO aDAO = AdminReviewDAO.getInstance();
		list = aDAO.selectReviewList(arVO);
		
		return list;
	}
	
	// 리뷰 상세보기
	public AdminReviewDomain searchReviewDetail(String reviewId) {
		AdminReviewDomain arDomain = null; 
		
		// 이메서드만 필요한게아니고 들어온 리뷰코드로 주문상세코드를 타고가서 뭐 상품코드 등등 또 가져와야되네?? 
		
		AdminReviewDAO aDAO = AdminReviewDAO.getInstance();
		arDomain = aDAO.selectReviewDetail(reviewId);
		
		System.out.println("서비스 전 : "+arDomain.toString());
		//서비스 전 : AdminReviewDomain [reviewId=rev_000001, nick=nick002, contents=리뷰insert테스트중입니다, productId=p0001, reviewImgs=testtesttest.jpg,testtesttest2.jpg,testtesttest3.jpg, reviewImgArr=null, starScore=5, inputDate=Wed Nov 16 22:27:28 KST 2022]
		
		if(arDomain.getReviewImgs() != null) { // 리뷰이미지가 있다면
			arDomain.setReviewImgArr(arDomain.getReviewImgs().split(","));
		}
		
		System.out.println("서비스 후 : "+arDomain.toString());
		//서비스 후 : AdminReviewDomain [reviewId=rev_000001, nick=nick002, contents=리뷰insert테스트중입니다, productId=p0001, reviewImgs=testtesttest.jpg,testtesttest2.jpg,testtesttest3.jpg, reviewImgArr=[testtesttest.jpg, testtesttest2.jpg, testtesttest3.jpg], starScore=5, inputDate=Wed Nov 16 22:27:28 KST 2022]
		
		
		return arDomain;
	}
	
	
	// 리뷰삭제
	/*public boolean removeReview(String reviewId) {
		boolean removeFlag = false;
		String json = "";
		
		AdminReviewDAO aDAO = AdminReviewDAO.getInstance();
		removeFlag = aDAO.deleteReview(reviewId)==1?true:false;
		
		return removeFlag;
	}*/
	
	public String removeReview(String reviewId) {
		
		AdminReviewDAO aDAO = AdminReviewDAO.getInstance();
		boolean removeFlag = aDAO.deleteReview(reviewId)==1?true:false;
		
		JSONObject jsonFlag = new JSONObject();
		jsonFlag.put("removeFlag", removeFlag);
		
		return jsonFlag.toJSONString();
	}
	
	
}