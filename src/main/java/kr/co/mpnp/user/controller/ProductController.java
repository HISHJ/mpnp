package kr.co.mpnp.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.domain.ProductReviewDomain;
import kr.co.mpnp.user.service.ProductReviewService;
import kr.co.mpnp.user.service.ProductService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.security.ProtectionDomain;
import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
public class ProductController {

@RequestMapping(value="/prdList.do", method=GET)
public String searchPrdList(String mainid,String subid) {
	
		
	return "user/product/prdList";
}

/* @PathVariable("productid") */
@RequestMapping(value="/prddetail.do", method=GET)
public String searchPrdDetail(@RequestParam(value="productid")  String productid,HttpSession session,Model model) {
	
	
	ProductService ps= new ProductService();
	ProductReviewService pr = new ProductReviewService();
	
	ProductDomain pd=ps.searchPrdDetail(productid);
	List<ProductReviewDomain> list = pr.searchProductReview(productid);
	List<ProductReviewDomain > slist=pr.searchStarCnt(productid);
	model.addAttribute("data", pd);
	model.addAttribute("review", list);
	model.addAttribute("star",slist);

	
	
	
	return "user/product/productInfo2";
}
	


	
}//class
