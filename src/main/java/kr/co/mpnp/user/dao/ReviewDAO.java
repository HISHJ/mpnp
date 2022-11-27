package kr.co.mpnp.user.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.ReviewDomain;
import kr.co.mpnp.user.vo.ReviewVO;

public class ReviewDAO {

	private static ReviewDAO reviewDAO;

	private ReviewDAO() {
	}

	public static ReviewDAO getInstance() {
		if (reviewDAO == null) {
			reviewDAO = new ReviewDAO();
		}

		return reviewDAO;
	}
	
	
	// 작성가능후기 조회
	public List<ReviewDomain> selectWritableReview(String id){
		
		List<ReviewDomain> list = null;
		// 1. Mybatis Handler 받기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		//System.out.println("ReviewDAO : session - "+ss);
		
		// 2. 쿼리수행
		list = ss.selectList("kr.co.mpnp.user.mapper.reviewMapper.selectWritableReview",id);
		
		// 3. 종료
		mbh.closeHandler(ss);
		
		return list;
	}
	
	// 작성후기 조회
	public List<ReviewDomain> selectWritenReview(String id){
		List<ReviewDomain> list = null;
		
		// 1. Mybatis Handler 받기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		//System.out.println("ReviewDAO : session - "+ss);
		
		// 2. 쿼리수행
		list = ss.selectList("kr.co.mpnp.user.mapper.reviewMapper.selectWritenReview",id);
		
		// 3. 종료
		mbh.closeHandler(ss);
		
		return list;
	}
	
/////////////////// 트랜잭션테스트 시작//////////////////////////////	
	// 리뷰작성
	public boolean insertReviewTest(ReviewVO rVO){
		boolean finalFlag = false;
		
		//System.out.println("ReviewDAO - 트랜잭션테스트 rVO에 있는 모든 값 : "+rVO);
		//for(String imgName : rVO.getReviewImg()) {
//			System.out.println("이미지들 : "+imgName);
		//}
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		//cnt = ss.insert("kr.co.mpnp.user.mapper.reviewMapper.insertReview",rVO);
		
		//System.out.println("넘어온 이미지 사이즈확인 : "+rVO.getReviewImg().size());
		// 넘어온 사이즈확인 1개선택 : 1
		// 미선택 : 0, 풀선택 풀취소 : 0
		// 풀선택 : 3, 풀선택 풀취소 풀선택 : 3
		// 그럼일단 rVO 이미지 확인할수있다는거니까 ㅇㅇ
		boolean reviewAddFlag = ss.insert("kr.co.mpnp.user.mapper.reviewMapper.insertReview",rVO)!=0?true:false;
		boolean imgAddFlag = false;
		boolean chkUpdateFlag = ss.update("kr.co.mpnp.user.mapper.reviewMapper.updateReviewChk",rVO.getOrderDetailId())!=0?true:false;
		
		if(reviewAddFlag && chkUpdateFlag) { // ㄱ. 리뷰insert, 리뷰chk여부update 성공
			// 리뷰가 성공적으로 들어가야 reviewId도 나오는거니까 ㅇㅇ
			
			if(rVO.getReviewImg().size()>0) { // ㄴ. ㄱ이성공했고 이미지도 있을경우
			
				String reviewId = ss.selectOne("kr.co.mpnp.user.mapper.reviewMapper.selectReviewId",rVO.getOrderDetailId());
				rVO.setReviewId(reviewId);
				
				Map<String,Object> paramMap2 = null;
				List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
				List<String> imgList = rVO.getReviewImg();
				String rId = rVO.getReviewId();
				for(String img : imgList) {
					paramMap2 = new HashMap<String,Object>();
					//System.out.println("값찍기 : "+img);
					paramMap2.put("reviewId", rId);
					paramMap2.put("reviewImg",img);
					list.add(paramMap2);
				}
				imgAddFlag = ss.insert("kr.co.mpnp.user.mapper.reviewMapper.insertReviewImg",list)==list.size()?true:false;
				
				if(imgAddFlag) { // ㄷ. ㄱ이 성공했고 이미지가 모두 잘 올라갔을경우
					finalFlag = true;
				}
				
				
			}else { // ㄴ-2. ㄱ이 성공했고 이미지가 없을경우
				finalFlag = true;
			}
			
		}else { 
			finalFlag = false;
		}
		
		if(finalFlag) {
			ss.commit();
			//System.out.println("ReviewDAO : 커밋완료");
		}else {
			ss.rollback();
			//System.out.println("ReviewDAO : 롤백ㅠㅠ");
		}
		
		mbh.closeHandler(ss);
		return finalFlag;
		
//		if(rVO.getReviewImg().size()>0 && reviewAddFlag && chkUpdateFlag) { // 이미지가 있는경우
//			// 리뷰가 성공적으로 들어가야 reviewId도 나오는거니까 ㅇㅇ
//			String reviewId = ss.selectOne("kr.co.mpnp.user.mapper.reviewMapper.selectReviewId",rVO.getOrderDetailId());
//			rVO.setReviewId(reviewId);
//			
//			Map<String,Object> paramMap2 = null;
//			List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
//			List<String> imgList = rVO.getReviewImg();
//			String rId = rVO.getReviewId();
//			for(String img : imgList) {
//				paramMap2 = new HashMap<String,Object>();
//				System.out.println("값찍기 : "+img);
//				paramMap2.put("reviewId", rId);
//				paramMap2.put("reviewImg",img);
//				list.add(paramMap2);
//			}
//			imgAddFlag = ss.insert("kr.co.mpnp.user.mapper.reviewMapper.insertReviewImg",list)==list.size()?true:false;
//			
//			if(imgAddFlag) {
//				finalFlag = true;
//			}
//			
//		}else { // 이미지가 없는경우
//			
//		}
	
	}
	
/////////////////// 트랜잭션테스트 끝 //////////////////////////////	

	
	
