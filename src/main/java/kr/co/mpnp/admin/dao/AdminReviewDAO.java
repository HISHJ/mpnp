package kr.co.mpnp.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.domain.AdminReviewDomain;
import kr.co.mpnp.admin.vo.AdminReviewVO;
import kr.co.mpnp.handler.MyBatisHandler;


public class AdminReviewDAO {

	private static AdminReviewDAO arDAO;
	
	private AdminReviewDAO() {
	}
	
	public static AdminReviewDAO getInstance() {
		if(arDAO==null) {
			arDAO = new AdminReviewDAO();
		}
		return arDAO;
	}
	
	// 리뷰조회
	public List<AdminReviewDomain> selectReviewList(AdminReviewVO arVO){
		List<AdminReviewDomain> list = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리실행 insert("Mapper아이디",값)
		System.out.println("AdminReviewDAO : "+arVO);
		
		list = ss.selectList("kr.co.mpnp.admin.mapper.reviewMapper.selectReviewList",arVO);
		//System.out.println("위치 AdminReviewDAO : "+list.hashCode());
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}
	
	// 리뷰상세보기
	public AdminReviewDomain selectReviewDetail(String reviewId){
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리실행 insert("Mapper아이디",값)
		System.out.println("AdminReviewDAO : "+reviewId);
		
		AdminReviewDomain arDomain = ss.selectOne("kr.co.mpnp.admin.mapper.reviewMapper.selectReviewDetail",reviewId);
		System.out.println(arDomain.toString());
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return arDomain;
	}
	
	
	public void insertReview(AdminReviewVO arVO){
		
		// 이전엔 메서드안에서 커넥션얻고 뭐얻고뭐얻고 했는데 이젠 MyBatis얻는다
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		System.out.println("AdminReviewDAO mbh : "+ mbh);
		
		SqlSession ss = mbh.getHandler();
		System.out.println("AdminReviewDAO ss : "+ss);
		
		// 2. 쿼리실행 insert("Mapper아이디",값)
		System.out.println("여기서?");
		System.out.println("arVO : "+arVO);
		
		//int cnt = ss.insert("kr.co.mpnp.admin.dao.mapper.reviewMapper.insertReview",arVO);
		int cnt = ss.insert("kr.co.mpnp.admin.dao.mapper.reviewMapper.insertReview");
		System.out.println(cnt);
		//System.out.println(ss.insert("kr.co.mpnp.admin.dao.mapper.reviewMapper.insertReview",arVO)==null?"oo":"xx");

		// autocommit이 안되기때문에 직접 해줘야한다.
		// 내가원한만큼 실행됐을때를 비교하기위해 cnt==1 ㅇㅇ
		if(cnt==1) {
			System.out.println(cnt+"건 추가");
			ss.commit();
		}else {
			System.out.println("데이터추가X");
		}
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		
	}
	
	public int deleteReview(String reviewId){
		int cnt = 0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		cnt = ss.delete("kr.co.mpnp.admin.mapper.reviewMapper.deleteReview",reviewId);
		
		if(cnt==1) {
			System.out.println(reviewId+" 후기 삭제");
			ss.commit();
		}else {
			System.out.println("삭제실패");
			// 실패할경우가 뭐가있지?
		}
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	
	
	
	
	
	
}