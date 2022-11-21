package kr.co.mpnp.user.dao;
import java.util.List;

//상품상세 추가 보류
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MyOrderDomain;
import kr.co.mpnp.user.domain.OrderDomain;
import kr.co.mpnp.user.domain.OrderShipDomain;
import kr.co.mpnp.user.vo.MyOrderVO;
import kr.co.mpnp.user.vo.OrderPrdVO;
import kr.co.mpnp.user.vo.OrderVO;
import kr.co.mpnp.user.vo.ShipNameVO;

//설빈 [모든 검증 완료]
public class OrderDAO {
	private static OrderDAO orDAO;

	// 싱글톤
	private OrderDAO() {

	}// OrderDAO

	public static OrderDAO getInstance() {
		if (orDAO == null) {
			orDAO = new OrderDAO();
		}

		return orDAO;
	}// getInstance()

	// 검증완료
 //기본배송지 설정 조회 (없으면 조회 안함
	public String selectOrderChk(OrderVO oVO) {
		String flag = "";

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
	

		try {
			// 쿼리 실행
			flag = ss.selectOne("kr.co.mpnp.orderMapper.selectOrderChk", oVO);
			System.out.println(flag + "/n");
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 연결끊기
		mbh.closeHandler(ss);

		return flag;
	}// selectOrderChk(
	
	//검증완료
	//기본배송지가 있는 경우, 해당 아이디의 배송지 별칭 조회
	public List<String> selectShipName(String id){
		List<String> list = null;
		
		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
	

		try {
			// 쿼리 실행
			 list = ss.selectList("kr.co.mpnp.orderMapper.selectShipName", id);
			System.out.println( list + "/n");
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 연결끊기
		mbh.closeHandler(ss);
		
		
		
		return list;
		
	} 
	

	// 검증완료
	// 배송지변경버튼 - 배송지vo,배송지dao 써야 할듯
	public OrderDomain selectChangeDestination(ShipNameVO snVO) {
		OrderDomain orDOM = null;

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		try {
			// 쿼리 실행
			System.out.println("------"+snVO);
			orDOM = ss.selectOne("kr.co.mpnp.orderMapper.selectChangeDestination", snVO);
			System.out.println("===="+orDOM);
		} catch (PersistenceException pe) { 
			pe.printStackTrace();
		}

		// 연결끊기
		mbh.closeHandler(ss);

		return orDOM;
	}

	// 검증완료
	// 주문기본내역조회
	public OrderDomain selectOrderInfo(String id) {
		OrderDomain orDom = null;

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			// 쿼리 실행
			orDom = ss.selectOne("kr.co.mpnp.orderMapper.selectOrderInfo", id);
			System.out.println(orDom);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return orDom;
	}// selectOrderInfo
	
	//기본배송지 조회
	public OrderShipDomain selectDestination(OrderVO oVO) {
		OrderShipDomain orDom = null;

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			// 쿼리 실행
			orDom = ss.selectOne("kr.co.mpnp.orderMapper.selectDestination",  oVO);
			System.out.println(orDom);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return orDom;
	}
	
	//해당 상품코드의 상품 조회
	public OrderPrdVO selectProduct(String prdId){ 
			OrderPrdVO opVO = null;
	
	MyBatisHandler mbh = MyBatisHandler.getInstance();
	SqlSession ss = mbh.getHandler();
	try {
		// 쿼리 실행
		opVO = ss.selectOne("kr.co.mpnp.orderMapper.selectProduct", prdId);
		//System.out.println(orDom);
	} catch (PersistenceException pe) {
		pe.printStackTrace();
	}
	// 연결끊기
	mbh.closeHandler(ss);
	
			return opVO;

 }//
	
	// 검증완료
	// 주문코드조회
	public String selectOrderId() {
		String orID = "";

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			// 쿼리 실행
			orID = ss.selectOne("kr.co.mpnp.orderMapper.selectOrderId");
			// System.out.println(orID);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return orID;
	}// selectOrderId

	// 검증완료
	// 주문결제정보추가
	public int insertOrderInfo(OrderVO orVO) {
		int cnt = 0;
		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			// 쿼리 실행
			cnt = ss.insert("kr.co.mpnp.orderMapper.insertOrderInfo", orVO);
			if (cnt == 1) {
				ss.commit();
				System.out.println(cnt + "건 추가(주문)");
			}
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return cnt;

	}

	

	//
	// 어떤 원리로 여러개를 한번에,그것도 자동화해서추가시켜야하는지를 모르겠다
	// 상품갯수만큼 반복문 돌리고.. 그 안에서 상세코드 조회 및 insert작업 수행하면 되는건가?
	// 주문상세추가-- mypageOrderVO사용예정
	//검증완료
	public int insertOrderDetail(OrderVO oVO) {
		int cnt = 0;

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			// 쿼리 실행
			cnt = ss.insert("kr.co.mpnp.orderMapper.insertOrderDetail", oVO);
			if (cnt == 1) {
				System.out.println(cnt + "건 추가(주문상세)");
				ss.commit();
			}
			;
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return cnt;
	} // insertOrderDetail

	// 검증완료


	// 검증완료
	// 배송지추가-destinatioVO사용예정
	public int insertShipAddr(OrderVO dVO) {
		int cnt = 0;

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			// 쿼리 실행
			cnt = ss.insert("kr.co.mpnp.orderMapper.insertShipAddr", dVO);
			cnt++;
			if (cnt == 1) {
				System.out.println(cnt + "건 추가(배송지)");
				ss.commit();
			}
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return cnt;

	}// insertShipAddr

	// 검증완료
	// 주문완료내역조회
	public MyOrderDomain selectOrderComplete(OrderVO orVO) {
		MyOrderDomain orDom = null;

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			// 쿼리 실행
			orDom = ss.selectOne("kr.co.mpnp.orderMapper.selectOrderComplete", orVO);
			System.out.println(orDom);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return orDom;
	}// selectOrderComplete
	
	

	// 검증완료
	// 주문후 장바구니에서 해당상품삭제 - 상품코드- cartVO, cartDomiain써야 함
	public int deleteCartItem() {
		int cnt = 0;

		// 핸들러 얻기
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		try {
			// 쿼리 실행
			cnt = ss.delete("kr.co.mpnp.orderMapper.deleteCartItem");
			if (cnt == 1) {
				System.out.println(cnt + "건 삭제");
				ss.commit();
			} else {
				System.out.println("삭제실패");
			}
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		// 연결끊기
		mbh.closeHandler(ss);

		return cnt;
	}// deleteCartItem

	public static void main(String[] args) {
	//	OrderDAO oD = OrdSerDAO.getInstance();
		//OrderVO ov = new OrderVO();
		//oD.selectShipName("id002");
		//ov.setId("id002");
		//ov.setDefaultFlag("O");
		//oD.selectOrderChk(ov);
	//	oD.selectOrderChk("id010");
//		 DestinationVO d = new DestinationVO();
//		 d.setId("id008");
//		 d.setName("집");

		// String dId = oD.selectdestinationId();
//		 String ord = oD.selectOrderId();
//		 OrderVO ov = new OrderVO();
//        ov.setOrderId(ord);
//        ov.setId("id010");
//        ov.setShipReq("11-16테스트");
//       ov.setActualPrice(90000);
//		 ov.setStatus("주문완료");
//		oD.insertOrderInfo(ov);
//		// oD.selectChangeDestination(d);
//		// oD.selectOrderChk("id002");
//		// oD.selectOrerDetailId();
		
//		 MyOrderVO mov = new MyOrderVO();
//		String[] prdArr = {"p0004","p0001"};
//		int[] prdcnt = {1,2};
//		   mov.setOrderId(ord);
//		for(int i=0;i<prdArr.length;i++) {
//			String odid = oD.selectOrerDetailId();
//			mov.setOrderDetailId(odid);
//			 mov.setTotalPrdCnt(prdcnt[i]);
//			 mov.setPrdtId(prdArr[i]);
//			 oD.insertOrderDetail(mov);
//		}
		
//		 mov.setOrderDetailId(odid);
//		 mov.setTotalPrdCnt(2);
//		 mov.setOrderId(ord);
//		 mov.setPrdtId("p0001");

		// oD.selectdestinationId();
//		 DestinationVO d = new DestinationVO();
//		 //d.setDestinationId(dId);
//		 d.setId("id002");
//		 d.setName("학교");
//		 d.setReceiver("테스트");
//		 d.setPhone("010-1111-1111");
//		 d.setZipcode("12345");
//		 d.setAddr("서울 테스트구");
//		 d.setAddrDetail("테스트빌딩");
//		 d.setDeafaultFlag("X");
		// oD.insertShipAddr(d);

		// OrderVO o2 = new OrderVO();
		// o2.setOrderId("or_0000004");
		// o2.setProductId("p0002");
		// oD.selectOrderComplete(o2);
		// oD.deleteCartItem();

	}

}// class
