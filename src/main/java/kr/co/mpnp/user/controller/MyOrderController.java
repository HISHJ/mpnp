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
import kr.co.mpnp.user.vo.MyOrderVO;

@Controller
public class MyOrderController {

	// 주문내역 페이지 진입(아이디)
	@RequestMapping(value = "/order_information_form.do", method = GET)
	public String searchOrderList(HttpSession session,MyOrderVO mvo, Model model) {
		String url="user/member/login";
		
		   MyOrderService moServ = new MyOrderService();
		String id=(String)session.getAttribute("id");
		if(id!=null) {
		mvo.setId(id);
		mvo.getFindStartDate();
		mvo.getFindEndDate();
		mvo.getId();
	   List<MyOrderDomain> list = moServ.searchOrderList(mvo);
	   model.addAttribute("list",list);
		 url = "/user/mypage/order_information";
		}
		
		//페이징
		//페이징변수
		int totalData =moServ.totalCount(mvo);
		int lastPage = moServ.lastPage(totalData);
		int curPage = mvo.getPageFlag();
		int startNum = moServ.startNum(curPage);
		int isLast = moServ.isLast(lastPage, startNum);
				
		//view로 전송
		model.addAttribute("totalData", totalData);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("startNum", startNum);
		model.addAttribute("isLast", isLast);
		model.addAttribute("curPage", curPage);
	
		
		
		
		return url;
	}// searchOrderList
	
	/*
	 * //날짜 조회
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/order_date_process.do", method=GET) public String
	 * searchDate(HttpSession session,MyOrderVO mvo,Model model) { MyOrderService
	 * moServ = new MyOrderService(); mvo.setId("test1126"); String jsonObj =
	 * moServ.searchDate(mvo); return jsonObj; }//
	 */	

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
	public String searchOrderDetailForm(HttpSession session,String orderId, Model model) {

	String url="user/member/login";
		
		String id=(String)session.getAttribute("id");
		if(id!=null) {
		
		MyOrderService mSer = new MyOrderService();
		MyOrderDomain moDom = new MyOrderDomain();
		MyOrderDomain moDOM2 = new MyOrderDomain();
		List<MyOrderDomain> list = new ArrayList<MyOrderDomain>();
		moDom= mSer.searchOrderDetail(orderId); //주문자
		list = mSer.searchOrderPrdDetail(orderId); //상품
		moDOM2 = mSer.searchOrderShip(orderId);//배송지
		int prdPrice = mSer.searchPriceIndivisual(orderId);//상품 총가격
		int actualPrce = mSer.selectPriceTotal(orderId);// 최종 결제금액
		int discountRate = mSer.selectDiscountRate(id);// 할인율
		
		model.addAttribute("prdPrice",prdPrice); //상품 총가격
		model.addAttribute("actualPrce",actualPrce); //최종결제금액(감산된 상태)
		model.addAttribute("discountRate", discountRate);//할인율
		model.addAttribute("moDOM2",moDOM2);
		model.addAttribute("moDom", moDom);
		model.addAttribute("list",list);
		
		url ="/user/mypage/myorder_detail";
		}
		
		return url;
		

	}// searchOrderDetailForm

}
