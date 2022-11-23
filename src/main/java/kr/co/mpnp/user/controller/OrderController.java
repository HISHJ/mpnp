package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.MyOrderDomain;
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
     
     //
     
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
	     System.out.println("p@@@@@@"+oIfVO); //파라메터 (ok)
	     System.out.println("db@@@@@@"+opvo ); //성공 ㅠㅠ
	    model.addAttribute("opvo", opvo);
		/////////////////////////////////////////////////////////
		oVO.setId("id001");
		oVO.setDefaultFlag("O");
		 String flag = ordSer.searchOrderChk("id001");
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
		session.setAttribute("discountPrice", oVO.getDiscountPrice());
		session.setAttribute("totalPrice", oVO.getTotalPrice());
		oVO.setId("id001");
		 String flag = ordSer.searchOrderChk("id001");
		 System.out.println("오더-1111---" +oVO.getOrderId()); //ok 
		 
		 ordSer.searchOrer(oVO); //트랜잭션
		 System.out.println("오더-22222---" +oVO.getOrderId()); // 트랜잭션 처리 후 주문코드가 들어옴
		if(flag == null || "".equals(flag)) { // 기본배송지설정이 안된 회원일 경우
			ordSer.addShipAddr(oVO);//배송지추가
		 }
		session.setAttribute("orderId", oVO.getOrderId()); //트랜잭션 처리 후 주문코드값 들어옴
		return "/user/order/orderPayment_process";
	}// end orderComplete

	// 결제완료페이지(주문코드)
	@RequestMapping(value = "/orderPayment_complete.do", method = GET)
	public String orderCompletePage(HttpSession session, Model model) {
	
		int discountPrice = (Integer) session.getAttribute("discountPrice");
		int totalPrice = (Integer) session.getAttribute("totalPrice");
		String orderId = (String) session.getAttribute("orderId");
		System.out.println("@@@@@@@@세션 테스트" +discountPrice +totalPrice );
		System.out.println("@@@@@@@@인서트" +orderId );
		MyOrderDomain mod = new MyOrderDomain();
		mod = ordSer.searchOrderCompleteM(orderId);
		List<MyOrderDomain> mod2 =new ArrayList<MyOrderDomain>();
		mod2 = ordSer.searchOrderCompleteP(orderId);
		MyOrderDomain mod3 = new MyOrderDomain();
		mod3 = ordSer.searchOrderCompleteD(orderId);
		
		model.addAttribute("mod1", mod);
		model.addAttribute("mod2", mod2);
		model.addAttribute("mod3", mod3);
		
		return "/user/order/orderComplete";
	}// orderCompletePage

}
