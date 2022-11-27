package kr.co.mpnp.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.admin.domain.AdminOrderDomain;
import kr.co.mpnp.admin.domain.AdminOrderPrdDomain;
import kr.co.mpnp.admin.service.AdminOrderService;
import kr.co.mpnp.admin.vo.AdminOrderVO;
//설빈
@Controller
public class AdminOrderController {
	
	// 주문조회페이지
	@RequestMapping(value = "/orderMain_list.do", method = GET)
	public String orderList(HttpSession session, AdminOrderVO adVO, Model model) {
		List<AdminOrderDomain> list = null;

	     AdminOrderService aoService = new AdminOrderService();
		 list = aoService.searchOrderList(adVO);
		 model.addAttribute("orderList", list);
		 
		return "/admin/order/orderBoard";

	}// orderList

	// 주문상세조회(주문코드)
	@RequestMapping(value = "/orderDetail_form.do", method = GET)
	public String orderListDetail(HttpSession session, String memberId, String orderId, Model model) {

		AdminOrderService aoService = new AdminOrderService();
		
		 AdminOrderDomain aoDom = aoService.searchOrderDetail(orderId); //주문상세
		List<AdminOrderPrdDomain> list = aoService.searchOrderPrdDetail(orderId);//주문상품 상세
		AdminOrderDomain aoDom2 = aoService.searchOrderShip(orderId); //주문상세 배송지
		int discountRate = aoService.searchDiscountRate(memberId);//할인율
		int totlaPrdPrice = aoService.searchPriceIndivisual(orderId);//주문상품 총 가격
		model.addAttribute("aoDom", aoDom); //주문자상세
		model.addAttribute("list", list); //상품상세
		model.addAttribute("aoDom2",aoDom2); //배송지상세
		model.addAttribute("discountRate",discountRate); //할인율
		model.addAttribute("totlaPrdPrice",totlaPrdPrice); // 상품 총 가격
		
		return "/admin/order/orderDetail";
	}// orderListDetail

	// 주문상태변경

	@RequestMapping(value = "/orderModify_process.do", method = GET)
	public String modifyOrderStatus(AdminOrderVO adVO, Model model) {
      
		AdminOrderService aoService = new AdminOrderService(); 
		 int cnt=aoService.modifyOrderStatus(adVO); //주문상태변경
		 model.addAttribute("cnt",cnt);
		
		return "/admin/order/orderModify_process";
	}// modifyOrderStatus

}
