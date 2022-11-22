package kr.co.mpnp.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.mpnp.admin.domain.AdminCategoryDomain;
import kr.co.mpnp.admin.domain.AdminProductDomain;
import kr.co.mpnp.admin.service.AdminProductService;
import kr.co.mpnp.admin.vo.AdminProductVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;
import java.util.Map;

@Controller
public class AdminProductController {
	AdminProductService as = new AdminProductService();

	
	@RequestMapping(value="/admin_prdList.do", method=GET)
	public  String searchPrdList(HttpSession session,AdminProductVO aVO ,Model model) {

		model.addAttribute("product", as.SearchPrdList());
		
		return "admin/product/itemBoard";
		
	}
	//상품상세정보페이지(상품코드)
	@RequestMapping(value="admin_prddetail.do", method=GET)
	public String searchPrdDetailForm(HttpSession session,@RequestParam(value="productid") String productid, Model model) {
		AdminProductDomain ap=as.searchPrdDetail(productid);
		model.addAttribute("data",ap);
		
		return "admin/product/itemDetail";
	}
	
	
}//