	// 리뷰작성
	public boolean insertReview(ReviewVO rVO){
		boolean flag = false;
		int cnt = 0; // 쿼리문실행결과 담기 ?? 여기에하는게 맞던가
		
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		///////////////////////////////////////
		//System.out.println("insertReview의 ss : "+ss);
		///////////////////////////////////////
		cnt = ss.insert("kr.co.mpnp.user.mapper.reviewMapper.insertReview",rVO);
		// 근데 여기서 하나하나 커밋 롤백하면 트랜잭션이 아니지않나??
		// 서비스에서 DAO를 객체화해서 모든 메서드를 실행시킬때마다 넣어줘야하나?? 아닌거같은데..
		// commit, rollback은 ss에있는건데 따로 메서드를 만들어?? rDAO.commit()하면 
		// public void commit(
		//   ss.commit() 이렇게..? 이게 맞아?
		//}
		//
		if(cnt!=0) {
			flag = true;
			//ss.commit();
		}
		//else {
		//	ss.rollback();
		//}
		
		mbh.closeHandler(ss);
		return flag;
	}
	
	
	
	
	
	
	
	
	// 리뷰코드조회 select
	public String selectReviewId(String odId) {
		String rid = "";
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		///////////////////////////////////////
		//System.out.println("selectReviewId의 ss : "+ss);
		///////////////////////////////////////
		
		//System.out.println("여기는 dao 의 selectReviewId :"+odId);
		rid = ss.selectOne("kr.co.mpnp.user.mapper.reviewMapper.selectReviewId",odId);
		
		mbh.closeHandler(ss);
		return rid;
	}
	
	// 리뷰이미지 추가
	public boolean insertReviewImgs(ReviewVO rVO) {
		boolean flag = false;
		int cnt = 0;
		
		
		Map<String,Object> paramMap2 = null;
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		List<String> imgList = rVO.getReviewImg();
		String rId = rVO.getReviewId();
		for(String img : imgList) {
			paramMap2 = new HashMap<String,Object>();
			//System.out.println("값찍기 : "+img);
			paramMap2.put("reviewId", rId);
			paramMap2.put("reviewImg",img);
			list.add(paramMap2);
		}
		//paramMap.put("imgList", list);
		
		
		//for(int i=0;i<list.size();i++) {
			//System.out.println("값찍기 : "+list.get(i));
		//}
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		///////////////////////////////////////
		//System.out.println("insertReviewImgs의 ss : "+ss);
		///////////////////////////////////////
		
		//System.out.println("DAO123line 여기까지왔음");
		cnt = ss.insert("kr.co.mpnp.user.mapper.reviewMapper.insertReviewImg",list);
		if(cnt==list.size()) {
			flag = true;
		//	ss.commit();
		}
		//else {
		//	ss.rollback();
		//}
		
		
		mbh.closeHandler(ss);
		return flag;
	}
	
	// 리뷰플래그 Y로 update
	public boolean updateReviewChk(String odId) {
		boolean flag = false;
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		///////////////////////////////////////
		//System.out.println("updateReviewChk의 ss : "+ss);
		///////////////////////////////////////
		
		
		cnt = ss.update("kr.co.mpnp.user.mapper.reviewMapper.updateReviewChk",odId);
		if(cnt!=0) {
			flag = true;
		//	ss.commit();
		}
		//else {
		//	ss.rollback();
		//}
		
		mbh.closeHandler(ss);
		return flag;
	}
	
	
	
	
	
	// 리뷰상세페이지
	public ReviewDomain selectDetail(String reviewId){
		ReviewDomain rDomain = null;
		
		
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		rDomain = ss.selectOne("kr.co.mpnp.user.mapper.reviewMapper.selectReviewDetail",reviewId);
		
		mbh.closeHandler(ss);
		return rDomain;
	}
	
	// 리뷰수정
	
	
	
	public boolean updateReview(ReviewVO rVO){
		
		int cnt = 0; // 쿼리문실행결과 담기 ?? 여기에하는게 맞던가
		
		return cnt!=0?true:false;
	}
	
	
	
	
	
	// 리뷰삭제
	public boolean deleteReview(String rId){
		int cnt = 0; // 쿼리문실행결과 담기 ?? 여기에하는게 맞던가
		boolean flag = false;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		cnt = ss.update("kr.co.mpnp.user.mapper.reviewMapper.deleteReview",rId);
		if(cnt!=0) {
			flag = true;
			ss.commit();
		}
		else {
			ss.rollback();
		}
		
		
		mbh.closeHandler(ss);
		return flag;
	}
	
	
	
	
	
	
	
	
	
//	public void commitTest() {
//		MyBatisHandler mbh = MyBatisHandler.getInstance();
//		SqlSession ss = mbh.getHandler();
//		ss.commit();
//		//System.out.println("DAO에 있는 commit 까지 옴");
//		mbh.closeHandler(ss);
//	}
//	public void rollback() {
//		MyBatisHandler mbh = MyBatisHandler.getInstance();
//		SqlSession ss = mbh.getHandler();
//		ss.rollback();
//		mbh.closeHandler(ss);
//	}
	
}
