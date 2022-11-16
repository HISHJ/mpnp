package kr.co.mpnp.admin.service;

import java.util.List;

import kr.co.mpnp.admin.dao.AdminOrderDAO;
import kr.co.mpnp.admin.domain.AdminOrderDomain;
import kr.co.mpnp.admin.domain.AdminOrderPrdDomain;
import kr.co.mpnp.admin.vo.AdminOrderVO;

public class AdminOrderService {
	
	public AdminOrderService() {
		
	}
	
	
	// 주문조회 서비스
	public List<AdminOrderDomain> searchOrderList(AdminOrderVO aoVO) {
		List<AdminOrderDomain> list = null;

		//AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		// list =roDAO.selectOrderList();

		return list;
	}// searchOrderList

	// 해당주문코드 상품(주문코드)
	public List<AdminOrderPrdDomain> searchOrderPrdDetail(String orID) {
		List<AdminOrderPrdDomain> list = null;
		
		

		return list;
	}// searchOrderDetail

	// 주문상세(주문코드)
	public AdminOrderDomain searchOrderDetail(String orID) {
		AdminOrderDomain aoDom = null;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
	//	aoDom= roDAO.selectOrderDetail(orID);

		return aoDom;
	}// selectOrderDetail

	// 주문상태변경
	public int modifyOrderStatus(AdminOrderVO aoVO) {
		int cnt = 0;

		return cnt;
	}// modifyOrderStatus

}// class
