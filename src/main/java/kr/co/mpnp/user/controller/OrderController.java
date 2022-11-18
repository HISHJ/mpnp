package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.OrderDomain;
import kr.co.mpnp.user.domain.OrderShipDomain;
import kr.co.mpnp.user.service.OrderService;
import kr.co.mpnp.user.vo.OrderPrdVO;
import kr.co.mpnp.user.vo.OrderVO;
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
	public String orderPayment(HttpSession session ,String shipName,
			OrderVO oVO,@RequestParam(required = false) OrderPrdVO opVO,  Model model) {
	
		
		opVO.getPrdCnt();
		opVO.getPrdName();
		opVO.getPrdId();
		
		
		String url="";
		System.out.println("상품조회"+opVO);
		
		System.out.println(shipName);
		oVO.setId("id008");
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
			//DestinationVO dVO = new DestinationVO();
			//dVO.setId(id);
	        //dVO.setName(shipName);
			
			osDom =ordSer.searchDestination(oVO); //기본배송지 주소 조회
			list = ordSer.searchShipName(id);//해당아이디의 배송지 별칭 조회
			//oDom2 = ordSer.seachChangeDestination(dVO); // 배송지 변경
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
		snVO.setId("id008");
		snVO.setName(shipName);
		//System.out.println(shipName);
		String jsonObj =ordSer.seachChangeDestination(snVO);
		// System.out.println(jsonObj );
		return jsonObj;
	}
	
	
//
//	// 배송지변경버튼(ajax로 생각)
//	@ResponseBody
//	@RequestMapping(value = "/order_ship_addr.do", method = GET, produces = "application/json;charset=UTF-8")
//	public void changeShipAddr(HttpSession session, String shipName,Model model) {
//		OrderDomain shipDom = null;
//		DestinationVO dVO = new DestinationVO();
//	System.out.println(shipName);
//		dVO.setId("id008");
//		dVO.setName(shipName);
//		shipDom =ordSer.seachChangeDestination(dVO);
//		System.out.println(shipDom);
//		model.addAttribute("shipDom",shipDom);
//		
//		//return orDOM;
//	}// changeShipAddr


	
	


	
	/*@RequestMapping(value = "/order_ship_addr.do", method = GET, produces = "application/json;charset=UTF-8")
	public String changeShipAddr(HttpSession session, String shipName,Model model) {
		DestinationVO dVO = new DestinationVO();
		
		return "/user/order/change_ship_process";
	}// changeShipAddr*/

	// 결제완료버튼
	@RequestMapping(value = "/orderPayment_process.do", method = GET)
	public String orderCompleteProcess(HttpSession session, OrderVO oVO, Model model) {

		return "/user/order/orderPayment_process";
	}// end orderComplete

	// 결제완료페이지(주문코드)
	@RequestMapping(value = "/orderPayment_complete.do", method = GET)
	public String orderCompletePage(String orderId, OrderVO oVO, Model model) {

		return "/user/order/orderComplete";
	}// orderCompletePage

}
