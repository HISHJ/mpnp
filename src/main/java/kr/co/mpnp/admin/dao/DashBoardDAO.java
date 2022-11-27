package kr.co.mpnp.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.domain.DashCategoryDomain;
import kr.co.mpnp.admin.domain.DashDailySalesDomain;
import kr.co.mpnp.admin.domain.DashMemberDomain;
import kr.co.mpnp.admin.domain.DashMonthlySalesDomain;
import kr.co.mpnp.handler.MyBatisHandler;

public class DashBoardDAO {

	private static DashBoardDAO dbDAO;
	
	private DashBoardDAO() {
	}
	
	public static DashBoardDAO getInstance() {
		if(dbDAO==null) {
			dbDAO = new DashBoardDAO();
		}
		return dbDAO;
	}
	
	// 등급별 회원수 조회
	public List<DashMemberDomain> selectMemByGrade(){
		List<DashMemberDomain> list = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리실행 insert("Mapper아이디",값)
		
		list = ss.selectList("kr.co.mpnp.admin.mapper.dashBoardMapper.selectMemByGrade");
		//System.out.println("위치 AdminReviewDAO : "+list.hashCode());
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}
	
	// 카테고리별 조회
	public List<DashCategoryDomain> selectCountByCategory(String category){
		List<DashCategoryDomain> list = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리실행 insert("Mapper아이디",값)
		
		list = ss.selectList("kr.co.mpnp.admin.mapper.dashBoardMapper.selectCountByCategory",category);
		//System.out.println("위치 AdminReviewDAO : "+list.hashCode());
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}
	
	
	
	
	
	
	
	// 일별매출 조회
	public List<DashDailySalesDomain> selectDailySales(){
		List<DashDailySalesDomain> list = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리실행 insert("Mapper아이디",값)
		
		list = ss.selectList("kr.co.mpnp.admin.mapper.dashBoardMapper.selectDailySales");
		//System.out.println("위치 AdminReviewDAO : "+list.hashCode());
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}
	
	// 월별매출 조회
	public List<DashMonthlySalesDomain> selectMonthlySales(){
		List<DashMonthlySalesDomain> list = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리실행 insert("Mapper아이디",값)
		
		list = ss.selectList("kr.co.mpnp.admin.mapper.dashBoardMapper.selectMonthlySales");
		//System.out.println("위치 AdminReviewDAO : "+list.hashCode());
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}
	
	
}
