package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.MyOrderDomain;
import kr.co.mpnp.user.service.MyOrderService;

@Controller
public class MyOrderController {

	// 주문내역 페이지 진입(아이디)
	@RequestMapping(value = "/order_information_form.do", method = GET)
	public String searchOrderList(HttpSession session, String id, Model model) {
	   
		List<MyOrderDomain> list = null;
	   MyOrderService moServ = new MyOrderService();
	   list = moServ.searchOrderList("id001") ;
	   model.addAttribute("list",list);
	  
		return "/user/mypage/order_information";
	}// searchOrderList
	

	// 선택주문취소(,주문상세코드)
	@ResponseBody
	@RequestMapping(value = "/order_can_process.do", method = GET)
	public String removeOrderProcess(HttpSession session, String orDetailId, Model model) {
			
		 MyOrderService moServ = new MyOrderService();
		 
		return moServ.removeCancelIndivisual(orDetailId);
	}// removeOrderProcess
	
	//전체주문취소(주문코드)
	@ResponseBody
	@RequestMapping(value = "/order_totalCan_process.do", method = GET)
	public String removeAllOrderProcess(HttpSession session, String orderId, Model model) {
		
		 MyOrderService moServ = new MyOrderService();
		 
		return moServ.removeCancelTotal(orderId);
	}// removeOrderProcess
	

	// 주문상세페이지 진입(주문코드야)
	@RequestMapping(value = "/order_detail_form.do", method = GET)
	public String searchOrderDetailForm(String orderId, Model model) {
		System.out.println(orderId);
		
		MyOrderService mSer = new MyOrderService();
		MyOrderDomain moDom = new MyOrderDomain();
		MyOrderDomain moDOM2 = new MyOrderDomain();
		List<MyOrderDomain> list = new ArrayList<MyOrderDomain>();
		moDom= mSer.searchOrderDetail(orderId); //주문자
		list = mSer.searchOrderPrdDetail(orderId); //상품
		moDOM2 = mSer.searchOrderShip(orderId);//배송지
		int prdPrice = mSer.searchPriceIndivisual(orderId);//상품 총가격
		int actualPrce = mSer.selectPriceTotal(orderId);// 최종 결제금액
		int discountRate = mSer.selectDiscountRate("id001");// 할인율
		
		model.addAttribute("prdPrice",prdPrice); //상품 총가격
		model.addAttribute("actualPrce",actualPrce); //최종결제금액(감산된 상태)
		model.addAttribute("discountRate", discountRate);//할인율
		model.addAttribute("moDOM2",moDOM2);
		model.addAttribute("moDom", moDom);
		model.addAttribute("list",list);

		
		return "/user/mypage/myorder_detail";
		

	}// searchOrderDetailForm

}
