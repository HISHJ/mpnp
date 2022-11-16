package kr.co.mpnp.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.admin.vo.AdminProductVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class AdminProductController {

	
	@RequestMapping(value="/admin_prdList.do", method=GET)
	public  String searchPrdList(HttpSession session,AdminProductVO aVO ,Model model) {
		
		
		return "admin/product/itemBoard";
		
	}
	
	
}//


