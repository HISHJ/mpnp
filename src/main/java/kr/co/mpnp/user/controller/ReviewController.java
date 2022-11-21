package kr.co.mpnp.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.mpnp.user.domain.ReviewDomain;
import kr.co.mpnp.user.service.ReviewService;
import kr.co.mpnp.user.vo.ReviewVO;

@Controller
public class ReviewController {
	
	// ¿€º∫∞°¥… ∏Æ∫‰
	@RequestMapping(value="/writable_review_list.do",method=RequestMethod.GET)
	public String writableReviewList(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		System.out.println("ReviewController : id - "+id);
		
		ReviewService reviewService = new ReviewService(); 
		
		List<ReviewDomain> writableList = reviewService.searchWritableReview("id001");
		for(ReviewDomain rd : writableList) {
			System.out.println("ReviewController :  - "+rd.getPurchaseDate());
		}
		model.addAttribute("writableList",writableList);
		////////////////////////////////////////////////////////////////////////
		
		List<ReviewDomain> writenList = reviewService.searchWritenReview("id001");
		model.addAttribute("writenList",writenList);
		
		
		/////////////////////////////////////////////////////////////////////////
		return "/user/review/writable_review";
	}
	
	// ∏Æ∫‰¿€º∫ ∆˚
	@RequestMapping(value="/add_review_form.do",method=RequestMethod.GET)
	public String addReviewForm(HttpSession session, String orderDetailId, Model model) {
		
		
		return "";
	}
	
	// ∏Æ∫‰¿€º∫
	@RequestMapping(value="/add_review_process.do",method=RequestMethod.GET)
	public String addReviewProcess(HttpServletRequest request, HttpSession session, Model model) {
		
		
		return "";
	}
	
	/////////////////////////////////////////////////////////
	
	// ¿€º∫«— ∏Æ∫‰
	@RequestMapping(value="/writen_review_list.do",method=RequestMethod.GET)
	public String writenReviewList(ReviewVO rVO, HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		System.out.println("ReviewController : id - "+id);
		
		ReviewService reviewService = new ReviewService(); 
		
		List<ReviewDomain> writenList = reviewService.searchWritenReview("id001");
		for(ReviewDomain rd : writenList) {
			System.out.println("ReviewController :  - "+rd.getWriteDate());
		}
		model.addAttribute("writableList",writenList);
		
		return "";
	}
	
	// ¿€º∫∏Æ∫‰ ªÛºº∫∏±‚   
	@RequestMapping(value="/writen_review_detail_form.do",method=RequestMethod.GET)
	public String reviewDetailForm(ReviewVO rVO, HttpSession session, Model model) {
		System.out.println("ø‘≥ƒ"+rVO.getReviewId());
		
		return "";
	}
	
	// ¿€º∫∏Æ∫‰ ºˆ¡§
	@RequestMapping(value="/modify_review_process.do",method=RequestMethod.GET)
	public String modifyReviewProcess(HttpServletRequest request, HttpSession session, Model model) {

		
		return "";
	}
	
	// ∏Æ∫‰ ªË¡¶
	@RequestMapping(value="/remove_review_process.do",method=RequestMethod.GET)
	public String removeReviewProcess(String reviewId, HttpSession session, Model model) {
		
		
		return "";
	}
	
}
