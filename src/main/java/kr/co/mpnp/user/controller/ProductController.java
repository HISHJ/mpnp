package kr.co.mpnp.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.domain.ProductReviewDomain;
import kr.co.mpnp.user.service.ProductReviewService;
import kr.co.mpnp.user.service.ProductService;
import kr.co.mpnp.user.vo.MemberVO;
import kr.co.mpnp.user.vo.ProductCartVO;
import kr.co.mpnp.user.vo.ProductVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.security.ProtectionDomain;
import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
public class ProductController {
//상품중분류
@RequestMapping(value="/prdList.do", method=GET)
public String searchPrdList(String subid,Model model) {
	
	ProductService ps=new ProductService();
	List<ProductDomain> list=ps.searchPrdList(subid);
	int cnt =ps.searchPrdCnt(subid);
	model.addAttribute("sub", list);
	model.addAttribute("prdcnt", cnt);
	System.out.println(subid);
	
	
	return "user/product/prdList";
}

//상품상세보기
@RequestMapping(value="/prddetail.do", method=GET)
public String searchPrdDetail(@RequestParam(value="productid")  String productid,HttpSession session,Model model) {
	//세션 값 확인
	if(session.getAttribute("id")!=null) {
		String id =(String)session.getAttribute("id");
		model.addAttribute("id",id);
	}
	
	ProductService ps= new ProductService();
	ProductReviewService pr = new ProductReviewService();
	
	ProductDomain pd=ps.searchPrdDetail(productid);
	List<ProductReviewDomain> list = pr.searchProductReview(productid);
	List<ProductReviewDomain > slist=pr.searchStarCnt(productid);
	
	model.addAttribute("data", pd);
	model.addAttribute("review", list);
	model.addAttribute("star",slist);
	
	
	return "user/product/productInfo2";

}//searchPrdDetail

//카트담기 : ajax에서 parameter를 받아올때 @ResponseBody를 사용하면 된다!
@ResponseBody
@RequestMapping(value="cart_insert.do",method=POST)
public String addCart(ProductCartVO cVO,HttpSession session) throws Exception {

	ProductService ps=new ProductService();
	//로그인 확인 : 나중에 session받아오기..!
	int result=0;

	if(session.getAttribute("id")!=null) {
		
		result=ps.addCart(cVO);
	} else {//세션에 아이디 없을때
		result=-1;
	}
	
	
	
	return result+" ";

	
	

}//addCart
//찜담기 : ajax에서 parameter를 받아올때 @ResponseBody를 사용하면 된다!
@ResponseBody
@RequestMapping(value="addWish.do",method=POST)
public String addWish(ProductCartVO cVO,HttpSession session) throws Exception {
	
	ProductService ps=new ProductService();
	//로그인 확인 : 나중에 session받아오기..!
	int result=0;
	if(session.getAttribute("id")!=null) {
		
		result=ps.addWish(cVO);
	} else {//세션에 아이디 없을때
		result=-1;
	}
	
	
	
	return result+" ";
	
	
	
	
}//addCart

	
}//class
