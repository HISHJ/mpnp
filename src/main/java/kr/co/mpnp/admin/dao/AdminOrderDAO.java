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
	
	//o
	//임시 할인율 조회
	public int selectDiscountRate(String id) {
		int discount = 0;
		
		// MyBatisHandler얻기
				MyBatisHandler mbh = MyBatisHandler.getInstance();
				SqlSession ss = mbh.getHandler();
				try {
					discount = ss.selectOne("kr.co.mpnp.adminOrderMapper.selectDiscountRate", id);
					System.out.println(discount);
				} catch (PersistenceException pe) {
					pe.printStackTrace();
				}
				// 연결끊기
				mbh.closeHandler(ss);
		
		
		return discount;
	}//
	
	//주문 상세 상품조회
	public List<AdminOrderPrdDomain> selectOrderPrdDetail(String orId){
		List<AdminOrderPrdDomain> list = null;
		
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			list = ss.selectList("kr.co.mpnp.adminOrderMapper.selectOrderPrdDetail",orId);
			System.out.println(list);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);
		
		return list;
	}
	
	// 주문상세 배송지조회
	public AdminOrderDomain selectOrderShip(String orID) {
		AdminOrderDomain aoDom = null;

		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			aoDom = ss.selectOne("kr.co.mpnp.adminOrderMapper.selectOrderShip", orID);
			System.out.println(aoDom);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return aoDom;
	}// selectOrderDetail
	


	
	//주문상태 변경(트랜잭션)
	public int updateOrderStatus(AdminOrderVO aoVO) {
		int cnt = 0;
		
		 //MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		try {
		cnt = ss.update("kr.co.mpnp.adminOrderMapper.updateOrderStatus", aoVO);// 주문상태변경
		System.out.println(cnt);
		if(cnt == 1) { //변경 잘 됐니?
			ss.commit();
			System.out.println(cnt);
			int cnt2=0;
			int cnt3 = 0;
		 if("구매확정".equals(aoVO.getStatus())) {
			 
			cnt2 = ss.update("kr.co.mpnp.adminOrderMapper.updateCompletionDate",aoVO); //구매확정 시 날짜 업데ㅣ트
			System.out.println(cnt2);
			cnt3 = ss.update("kr.co.mpnp.adminOrderMapper.updateReviewChk",aoVO); // 구매확정 시 후기체크 업데ㅣ트
		   System.out.println(cnt3);
		}//end if
		   if(cnt2 !=0 && cnt3 !=0) {
			  ss.commit();
			  System.out.println("트랜잭션 성공");
		  }else {
			  ss.rollback();
			  System.out.println("트랜잭션 실패");
		  }//end else
		
		}//end 대왕if
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch	
		mbh.closeHandler(ss);
		
		return cnt;
	}//
	
	
	//검증완료
		//주문상태가 구매확정인 경우 구매확정일 업데이트(주문코드)
		public int updateCompletionDate(AdminOrderVO aoVO) {
			int cnt = 0;
			MyBatisHandler mbh = MyBatisHandler.getInstance();
			SqlSession ss = mbh.getHandler();
			
			try {
			cnt = ss.update("kr.co.mpnp.adminOrderMapper.updateCompletionDate",aoVO);
			
			if(cnt == 1) { //변경 잘 됐니?
				int cnt2=0;
				cnt2 = ss.update("kr.co.mpnp.adminOrderMapper.updateReviewChk",aoVO);
				if(cnt2 == 1) {
					ss.commit();
					System.out.println("구매확정일과 후기체크가 변경되었습니다.");
				}else {
					ss.rollback();
					System.out.println("구매확정 대상도 후기체크대상도 아닙니다. ");
				}//end else
			}//end if	
			}catch(PersistenceException pe) {
				pe.printStackTrace();
			}//end catch	
		

			// 연결끊기
			mbh.closeHandler(ss);
			
			return cnt;
			
		}//
	
	
	//가격 감산쿼리
	public int selectPriceIndivisual(String orderId) {
		int price = 0;
		
		// MyBatisHandler얻기
				MyBatisHandler mbh = MyBatisHandler.getInstance();
				SqlSession ss = mbh.getHandler();
				
				try {
					price= ss.selectOne("kr.co.mpnp.adminOrderMapper.selectPriceIndivisual", orderId);
					System.out.println(price);
				} catch (PersistenceException pe) {
					pe.printStackTrace();
				}
				// 연결끊기
				mbh.closeHandler(ss);
				
		
		return price;
	}//
	
	
	
	/////////////////////////
	
	
	
	//검증완료
	//구매확정인 주문코드는 주문상세에서 주문후기를 'N''로 바꿔
	public int updateReviewChk(AdminOrderVO aoVO) {
		int cnt=0;
		
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		cnt = ss.update("kr.co.mpnp.adminOrderMapper.updateReviewChk",aoVO);
		
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
//		String o = "or_0000144";
//		String b = "id005";
//		AdminOrderDAO aod = new AdminOrderDAO();
	    //aod.selectDiscountRate(b);
	   /// aod.selectOrderDetail(o);
	   // aod.selectOrderPrdDetail(o);
	    //aod.selectOrderShip(o);
	   // aod.selectPriceIndivisual(o);
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
