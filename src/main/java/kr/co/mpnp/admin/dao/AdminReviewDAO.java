package kr.co.mpnp.admin.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.vo.AdminReviewVO;
import kr.co.mpnp.handler.MyBatisHandler;


public class AdminReviewDAO {

	public AdminReviewDAO() {
		
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
		
		// 지금은 간단히 본다고 DAO에서 썼지만 이메서드를 service에서 부르면된다.
		
	}
	
	public void deleteReview(String reviewId){
		
		// 이전엔 메서드안에서 커넥션얻고 뭐얻고뭐얻고 했는데 이젠 MyBatis얻는다
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		System.out.println("AdminReviewDAO mbh : "+ mbh);
		
		SqlSession ss = mbh.getHandler();
		System.out.println("AdminReviewDAO ss : "+ss);
		
		// 2. 쿼리실행 insert("Mapper아이디",값)
		System.out.println("여기서?");
		int cnt = ss.delete("kr.co.mpnp.admin.dao.mapper.reviewMapper.deleteReview",reviewId);
		
		if(cnt==1) {
			System.out.println(reviewId+"번 후기 삭제");
			ss.commit();
		}else {
			System.out.println("데이터추가X");
		}
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		// 지금은 간단히 본다고 DAO에서 썼지만 이메서드를 service에서 부르면된다.
		
	}
	
	
	
	public static void main(String[] args) {
		
		//AdminReviewDAO arDAO = new AdminReviewDAO();
		//System.out.println(arVO.toString());
		
		AdminReviewDAO arDAO = new AdminReviewDAO();
		AdminReviewVO arVO = new AdminReviewVO("AdminReviewDAO123123123","123123","55555","od0003");
		System.out.println("ㅇㅇㅇㅇㅇㅇㅇ"+arVO);
		arDAO.insertReview(arVO);
		//arDAO.deleteReview("r0013");
		
		
	}
	
	
	
	
	
}