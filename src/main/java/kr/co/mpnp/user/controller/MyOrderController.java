package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.user.vo.MyOrderVO;

@Controller
public class MyOrderController {

	// 주문내역 페이지 진입(아이디)
	@RequestMapping(value = "/order_information_form.do", method = GET)
	public String searchOrderList(HttpSession session, MyOrderVO moVO, Model model) {

		return "/mypage/order_information";
	}// searchOrderList

	// 주문취소(아이디,주문상세코드(?,주문코드?)
	@RequestMapping(value = "/order_can_process.do", method = GET)
	public String removeOrderProcess(HttpSession session, String orderDId, Model model) {

		return "/mypage/order_can_process";
	}// removeOrderProcess

	// 주문상세페이지 진입(아이디, 주문상세코드..아닐까..? 주문코든가?)
	@RequestMapping(value = "/order_detail_form.do", method = GET)
	public String searchOrderDetailForm(HttpSession session, String orderDId, Model model) {

		return "/mypage/order_detail";

	}// searchOrderDetailForm

}
