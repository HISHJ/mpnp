package kr.co.mpnp.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.domain.AdminGradeDomain;
import kr.co.mpnp.admin.vo.AdminGradeVO;
import kr.co.mpnp.handler.MyBatisHandler;

//설빈
public class AdminGradeDAO {
	private static AdminGradeDAO agDAO;

	// 싱글톤
	private AdminGradeDAO() {

	}// AdminOrderDAO

	public static AdminGradeDAO getInstance() {
		if (agDAO == null) {
			agDAO = new AdminGradeDAO();
		}

		return agDAO;
	}// getInstance()

//////////////////////////////////////////////////////////////////////////////////
	//성공
	// 등급 전체조회
	public List<AdminGradeDomain> selectGrade() {
		List<AdminGradeDomain> list = null;

		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		// 쿼리 실행
		list = ss.selectList("kr.co.mpnp.gradeMapper.selectGrade");

		for (AdminGradeDomain aod : list) {
			System.out.println(aod);
		}

		// 연결끊기
		mbh.closeHandler(ss);

		return list;
	}// selectGrade

//////////////////////////////////////////////////////////////////////////////////
	//성공
	// 등급추가
	public int insertGrade(AdminGradeVO agVO) {
		int cnt = 0;

		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		// 쿼리실행
		cnt = ss.insert("kr.co.mpnp.gradeMapper.insertGrade", agVO);
		if (cnt == 1) {
			ss.commit();
			System.out.println(cnt + "추가");
		} else {
			System.out.println("등급 추가 실패");
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return cnt;
	}// insertGrade

//////////////////////////////////////////////////////////////////////////////////
	//성공
	// 등급상세보기(등급코드)
	public AdminGradeDomain selectGradeDetail(String gId) {
		AdminGradeDomain agDom = null;

		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		try {
			agDom = ss.selectOne("kr.co.mpnp.gradeMapper.selectGradeDetail", gId);
			System.out.println(agDom);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 연결끊기
		mbh.closeHandler(ss);

		return agDom;
	}// selectGrade

	//////////////////////////////////////////////////////////////////////////////////
	// 등급정보변경
	public int updateGradeInfo(AdminGradeVO agVO) {
		int cnt = 0;
		
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		cnt = ss.update("kr.co.mpnp.gradeMapper.updateGradeInfo",agVO);
		if(cnt==1) {
			ss.commit();
			System.out.println(cnt+"건 변경되었습니다");
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return cnt;
	}// updateGradeInfo

//////////////////////////////////////////////////////////////////////////////////
	//검증중
	// 등급삭제(등급변경)
	public int updateGrade(AdminGradeVO agVO) {
		int cnt = 0;
		
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		cnt = ss.update("kr.co.mpnp.gradeMapper.updateGrade",agVO);
		if(cnt==1) {
			ss.commit();
			System.out.println(cnt+"건 변경되었습니다");
		}
		// 연결끊기
		mbh.closeHandler(ss);		
		

		return cnt;
	}// updateGrade

	  public static void main(String[] args) { 
		AdminGradeDAO ag = new AdminGradeDAO(); 
	  // AdminGradeVO aVO = new AdminGradeVO();
	  //aVO.setGradeName("VVIP");
	 // aVO.setGradeId("G4");
	  //ag.selectGradeDetail("G1");
	 
	  
	 // ag.updateGrade(aVO);
	  
	  }//main

}// class
