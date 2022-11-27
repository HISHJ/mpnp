package kr.co.mpnp.admin.service;

import java.util.List;

import org.json.simple.JSONObject;

import kr.co.mpnp.admin.dao.AdminGradeDAO;
import kr.co.mpnp.admin.domain.AdminGradeDomain;
import kr.co.mpnp.admin.vo.AdminGradeVO;

public class AdminGradeService {
	AdminGradeDAO agDAO = AdminGradeDAO.getInstance();
	public AdminGradeService() {

	}

	// 등급관리 전체조회
	public List<AdminGradeDomain> searchGrade() {
		List<AdminGradeDomain> list = null;

//		AdminGradeDAO agDAO = AdminGradeDAO.getInstance();
		 list =agDAO.selectGrade();

		return list;
	}// searchGrade

//	// 등급추가
//	public String addGrade(AdminGradeVO agVO) {
//		int cnt =0;
//		
//		JSONObject jsonObj = new JSONObject();
//		
//		boolean addFlag = agDAO.insertGrade(agVO)==1?true:false;
//		jsonObj.put("addFlag", addFlag);
//		return jsonObj.toJSONString();
//
//	}// addGrade
	// 등급추가
	public int addGrade(AdminGradeVO agVO) {
		int cnt =0;
		
		cnt = agDAO.insertGrade(agVO);
		
		return cnt;
		
	}// addGrade

	// 등급상세보기
	public AdminGradeDomain searchGrade(String gradeID) {
		AdminGradeDomain agDom = null;
		
//		AdminGradeDAO agDAO = AdminGradeDAO.getInstance();
		agDom = agDAO.selectGradeDetail(gradeID);
		
		return agDom;
	}// searchGrade

	// 등급정보변경
	public int modifyGradeInfo(AdminGradeVO agVO) {
		int cnt = 0;
		
		cnt = agDAO.updateGradeInfo(agVO);
		
		return  cnt;
	}// modifyGradeInfo

	// 등급삭제
	public int removeGrade(AdminGradeVO agVO) {
		int cnt = 0;
		
		cnt = agDAO.updateGrade(agVO);

		return cnt;
	}// modifyGradeInfo

}
