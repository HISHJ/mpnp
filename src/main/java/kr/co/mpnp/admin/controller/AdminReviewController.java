package kr.co.mpnp.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.admin.domain.AdminReviewDomain;
import kr.co.mpnp.admin.service.AdminReviewService;
import kr.co.mpnp.admin.vo.AdminReviewVO;

@Controller
public class AdminReviewController {
	
	// 리뷰리스트조회
	@RequestMapping(value="/admin_review_list.do", method=RequestMethod.GET)
	public String adminReviewList(HttpSession session, AdminReviewVO arVO, Model model) {
		boolean loginFlag = false;
		// session에 아이디가 null이 아니어야함
		loginFlag = session.getAttribute("id")!=null?true:false;
		System.out.println("AdminReviewController : "+arVO.toString());
		
		List<AdminReviewDomain> list = null;
		//if(loginFlag) {
			AdminReviewService arService = new AdminReviewService();
			
			list = arService.searchReviewList(arVO);
		//}
		System.out.println("확인용 : "+list);
		model.addAttribute("reviewList",list);
			
		return "/admin/review/reviewBoard";
	}
	
	// 리뷰상세조회
	@RequestMapping(value="/admin_review_detail_form.do", method=RequestMethod.GET)
	public String adminReviewDetailForm(HttpSession session, String reviewId, Model model) {
		
		boolean loginFlag = false;
		loginFlag = session.getAttribute("id")!=null?true:false;
		
		System.out.println(reviewId);
		
		//if(loginFlag) {
			AdminReviewService arService = new AdminReviewService();
			
			AdminReviewDomain reviewDetail = arService.searchReviewDetail(reviewId);
		//}
		System.out.println("확인용 : "+reviewDetail);
		model.addAttribute("reviewDetail",reviewDetail);
		
		return "/admin/review/reviewDetail";
	}
	
	// 리뷰삭제
	@ResponseBody
	@RequestMapping(value="/admin_review_delete_process.do", method=RequestMethod.GET)
	public String adminReviewRemoveProcess(HttpSession session, String reviewId, Model model) {
		
		System.out.println("넘어오긴하나 "+reviewId);
		AdminReviewService arService = new AdminReviewService();
		return arService.removeReview(reviewId);
		//if(arService.removeReview(reviewId)) { // 삭제가 됐다 alert를 어떻게 띄울건데 AJAX...?
			
		//}
		
		//return "forward:admin_review_list.do";
	}
	
	
}