package kr.co.mpnp.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.WishDomain;
import kr.co.mpnp.user.service.WishListService;
import kr.co.mpnp.user.vo.WishListVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import java.util.List;

@Controller
public class WishListController {
	

	
	
	//찜 리스트 목록(아이디)
	@RequestMapping(value="wishList.do",method=GET)
	public String searchWishLishForm(HttpSession session,Model model){
		WishListService ws = new WishListService();
		if(session.getAttribute("id")!=null) {
			String id=(String)session.getAttribute("id");
			List<WishDomain> list= ws.searchWishList(id);
			model.addAttribute("id", id);
			model.addAttribute("wish", list);	
			
		}else {
			
		}
		
		
		
		return"user/cart/wishList";
	}
	
	
	//찜 삭제
	
	@ResponseBody
	@RequestMapping(value="remove_wish.do", method=POST)
	public String removeWishList(WishListVO wVO,HttpSession session,Model model) {
		WishListService ws= new WishListService();
		int result=0;
		if(session.getAttribute("id")!=null) {
			
			result=ws.removeWishList(wVO);
		}else {//세션 아이디 xxx
			
			result=-1;
		}
		
		return result+" ";
		}
	
	
}//class
