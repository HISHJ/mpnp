package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.ProductDomain;
import kr.co.mpnp.user.domain.ProductReviewDomain;
import kr.co.mpnp.user.service.ProductReviewService;
import kr.co.mpnp.user.service.ProductService;
import kr.co.mpnp.user.vo.ProductCartVO;
import kr.co.mpnp.user.vo.ProductVO;
import kr.co.mpnp.user.vo.WishListVO;

@Controller
public class ProductController {
//상품중분류
@RequestMapping(value="/prdList.do", method=GET)
public String searchPrdList(ProductVO pVO,Model model) {
	
	ProductService ps=new ProductService();
	List<ProductDomain> list=ps.searchPrdList(pVO);

	model.addAttribute("sub", list);

	
	
	//페이징변수
	int totalData =ps.searchPrdCnt(pVO);
	int lastPage = ps.lastPage(totalData);
	int curPage = pVO.getPageFlag();
	int startNum = ps.startNum(curPage);
	int isLast = ps.isLast(lastPage, startNum);
			
	//view로 전송
	model.addAttribute("totalData", totalData);
	model.addAttribute("lastPage", lastPage);
	model.addAttribute("startNum", startNum);
	model.addAttribute("isLast", isLast);
	model.addAttribute("curPage", curPage);
	
	
	return "user/product/prdList";
}

//상품상세보기
@RequestMapping(value="/prddetail.do", method=GET)
public String searchPrdDetail( String reviewid,@RequestParam(value="productid") String productid,
		HttpSession session,Model model) {
	
	WishListVO wVO= new WishListVO();
	ProductCartVO cVO = new ProductCartVO();
	ProductService ps= new ProductService();
	ProductReviewService pr = new ProductReviewService();
	//세션 값 확인
	String id =(String)session.getAttribute("id");
	if(id!=null) {
		wVO.setId(id);
		wVO.setProductid(productid);
		
		model.addAttribute("wishFlag",ps.checkWish(wVO));
		System.out.println(ps.checkWish(wVO));
	}

	System.out.println(wVO);



	ProductDomain pd=ps.searchPrdDetail(productid);
	List<ProductReviewDomain> list = pr.searchProductReview(productid);
	List<ProductReviewDomain > slist=pr.searchStarCnt(productid);	
	System.out.println(pd);

	model.addAttribute("prdImg", ps.searchPrdImg(productid));

	model.addAttribute("id",id);
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
	String id =(String)session.getAttribute("id");
	if(id!=null) {
		
		result=ps.addCart(cVO);
	} else {//세션에 아이디 없을때
		result=-1;
	}
	
	
	
	return result+" ";

	
	

}//addCart
//찜담기 : ajax에서 parameter를 받아올때 @ResponseBody를 사용하면 된다!
@ResponseBody
@RequestMapping(value="addWish.do",method=POST)
public String addWish(ProductCartVO cVO,HttpSession session,Model model) throws Exception {
	
	ProductService ps=new ProductService();
	String id=(String)session.getAttribute("id");
	//로그인 확인 : 나중에 session받아오기..!
	int result=0;
	if(id!=null) {
		result= ps.addWish(cVO);
	} else {//세션에 아이디 없을때
		model.addAttribute("msg", "로그인 후에 시도해주세요.");
	}
	return result+" ";
	
	
	
	
}//addCart

	
}//class
