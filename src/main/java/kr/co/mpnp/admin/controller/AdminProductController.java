package kr.co.mpnp.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
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
import java.util.ArrayList;
import java.util.Enumeration;
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
		List<AdminProductDomain > list=as.SearchPrdList(apVO);
		
		model.addAttribute("product",list );
	
		return "admin/product/itemBoard";
		
	}
	//상품상세정보페이지(상품코드)
	@RequestMapping(value="admin_prddetail.do", method=GET)
	public String searchPrdDetailForm(HttpSession session,@RequestParam(value="productid") String productid, String mainid,Model model) {
		AdminProductDomain ap=as.searchPrdDetail(productid);
		List<AdminProductDomain> list=as.searchPrdImg(productid);
		
	
		model.addAttribute("img", list);
		model.addAttribute("data",ap);
		
		return "admin/product/itemDetail";
	}


	//상품추가폼
	@RequestMapping(value="admin_prd_insert.do", method=GET)
	public String addProductForm(HttpSession session) {
		
		
		return"admin/product/itemAdd";
	}
	
	//상품추가
	@ResponseBody
	@RequestMapping(value="admin_prdinsert_process.do", method=POST)
	public String addProductForm(HttpServletRequest request,HttpSession session) {
		AdminProductVO apVO = new AdminProductVO();
		int result=0;
		//이미지 업로드
		File saveDir =new File("C:/Users/user/git/mpnp/src/main/webapp/images");
		int maxSize=1024*1024*20;//byte*kb*mb*gb 
		try {
			MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(),
					maxSize,"UTF-8",new DefaultFileRenamePolicy());
			List<String> list = new ArrayList<String>();
	
			
			String  mImg0 = mr.getOriginalFileName("multiImg0");
			String  mImg1 = mr.getOriginalFileName("multiImg1");
			String  mImg2 = mr.getFilesystemName("multiImg2");
			if(mImg0!=null) {list.add(mImg0);}
			if(mImg1!=null) {list.add(mImg1);}
			if(mImg2!=null) {list.add(mImg2);}
			if(list!=null) {
				apVO.setPrdimg(list);
			}
			
			apVO.setmain_id(mr.getParameter("main_id"));
			apVO.setsub_id(mr.getParameter("sub_id"));
			apVO.setname(mr.getParameter("name"));
			apVO.setPrice(Integer.parseInt(mr.getParameter("price")));
			apVO.setStatus(mr.getParameter("status"));
			apVO.setth_img(mr.getOriginalFileName("thImg"));
			apVO.setinfo_img(mr.getOriginalFileName("infoImg"));
	System.out.println(apVO);
		as.addProduct(apVO);
		}catch(IOException e) {
			e.printStackTrace();
		}
			
	return result+" ";

		
	
	
		
		
		
		
		
		
		
	}

	
	//상품 수정
	@ResponseBody
	@RequestMapping(value="admin_prd_modify.do", method=POST)
	public String modifyPrdProcess(HttpServletRequest request,HttpSession session,Model model) {
		AdminProductVO apVO = new AdminProductVO();
		int result=0;
		//이미지 업로드
		File saveDir =new File("C:/Users/user/git/mpnp/src/main/webapp/images");
		int maxSize=1024*1024*20;//byte*kb*mb*gb 
		try {
			MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(),
					maxSize,"UTF-8",new DefaultFileRenamePolicy());
			List<String> list = new ArrayList<String>();
			
			String  mImg0 = mr.getOriginalFileName("multiImg0");
			String  mImg1 = mr.getOriginalFileName("multiImg1");
			String  mImg2 = mr.getFilesystemName("multiImg2");
			if(mImg0!=null) {list.add(mImg0);}
			if(mImg1!=null) {list.add(mImg1);}
			if(mImg2!=null) {list.add(mImg2);}
			if(list!=null) {
				apVO.setPrdimg(list);
			}
			
			apVO.setProductid(mr.getParameter("productid"));
			apVO.setsub_id(mr.getParameter("sub_id"));
			apVO.setname(mr.getParameter("name"));
			apVO.setPrice(Integer.parseInt(mr.getParameter("price")));
			apVO.setStatus(mr.getParameter("status"));
			apVO.setth_img(mr.getOriginalFileName("thImg"));
			apVO.setinfo_img(mr.getOriginalFileName("infoImg"));
			apVO.setStatus(mr.getParameter("status"));
			System.out.println(apVO);
			as.modifyProduct(apVO);
		}catch(IOException e) {
			e.printStackTrace();
		}
			
		
		
		return result+" ";
		
		
		
		
	}
	

	

}//class
