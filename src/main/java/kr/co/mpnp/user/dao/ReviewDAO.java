package kr.co.mpnp.user.dao;

import java.util.List;

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
		System.out.println("ReviewDAO : session - "+ss);
		
		// 2. 쿼리수행
		list = ss.selectList("kr.co.mpnp.user.mapper.reviewMapper.writableReview",id);
		
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
		System.out.println("ReviewDAO : session - "+ss);
		
		// 2. 쿼리수행
		list = ss.selectList("kr.co.mpnp.user.mapper.reviewMapper.writenReview",id);
		
		// 3. 종료
		mbh.closeHandler(ss);
		
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
