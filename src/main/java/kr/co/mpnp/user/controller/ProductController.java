package kr.co.mpnp.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.service.ProductService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.security.ProtectionDomain;

import javax.servlet.http.HttpSession;

@Controller
public class ProductController {

@RequestMapping(value="/prdList.do", method=GET)
public String searchPrdList(String mainid,String subid) {
	
		
	return "user/product/prdList";
}


@RequestMapping(value="/prddetail.do", method=GET)
public String searchPrdDetail(HttpSession session,String productid,Model model) {
	ProductService ps= new ProductService();
	ProductDomain pd=new ProductDomain();
	pd=ps.searchPrdDetail("p0001");
	model.addAttribute("data", pd);
	
	
	
	
	
	return "user/product/productInfo";
}
	
//?ž¥ë°”êµ¬?‹ˆ?‹´ê¸?


	
}//class
