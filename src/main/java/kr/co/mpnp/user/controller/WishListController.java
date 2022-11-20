package kr.co.mpnp.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

public class WishListController {

	
	//찜 리스트 목록(아이디)
	@RequestMapping(value="wishList.do",method=GET)
	public String searchWishLishForm(HttpSession session,Model model){
		
		
		
		return"user/cart/wishList";
	}
	
}//class
