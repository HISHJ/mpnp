package kr.co.mpnp.admin.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.mpnp.admin.vo.AdminReviewVO;

@Controller
public class AdminReviewController {
	
	// 리뷰리스트조회
	@RequestMapping(value="/admin_review_list.do", method=RequestMethod.GET)
	public String adminReviewList(HttpSession session, AdminReviewVO arVO, Model model) {
		
		
		
		
		return "/admin/review/reviewBoard";
	}
	
	// 리뷰상세조회
	@RequestMapping(value="/admin_review_detail_form.do", method=RequestMethod.GET)
	public String adminReviewDetailForm(HttpSession session, String reviewId, Model model) {
		
		
		
		
		return "reviewDetail";
	}
	
	// 리뷰삭제
	@RequestMapping(value="/admin_review_delete_process.do", method=RequestMethod.GET)
	public String adminReviewRemoveProcess(HttpSession session, String reviewId, Model model) {
		
		
		// model에는 삭제 되었는지 안되었는지 flag넣어서 결과에 따라 다르게 alert인지 뭔지뭔지뭔지 하면됨
		
		return "어디로갈까 삭제하고 그냥 맨위 list조회 forward걸면 되는거아닌가?";
	}
	
	
}