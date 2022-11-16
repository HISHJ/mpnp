package kr.co.mpnp.user.service;

import java.util.List;

import kr.co.mpnp.user.dao.OrderDAO;
import kr.co.mpnp.user.domain.MyOrderDomain;
import kr.co.mpnp.user.domain.OrderDomain;
import kr.co.mpnp.user.vo.DestinationVO;
import kr.co.mpnp.user.vo.MyOrderVO;
import kr.co.mpnp.user.vo.OrderVO;

//설빈
public class OrderService {
	OrderDAO oDAO = OrderDAO.getInstance();
	// 배송지설정유무(아이디)
	public String searchOrderChk(OrderVO oVO) {
		String flag = "";
		
		flag =oDAO.selectOrderChk(oVO);

		return flag;
	}// selectOrderChk
	
	//기본배송지가 있는 경우, 해당 아이디의 배송지 별칭 조회
	public List<String>searchShipName(String id){
		List<String> list = null;
		
		list = oDAO.selectShipName(id);
		
		return list;
	}
	

	//배송지변경버튼 - 배송지vo,배송지dao 써야 할듯
	public   OrderDomain seachChangeDestination(DestinationVO dVO) {
		OrderDomain orDOM = null;
		
		orDOM = oDAO.selectChangeDestination(dVO);
		
		return orDOM;
	}

	// 주문기본내역조회
	public OrderDomain searchOrderInfo(String id) {
		OrderDomain orDom = null;
		
		orDom = oDAO.selectOrderInfo(id);

		return orDom;
	}// selectOrderInfo(
	
	//기본배송지 조회
	public OrderDomain  searchDestination(OrderVO oVO) {
		OrderDomain orDom = null;
		
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

	// 주문상세코드조회
	public String searchOrerDetailId() {
		String ordId = "";
		
		ordId = oDAO.selectOrerDetailId();

		return ordId;
	}// searchOrerDetailId

	// 주문상세추가-- mypageOrderVO사용예정
	public int addOrderDetail(MyOrderVO moVO) {
		int cnt = 0;
		
		cnt = oDAO.insertOrderDetail(moVO);

		return cnt;
	} // insertOrderDetail
	
	//배송지 코드 조회
	public String searchDestinationId() {
		String dId = "";
		
		dId = oDAO.selectdestinationId();
		
		return dId;
	}

	//배송지추가-destinatioVO사용예정
	public  int insertShipAddr(DestinationVO dVO) {
		int cnt = 0;
		
		cnt = oDAO.insertShipAddr(dVO);
		
		return cnt;
	}//insertShipAddr

	// 주문완료내역조회
	public MyOrderDomain searchOrderComplete(OrderVO orVO) {
		MyOrderDomain orDom = null;
		
		orDom = oDAO.selectOrderComplete(orVO);

		return orDom;
	}// selectOrderComplete

	// 주문후 장바구니에서 해당상품삭제 - 상품코드- cartVO, cartDomiain써야 함

	public int removeCartItem(OrderVO orVO) {
		int cnt = 0;
		
		cnt = oDAO.deleteCartItem();

		return cnt;
	}// deleteCartItem

}
