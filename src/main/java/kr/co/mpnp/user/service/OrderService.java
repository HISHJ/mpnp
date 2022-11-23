package kr.co.mpnp.user.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;

import kr.co.mpnp.user.dao.OrderDAO;
import kr.co.mpnp.user.domain.MyOrderDomain;
import kr.co.mpnp.user.domain.OrderDomain;
import kr.co.mpnp.user.domain.OrderShipDomain;
import kr.co.mpnp.user.vo.OrderPrdVO;
import kr.co.mpnp.user.vo.OrderVO;
import kr.co.mpnp.user.vo.OrdersInfoVO;
import kr.co.mpnp.user.vo.ShipNameVO;

//설빈
public class OrderService {
	OrderDAO oDAO = OrderDAO.getInstance();

	// 배송지설정유무(아이디)
	public String searchOrderChk(String id) {
		String flag = "";

		flag = oDAO.selectOrderChk(id);

		return flag;
	}// selectOrderChk

	// 기본배송지가 있는 경우, 해당 아이디의 배송지 별칭 조회
	public List<String> searchShipName(String id) {
		List<String> list = null;

		list = oDAO.selectShipName(id);

		return list;
	}


	//DB상품처리(장바구니에서는 OK,상품직접구매 X)
	public List<OrderPrdVO>searchProduct(OrdersInfoVO orders){
		List<OrderPrdVO> list = new ArrayList<OrderPrdVO>();
		//System.out.println("서비스@@@@@:"+ orders.getOrders()); //값은 있어
		OrderPrdVO opvo =null; // null이다..?
		//System.out.println(opvo.toString());
		for(OrderPrdVO oVO : orders.getOrders()) {
		//System.out.println("상품갯수 서비스:" +oVO.getPrdCnt());//웅 들어와
		//System.out.println("상품코드 서비스:" +oVO.getPrdId());//웅 들어와
		opvo =	oDAO.selectProduct(oVO.getPrdId());
		opvo.setPrdCnt(oVO.getPrdCnt()); 
		System.out.println("########3"+ opvo.toString());
		//System.out.println("서비스@@@@"+ opvo.getPrdCnt());
		if(oVO.getCartId() != null || "".equals(oVO.getCartId())) {
		opvo.setCartId(oVO.getCartId()); 
		}
		opvo.initSaleTotal();
		 
		 list.add(opvo);
		}
		//System.out.println("서비스@@@@:" + opvo);
		return list;
	}


	// 배송지변경버튼 - 배송지vo,배송지dao 써야 할듯
	public String seachChangeDestination(ShipNameVO snVO) {
		// 1.조상
		JSONObject jsonShipName = new JSONObject();

		boolean resultFlag = false;
		OrderDomain orD = oDAO.selectChangeDestination(snVO);
		resultFlag = orD != null;
		// 2.손자
		jsonShipName.put("resultFlag", resultFlag);
		jsonShipName.put("searchKeyword", snVO.getId());
		jsonShipName.put("name", snVO.getName());
		jsonShipName.put("zipcode", orD.getZipcode());
		jsonShipName.put("addr", orD.getAddr());
		jsonShipName.put("addrDetail", orD.getAddrDetail());

		return jsonShipName.toJSONString();
	}//

	// 주문기본내역조회
	public OrderDomain searchOrderInfo(String id) {
		OrderDomain orDom = null;

		orDom = oDAO.selectOrderInfo(id);

		return orDom;
	}// selectOrderInfo(

	// 기본배송지 조회
	public OrderShipDomain searchDestination(OrderVO oVO) {
		OrderShipDomain orDom = null;

		orDom = oDAO.selectDestination(oVO);

		return orDom;

	}

	// 주문코드조회
	
	public String searchOrderId() {
		String orID = "";

		orID = oDAO.selectOrderId();

		return orID;
	}// selectOrderId

	// 주문결제정보추가
	public int addOrderInfo(OrderVO orVO) {
		int cnt = 0;

		cnt = oDAO.insertOrderInfo(orVO);

		return cnt;
	}// insertOrderInfo

	//주문 & 주문상세 트랜잭션 처리
	public void searchOrer( OrderVO oVO ) {
		String orId = "";

		orId = oDAO.selectOrderId();// 주문코드 조회
		oVO.setOrderId(orId);  //vo에 코드 저장
		if(oVO.getOrderId() != null) {
			oDAO.insertOrderInfo(oVO); //주문테이블 추가& 주문상세테이블 추가
		}

	}// searchOrerDetailId
	
	
	// 배송지추가-destinatioVO사용예정
	public int addShipAddr(OrderVO dVO) {
		int cnt = 0;

		cnt = oDAO.insertShipAddr(dVO);

		return cnt;
	}// insertShipAddr
	
	//////////////////////////////////////////////////////////////////////////////////

	// 주문완료내역조회
	public MyOrderDomain searchOrderCompleteM(String orderID) {
		MyOrderDomain orDom = null;

		orDom = oDAO.selectOrderCompleteM(orderID);

		return orDom;
	}// selectOrderComplete
	
	// 주문완료내역조회(상품)
	public List<MyOrderDomain>  searchOrderCompleteP(String orderID) {
		List<MyOrderDomain>  orDom = null;

		orDom = oDAO.selectOrderCompleteP(orderID);

		return orDom;
	}// selectOrderComplete
	
	
	// 주문완료내역조회(배송)
	public MyOrderDomain searchOrderCompleteD(String orderID) {
		MyOrderDomain orDom = null;

		orDom = oDAO.selectOrderCompleteD(orderID);

		return orDom;
	}// selectOrderComplete
	
	////////////////////////////////////////////////////////////////////////////////

	// 주문후 장바구니에서 해당상품삭제 - 상품코드- cartVO, cartDomiain써야 함

	public int removeCartItem(OrderVO orVO) {
		int cnt = 0;

		cnt = oDAO.deleteCartItem();

		return cnt;
	}// deleteCartItem

}
