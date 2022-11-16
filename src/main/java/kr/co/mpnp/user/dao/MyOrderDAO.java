package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MyOrderDomain;
import kr.co.mpnp.user.vo.MyOrderVO;
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
	public List<MyOrderDomain> selectOrderAList(MyOrderVO moVO) {
		List<MyOrderDomain> list = null;
		
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
	

		try {
			// 쿼리 실행
			list = ss.selectList("kr.co.nyangpoom.myOrderMapper.selectOrderAList", moVO);
			System.out.println(list);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 연결끊기
		mbh.closeHandler(ss);


		return list;
	}// selectOrderList

	//검증완료
	// 주무누내역 상세조회(아이디, 주문코드)
	public MyOrderDomain selectOrderDetail(String ordId) {
		MyOrderDomain moDom = null;
		
		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		//쿼리 실행
		moDom = ss.selectOne("kr.co.nyangpoom.myOrderMapper.selectOrderDetail", ordId);
		System.out.println(moDom);
		// 연결끊기
		mbh.closeHandler(ss);
		

		return moDom;
	}// selectOrderDetail

	///검증완료
	// 기간 내 주문상태 조회 - count(날짜, 주문상태)
	//--해당 주문코드의 총 주문상태... (모르겠다..)
	//일단 여기서는 count하는게 말이 안되고, 주문상태를 조회해
	//그리고 java에서  각 주문상태의 갯수만큼 반복문을 돌려서 count친 다음 출력ㅎ해
	public List<String> selectOrderStatusCnt(MyOrderVO moVO) {
		List<String> orderStatus = null;
	    
	 // MyBatisHandler얻기
	 		MyBatisHandler mbh = MyBatisHandler.getInstance();
	 		SqlSession ss = mbh.getHandler();
	 	

	 		try {
	 			// 쿼리 실행
	 			orderStatus= ss.selectList("kr.co.nyangpoom.myOrderMapper.selectOrderStatusCnt", moVO);
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
	public int selectPriceIndivisual(String ordId) {
		int price = 0;
		
		// MyBatisHandler얻기
 		MyBatisHandler mbh = MyBatisHandler.getInstance();
 		SqlSession ss = mbh.getHandler();
 	

 		try {
 			// 쿼리 실행
 			price= ss.selectOne("kr.co.nyangpoom.myOrderMapper.selectPriceIndivisual", ordId);
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
		 			totalPrice= ss.selectOne("kr.co.nyangpoom.myOrderMapper.selectPriceTotal", orID);
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
	//1) 주문 개별 취소 (cascade적용한 상태- 주문상세 ~리뷰까지 (주문상세코드)
	public int deleteCancelIndivisual(String ordId) {
		int cnt = 0;
		
		// MyBatisHandler얻기
 		MyBatisHandler mbh = MyBatisHandler.getInstance();
 		SqlSession ss = mbh.getHandler();

 		try {
 			// 쿼리 실행
 			 cnt= ss.delete("kr.co.nyangpoom.myOrderMapper.deleteCancelIndivisual", ordId);
 			if(cnt==1) {
 			 System.out.println(cnt + "건 삭제");
 			ss.commit();
 			}else {
 				System.out.println("삭제 실패");
 			}
 		} catch (PersistenceException pe) {
 			pe.printStackTrace();
 		}

 		// 연결끊기
 		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	//검증완료
	//2) 주문전체취소 (주문코드) -  ((cascade적용한 상태- 주문테이블 ~ 리뷰까지 삭제됨) -->
	public int deleteCancelTotal(String orID) {
		int cnt = 0;;
		
		// MyBatisHandler얻기
 		MyBatisHandler mbh = MyBatisHandler.getInstance();
 		SqlSession ss = mbh.getHandler();

 		try {
 			// 쿼리 실행
 			 cnt= ss.delete("kr.co.nyangpoom.myOrderMapper.deleteCancelTotal", orID);
 			if(cnt==1) {
 			 System.out.println(cnt + "건 삭제");
 			 ss.commit();
 			}else {
 				System.out.println("삭제 실패");
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
 			totalCnt = ss.selectOne("kr.co.nyangpoom.myOrderMapper.selectTotalPageCount");
 			System.out.println(totalCnt);
 		} catch (PersistenceException pe) {
 			pe.printStackTrace();
 		}

 		// 연결끊기
 		mbh.closeHandler(ss);

		return totalCnt;
	}// selectTotalCount
	
//	 public static void main(String[] args) {
//	  MyOrderDAO moDAO = MyOrderDAO.getInstance();
//	//moDAO.deleteCancelIndivisual("od_0000005");
//	 // moDAO.deleteCancelTotal("or_0000039");
////	  MyOrderVO m = new MyOrderVO();
////	  m.setFindStartDate("2022-11-01");
////	  m.setFindEndDate("2022-11-15");
////	  m.setId("id001");
////	  moDAO.selectOrderStatusCnt(m);
// // moDAO.selectPriceIndivisual("od_0000005");
////	  moDAO.selectPriceTotal("or_0000004");

	  
	// }//main
}// class
