package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.OrderDomain;
import kr.co.mpnp.user.domain.OrderShipDomain;
import kr.co.mpnp.user.service.OrderService;
import kr.co.mpnp.user.vo.MyOrderVO;
import kr.co.mpnp.user.vo.OrderPrdVO;
import kr.co.mpnp.user.vo.OrderVO;
import kr.co.mpnp.user.vo.OrdersInfoVO;
import kr.co.mpnp.user.vo.ShipNameVO;


@Controller
public class OrderController {
     OrderService ordSer = new OrderService();
     List<String> list = null;
     
     //임시- 페이지 이동,파라미터 값 넘겨받는 거 연습땜시
     //장바구니 페이지로 이동
     @RequestMapping(value="/test.do",method=GET)
     public String temp(Model model) {
    	 
    	 
    	 return "/user/order/product_info_test";
    	 
     }
     
	// 주문페이지로 이동(ok)
	@RequestMapping(value = "/orderPayment_form.do", method = GET)
	public String orderPayment(HttpSession session,OrderVO oVO,OrdersInfoVO oIfVO ,  Model model) {
		String url="";
		
		List<OrderPrdVO> opvo = ordSer.searchProduct(oIfVO);
	     System.out.println("p@@@@@@"+oIfVO); //파라메터
	     System.out.println("db@@@@@@"+opvo ); //성공 ㅠㅠ
	     model.addAttribute("opvo", opvo);
		/////////////////////////////////////////////////////////
		oVO.setId("id005");
		oVO.setDefaultFlag("O");
		 String flag = ordSer.searchOrderChk(oVO);
		 String id= oVO.getId();
		//내역조회
		 OrderDomain orDom = null;
		orDom = ordSer.searchOrderInfo(id);
		model.addAttribute("orDom", orDom); 

		
		 if(flag == null || "".equals(flag)) { // 기본배송지설정이 안된 회원일 경우
			 url ="/user/order/orderPayment";
		 }else { // 기본배송지 설정이 된 회원인 경우
			 url ="/user/order/orderPayment_after" ;
			 
			OrderShipDomain osDom = null;
			OrderDomain oDom2 = null;
			osDom =ordSer.searchDestination(oVO); //기본배송지 주소 조회
			list = ordSer.searchShipName(id);//해당아이디의 배송지 별칭 조회
			
			model.addAttribute("oDom2", oDom2);
			model.addAttribute("list",list);
			model.addAttribute("osDom",osDom);
			
		 }//end else
		 
		return url;
	}// end orderPayment
	
	//배송지변경버튼(ajax)
	@ResponseBody
	@RequestMapping(value = "/order_ship_addr.do", method = GET, produces = "application/json;charset=UTF-8")
	public String changeShipAddr(HttpSession session, String shipName,Model model) {
		ShipNameVO snVO = new ShipNameVO();
		snVO.setId("id001");
		snVO.setName(shipName);
		String jsonObj =ordSer.seachChangeDestination(snVO);
		return jsonObj;
	}
	
	// 결제완료버튼
	@RequestMapping(value = "/orderPayment_process.do", method = GET)
	public String orderCompleteProcess(HttpSession session, OrderVO oVO,Model model) {
		System.out.println("오더" +oVO); //ok
		oVO.setId("id001");
		//트랜잭션 처리(서비스에서 처리하려면 beans에서 트랜잭션 처리를 해줘ㅑ 함 
		//ordSer.searchOrerDetailId(oVO);
		String orId = "";
		orId = ordSer.searchOrderId();
		oVO.setOrderId(orId);
		if(oVO.getOrderId() != null) {
			ordSer.addOrderInfo(oVO);// //주문테이블 추가
			for(OrderPrdVO opVO :oVO.getOrders()) {
				oVO.setTotalPrdCnt(opVO.getPrdCnt());
				oVO.setPrdId(opVO.getPrdId());
				//oVO.setOrderId(orId);
			ordSer.addOrderDetail(oVO);////주문 상세테이블 추가	
			}//end for
			ordSer.removeCartItem(oVO);// //주문한 해당 아이템 장바구니에서 삭제
			ordSer.addShipAddr(oVO);// // 배송지 추가
		}//end if
		
		
		return "/user/order/orderPayment_process";
	}// end orderComplete

	// 결제완료페이지(주문코드)
	@RequestMapping(value = "/orderPayment_complete.do", method = GET)
	public String orderCompletePage(String orderId, OrderVO oVO, Model model) {

		return "/user/order/orderComplete";
	}// orderCompletePage

}
