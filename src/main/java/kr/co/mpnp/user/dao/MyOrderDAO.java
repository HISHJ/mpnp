package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MyOrderDomain;
//설빈
//모든 쿼리 검증 완료
public class MyOrderDAO {
	private static MyOrderDAO moDAO;

	// 싱글톤
	private MyOrderDAO() {

	}// AdminOrderDAO

	public static MyOrderDAO getInstance() {
		if (moDAO == null) {
			moDAO = new MyOrderDAO();
		}

		return moDAO;
	}// getInstance()

	//검증
	// 기간별 주문내역조회
	//골든에서는 값이 다 들어오는데 왜 여기는 부분적으로 들어오는지 모르겠다
	public List<MyOrderDomain> selectOrderAList(String orID) {
		List<MyOrderDomain> list = null;
		
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
	

		try {
			// 쿼리 실행
			list = ss.selectList("kr.co.mpnp.myOrderMapper.selectOrderAllList", orID);
			System.out.println(list);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 연결끊기
		mbh.closeHandler(ss);


		return list;
	}// selectOrderList

	//검증완료
	// 주무누내역 상세조회(주문코드)
	public MyOrderDomain selectOrderDetail(String ordId) {
		MyOrderDomain moDom = null;
		
		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		//쿼리 실행
		moDom = ss.selectOne("kr.co.mpnp.myOrderMapper.selectOrderDetail", ordId);
		System.out.println(moDom);
		// 연결끊기
		mbh.closeHandler(ss);
		

		return moDom;
	}// selectOrderDetail
	
	//상세 상품편
	public  List<MyOrderDomain> selectOrderPrdDetail(String orId) {
		List<MyOrderDomain> list = null;
		
		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		//쿼리 실행
		list = ss.selectList("kr.co.mpnp.myOrderMapper.selectOrderPrdDetail", orId);
		System.out.println(list);
		// 연결끊기
		mbh.closeHandler(ss);
		

		return list;
	}// selectOrderDetail
	
	//주문상세배송지
	public  MyOrderDomain selectOrderShip(String orId) {
		MyOrderDomain orDom = null;
		
		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		//쿼리 실행
		orDom = ss.selectOne("kr.co.mpnp.myOrderMapper.selectOrderShip", orId);
		System.out.println(orDom);
		// 연결끊기
		mbh.closeHandler(ss);
		

		return orDom;
	}// selectOrderDetail
	
	
	//할인율 구학
	public int selectDiscountRate(String id) {
		int dRate =0;
		
		// 핸들러 얻기
				// MyBatisHandler얻기
				MyBatisHandler mbh = MyBatisHandler.getInstance();
				SqlSession ss = mbh.getHandler();
				
				//쿼리 실행
				dRate= ss.selectOne("kr.co.mpnp.myOrderMapper.selectDiscountRate", id);
				System.out.println(dRate);
				// 연결끊기
				mbh.closeHandler(ss);
				
				return dRate;
		
	}
	
	
	///검증완료
	// 기간 내 주문상태 조회 - count(날짜, 주문상태)
	//--해당 주문코드의 총 주문상태... (모르겠다..)
	//일단 여기서는 count하는게 말이 안되고, 주문상태를 조회해
	//그리고 java에서  각 주문상태의 갯수만큼 반복문을 돌려서 count친 다음 출력ㅎ해
	public List<String> selectOrderStatusCnt(String id) {
		List<String> orderStatus = null;
	    
	 // MyBatisHandler얻기
	 		MyBatisHandler mbh = MyBatisHandler.getInstance();
	 		SqlSession ss = mbh.getHandler();
	 	

	 		try {
	 			// 쿼리 실행
	 			orderStatus= ss.selectList("kr.co.mpnp.myOrderMapper.selectOrderStatusCnt", id);
	 			System.out.println(orderStatus);
	 		} catch (PersistenceException pe) {
	 			pe.printStackTrace();
	 		}

	 		// 연결끊기
	 		mbh.closeHandler(ss);
	    
	    

		return orderStatus;

	} // selectOrderStatusCnt
	
	//검증완료
	//////////////////////////가격감산을 위한 쿼리
	public int selectPriceIndivisual(String orId) {
		int price = 0;
		
		// MyBatisHandler얻기
 		MyBatisHandler mbh = MyBatisHandler.getInstance();
 		SqlSession ss = mbh.getHandler();
 	

 		try {
 			// 쿼리 실행
 			price= ss.selectOne("kr.co.mpnp.myOrderMapper.selectPriceIndivisual", orId);
 			System.out.println(price);
 		} catch (PersistenceException pe) {
 			pe.printStackTrace();
 		}

 		// 연결끊기
 		mbh.closeHandler(ss);
		
		return price;
	}//selectPriceIndivisual
	
	//검증완료
	/////////해당 주문코드의 주문전체 가격조회(주문코드)
	public int selectPriceTotal(String orID) {
		int totalPrice=0;
		
		// MyBatisHandler얻기
		 		MyBatisHandler mbh = MyBatisHandler.getInstance();
		 		SqlSession ss = mbh.getHandler();

		 		try {
		 			// 쿼리 실행
		 			totalPrice= ss.selectOne("kr.co.mpnp.myOrderMapper.selectPriceTotal", orID);
		 			System.out.println(totalPrice);
		 		} catch (PersistenceException pe) {
		 			pe.printStackTrace();
		 		}

		 		// 연결끊기
		 		mbh.closeHandler(ss);
		return totalPrice;
		
	}
	
	////////////주문취소 쿼리들
	//검증완료
	//1) 주문 개별 취소-주문상세코드 (cascade적용한 상태- 주문상세 ~리뷰까지 (주문상세코드)
	public int deleteCancelIndivisual(String orDId) {
		int cnt = 0;
		
		// MyBatisHandler얻기
 		MyBatisHandler mbh = MyBatisHandler.getInstance();
 		SqlSession ss = mbh.getHandler();

 		try {
 			// 쿼리 실행
 			 cnt= ss.delete("kr.co.mpnp.myOrderMapper.deleteCancelIndivisual", orDId);
 			if(cnt==1) {
 			 System.out.println(cnt + "건 삭제(선택)");
 			ss.commit();
 			}else {
 				System.out.println("삭제 실패(선택)");
 			}
 		} catch (PersistenceException pe) {
 			pe.printStackTrace();
 		}

 		// 연결끊기
 		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	//검증완료
	//2) 주문전체취소 주문코드) -  ((cascade적용한 상태- 주문테이블 ~ 리뷰까지 삭제됨) -->
	public int deleteCancelTotal(String orId) {
		int cnt = 0;;
		
		// MyBatisHandler얻기
 		MyBatisHandler mbh = MyBatisHandler.getInstance();
 		SqlSession ss = mbh.getHandler();

 		try {
 			// 쿼리 실행
 			 cnt= ss.delete("kr.co.mpnp.myOrderMapper.deleteCancelTotal", orId);
 			if(cnt==1) {
 			 System.out.println(cnt + "건 삭제(전체 주문)");
 			 ss.commit();
 			}else {
 				System.out.println("삭제 실패(전체 주문)");
 			}
 		} catch (PersistenceException pe) {
 			pe.printStackTrace();
 		}

 		// 연결끊기
 		mbh.closeHandler(ss);
		return cnt;
		
	} 
	

	//검증완료
	/////////// 페이징
	// 전체 게시물 수 조회
	public int selectTotalPageCount() {
		int totalCnt = 0;
		
		 // MyBatisHandler얻기
 		MyBatisHandler mbh = MyBatisHandler.getInstance();
 		SqlSession ss = mbh.getHandler();
 	

 		try {
 			// 쿼리 실행
 			totalCnt = ss.selectOne("kr.co.mpnp.myOrderMapper.selectTotalPageCount");
 			System.out.println(totalCnt);
 		} catch (PersistenceException pe) {
 			pe.printStackTrace();
 		}

 		// 연결끊기
 		mbh.closeHandler(ss);

		return totalCnt;
	}// selectTotalCount
	
	 public static void main(String[] args) {
 MyOrderDAO od = MyOrderDAO.getInstance();
//  od.selectOrderAList("id010");
//  od.selectOrderDetail("or_0000045");
  
//	//moDAO.deleteCancelIndivisual("od_0000005");
//	 // moDAO.deleteCancelTotal("or_0000039");
////	  MyOrderVO m = new MyOrderVO();
////	  m.setFindStartDate("2022-11-01");
////	  m.setFindEndDate("2022-11-15");
////	  m.setId("id001");
////	  moDAO.selectOrderStatusCnt(m);
// // moDAO.selectPriceIndivisual("od_0000005");
////	  moDAO.selectPriceTotal("or_0000004");
	
 od.selectDiscountRate("id001");
	  
	 }//main
}// class
