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

		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		list =roDAO.selectOrderList(aoVO);

		return list;
	}// searchOrderList
	
	//임시 할인율
	public int searchDiscountRate(String id) {
		int discount = 0;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		discount = roDAO.selectDiscountRate(id);
		
		return discount;
	}//

	// 해당주문코드 상품(주문코드)
	public List<AdminOrderPrdDomain> searchOrderPrdDetail(String orID) {
		List<AdminOrderPrdDomain> list = null;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		list = roDAO.selectOrderPrdDetail(orID);
	
		return list;
	}// searchOrderDetail

	// 주문상세(주문코드)
	public AdminOrderDomain searchOrderDetail(String orID) {
		AdminOrderDomain aoDom = null;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		aoDom = roDAO.selectOrderDetail(orID);

		return aoDom;
	}// selectOrderDetailr
	
	//주문상세 배송지
	public AdminOrderDomain searchOrderShip(String orID) {
        AdminOrderDomain aoDom = null;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		aoDom = roDAO.selectOrderShip(orID);
		
		return aoDom;
	}

	// 주문상태변경(트랜잭션)
	public int modifyOrderStatus(AdminOrderVO aoVO) {
		int cnt = 0;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		cnt = roDAO.updateOrderStatus(aoVO);

		return cnt;
	}// modifyOrderStatus
	
	//가격 감산쿼리
	public int searchPriceIndivisual(String orderId) {
		int price = 0;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		price = roDAO.selectPriceIndivisual(orderId);
		
		return price;
		
	}//
	
	//구매확정일 업데이트
	public int modifyCompletionDate(AdminOrderVO aoVO) {
		int cnt =0;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		cnt = roDAO.updateCompletionDate(aoVO);
		
		return cnt;
	}//
	
	//구매확정인 주문코드 주문후기 업데이트(트랜잭션)
	public int modifyReviewChk(AdminOrderVO aoVO) {
		int cnt =0;
		
		AdminOrderDAO roDAO = AdminOrderDAO.getInstance();
		cnt =roDAO.updateReviewChk(aoVO);
		
		return cnt;
	}

}// class
