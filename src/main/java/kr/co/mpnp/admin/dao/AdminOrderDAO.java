package kr.co.mpnp.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.domain.AdminOrderDomain;
import kr.co.mpnp.admin.domain.AdminOrderPrdDomain;
import kr.co.mpnp.admin.vo.AdminOrderVO;
import kr.co.mpnp.handler.MyBatisHandler;
//다이나믹쿼리 보류. 그 외 검증완료
//구매확정으로 변경 시 구매일 추가되는 쿼리는 사용자에서도 쓸 수 있음
//설빈
public class AdminOrderDAO {
	private static AdminOrderDAO aoDAO;

	// 싱글톤
	private AdminOrderDAO() {

	}// AdminOrderDAO

	public static AdminOrderDAO getInstance() {
		if (aoDAO == null) {
			aoDAO = new AdminOrderDAO();
		}

		return aoDAO;
	}// getInstance()

	//보류
	  // 주문조회(다이나믹) 
	public List<AdminOrderDomain> selectOrderList(AdminOrderVO aoVO) {
	       List<AdminOrderDomain> list = null;
	    // MyBatisHandler얻기
			MyBatisHandler mbh = MyBatisHandler.getInstance();
			SqlSession ss = mbh.getHandler();
			// 쿼리 실행
			list = ss.selectList("kr.co.mpnp.adminOrderMapper.selectOrderList",aoVO);

			System.out.println(list);

			// 연결끊기
			mbh.closeHandler(ss);
	  return list;
	  
	  }// end selectOrderList
	
	//////////////////////////
	 
	//검증
	// 해당 주문코드의 상품조회
	public List<AdminOrderPrdDomain> selectOrderPrdList(String odID) {
		List<AdminOrderPrdDomain> list = null;
		
		// MyBatisHandler얻기
					MyBatisHandler mbh = MyBatisHandler.getInstance();
					SqlSession ss = mbh.getHandler();
					// 쿼리 실행
					list = ss.selectList("kr.co.mpnp.adminOrderMapper.selectOrderPrdDetail",odID);
					System.out.println(list);
					// 연결끊기
					mbh.closeHandler(ss);
		return list;
	}// selectOrderPrdList

	//검증
	// 주문상세조회
	public AdminOrderDomain selectOrderDetail(String orID) {
		AdminOrderDomain aoDom = null;

		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			aoDom = ss.selectOne("kr.co.mpnp.adminOrderMapper.selectOrderDetail", orID);
			System.out.println(aoDom);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return aoDom;
	}// selectOrderDetail

	// 주문상태변경
	//주문 완료,배송완료, 구매확정
	public int updateOrderStatus(AdminOrderVO aoVO) {
		int cnt = 0;

		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		cnt = ss.update("kr.co.mpnp.adminOrderMapper.updateOrderStatus", aoVO);
		
		if(cnt == 1) { //변경 잘 됐니?
			ss.commit();
			System.out.println(aoVO.getOrderStatus()+"의 상태가 변경되었습니다");
			
		}else {
			System.out.println("해당 주문코드가 존재하지 않습니다");
		}//en else

		// 연결끊기
		mbh.closeHandler(ss);
		

		return cnt;

	}// updateOrderStatus
	
	//검증완료
	//주문상태가 구매확정인 경우 구매확정일 업데이트(주문코드)
	public int updateCompletionDate(String orID) {
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		cnt = ss.update("kr.co.mpnp.adminOrderMapper.updateCompletionDate",orID);
		
		if(cnt == 1) { //변경 잘 됐니?
			ss.commit();
			System.out.println("구매확정일이 추가되었습니다.");
			
		}else {
			System.out.println("구매확정 대상이 아닙니다. ");
		}//en else

		// 연결끊기
		mbh.closeHandler(ss);
		
		return cnt;
		
	}//
	
	//검증완료
	//구매확정인 주문코드는 주문상세에서 주문후기를 'N''로 바꿔
	public int updateReviewChk() {
		int cnt=0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		cnt = ss.update("kr.co.mpnp.adminOrderMapper.updateReviewChk");
		
		if(cnt > 1) { //변경 잘 됐니?
			ss.commit();
			System.out.println("N으로 업데이트");
			
		}else {
			System.out.println("구매확정 아님 ");
		}//en else

		// 연결끊기
		mbh.closeHandler(ss);
		
		
		
		return cnt;
		
	}//

//	public static void main(String[] args) {
////		String id = "or_0000037";
//		AdminOrderDAO aod = new AdminOrderDAO();
//		AdminOrderVO aVO = new AdminOrderVO();
//		aVO.setOrderStatus("구매확정");
//		aVO.setOrderID("or_0000028");
//		//aod.updateOrderStatus(aVO);
//	//	aod.updateCompletionDate("or_0000028");
//		aod.updateReviewChk();
////		//aod.selectOrderDetail(id);
////		//aod.selectOrderPrdList(id);
////		AdminOrderVO aVO = new AdminOrderVO();
////		 aVO.setOrderStatus("구매확정");
////		aVO.setOrderID(id);
////		//aod.updateOrderStatus(aVO);
//////		String a = aVO.getOrderStatus();
//////		if(a.equals("구매확정")) {
//////		aod.updateCompletionDate();
//////		}else {
//////			System.out.println("실패");
//////		}
////		
////		aod.selectOrderList(aVO);
//		
		

	//}//main

}
