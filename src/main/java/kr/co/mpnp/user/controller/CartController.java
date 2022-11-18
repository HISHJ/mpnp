package kr.co.mpnp.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.mpnp.user.vo.CartVO;

@Controller
public class CartController {

	// 장바구니 리스트조회
	@RequestMapping(value="/cart_list.do",method=RequestMethod.GET)
	public String searchCartList(HttpSession session, Model model) {
		
		
		return "user/cart/cart";
	}
	
	// 장바구니 갯수변경
	// 장바구니 갯수는 버튼으로 처리한다쳐도 수정버튼이없는데 어떻게끌고 여기로 와??
	// 메서드없이 ajax로 되나이게? 올리는거에따라 가격도 실시간으로 바뀌어야되잖아 수정버튼없이 그냥 여기서 처리해야하나?????????????????????????????????????????????????????????????
	// 보류
	@RequestMapping(value="/cart_modify_process.do",method=RequestMethod.GET)
	public String modifyCartCnt(HttpSession session, CartVO cVO, Model model) {
		
		
		return "";
	}
	
	// 장바구니 삭제
	@RequestMapping(value="/cart_remove_process.do",method=RequestMethod.GET)
	public String removeCart(HttpSession session, String[] id, Model model) {
									// 삭제되었는지도 보여줘야하니까 model이 있어야하나..?
		
		
		return "";
	}
}
