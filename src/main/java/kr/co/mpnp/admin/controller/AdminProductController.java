package kr.co.mpnp.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.mpnp.admin.domain.AdminCategoryDomain;
import kr.co.mpnp.admin.domain.AdminProductDomain;
import kr.co.mpnp.admin.service.AdminProductService;
import kr.co.mpnp.admin.vo.AdminProductVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Controller
public class AdminProductController {
	AdminProductService as = new AdminProductService();
	
	
	//카테고리

	@ResponseBody
	@RequestMapping(value="admin_category.do", method=GET,  produces = "application/text; charset=UTF-8")
	public String searchCategory(String mainid) throws SQLException  {
		
		String jsonObj = as.SubCategory(mainid);
	
		System.out.println(jsonObj);
		
	
		return jsonObj;
	}
	
	//상품목록
	
	@RequestMapping(value="admin_prdList.do", method=GET)
	public  String searchPrdList(HttpSession session,AdminProductVO apVO ,Model model) throws SQLException {
		
		
		model.addAttribute("product", as.SearchPrdList(apVO));
	
		return "admin/product/itemBoard";
		
	}
	//상품상세정보페이지(상품코드)
	@RequestMapping(value="admin_prddetail.do", method=GET)
	public String searchPrdDetailForm(HttpSession session,@RequestParam(value="productid") String productid, Model model) {
		AdminProductDomain ap=as.searchPrdDetail(productid);
		model.addAttribute("data",ap);
		
		return "admin/product/itemDetail";
	}


	//상품추가폼
	@RequestMapping(value="admin_prd_insert.do", method=GET)
	public String addProductForm(HttpSession session) {
		
		
		return"admin/product/itemAdd";
	}
	
	//상품추가
	@RequestMapping(value="admin_prdinsert_process.do", method=POST)
	public String addProductForm(HttpServletRequest request,HttpSession session) {
		AdminProductVO apVO = new AdminProductVO();
		int result=0;
		//이미지 업로드
		File saveDir =new File("C:/Users/user/git/mpnp/src/main/webapp/images");
		int maxSize=1024*1024*20;//byte*kb*mb*gb 
		

			
			String name=request.getParameter("name");
			String price= request.getParameter("price");
			String status=request.getParameter("status");
			String thImg=request.getParameter("thImg");
			String infoImg=request.getParameter("infoImg");
			String[] multmg=request.getParameterValues("mImg");

			apVO.setinfo_img(infoImg);
			apVO.setth_img(thImg);
			
			
			System.out.println(apVO);

		
	
	
		
		return "redirect:admin/product/itemAdd";
		
		
		
		
		
	}
	

}//class
