package kr.co.mpnp.admin.service;

import java.util.List;

import kr.co.mpnp.admin.dao.DashBoardDAO;
import kr.co.mpnp.admin.domain.DashCategoryDomain;
import kr.co.mpnp.admin.domain.DashDailySalesDomain;
import kr.co.mpnp.admin.domain.DashMemberDomain;
import kr.co.mpnp.admin.domain.DashMonthlySalesDomain;

public class DashBoardService {

	// 등급별 회원수
	public List<DashMemberDomain> searchMemByGrade() {
		List<DashMemberDomain> list = null;
		
		DashBoardDAO dbDAO = DashBoardDAO.getInstance();
		list = dbDAO.selectMemByGrade();
		
		return list;
	}
	
	// 카테고리별 판매추이 
	public List<DashCategoryDomain> searchCategorySales(String category) {
		List<DashCategoryDomain> list = null;
		
		DashBoardDAO dbDAO = DashBoardDAO.getInstance();
		list = dbDAO.selectCountByCategory(category);
		
		return list;
	}
	
	// 일별매출
	public List<DashDailySalesDomain> searchDailySales() {
		List<DashDailySalesDomain> list = null;
		
		DashBoardDAO dbDAO = DashBoardDAO.getInstance();
		list = dbDAO.selectDailySales();
		
		return list;
	}
	
	// 월별매출
	public List<DashMonthlySalesDomain> searchMonthlySales() {
		List<DashMonthlySalesDomain> list = null;
		DashBoardDAO dbDAO = DashBoardDAO.getInstance();
		list = dbDAO.selectMonthlySales();
		return list;
	}
	
}
