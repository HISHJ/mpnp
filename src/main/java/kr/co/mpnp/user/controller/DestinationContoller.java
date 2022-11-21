package kr.co.mpnp.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.DestinationDomain;
import kr.co.mpnp.user.service.DestinationService;
import kr.co.mpnp.user.vo.DestinationVO;

@Controller
public class DestinationContoller {

	// 배송지리스트 조회
	@RequestMapping(value="/des_list.do", method=RequestMethod.GET)
	public String desList(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		System.out.println("DestinationController : id - "+id);
		
		DestinationService desService = new DestinationService(); 
		
		List<DestinationDomain> desList = desService.searchDes("id005");
		for(DestinationDomain dd : desList) {
			System.out.println("DestinationContoller : destinationId - "+dd.getDestinationId());
		}
		model.addAttribute("desList",desList);
		
		
		return "/user/mypage/delivery_test";
	}
	
	// 배송지 추가
	@ResponseBody
	@RequestMapping(value="/des_add_process.do", method=RequestMethod.GET)
	public String desAddProcess(HttpSession session, DestinationVO dtVO, Model model) {
		
		System.out.println(dtVO.toString());
		//String id = "id005";
		dtVO.setId("id005");
		
		
		DestinationService desService = new DestinationService(); 
		//desService.addDes(dtVO);
		if("O".equals(dtVO.getDefaultFlag())) {
			desService.editDefault(dtVO);
		}
		//return "des_list.do";
		return desService.addDes(dtVO);
	}
	
	// 배송지 정보변경
	@ResponseBody
	@RequestMapping(value="/des_modify_process.do", method=RequestMethod.GET)
	public String desLModifyProcess(HttpSession session, DestinationVO dtVO, Model model) {
		
		System.out.println("배송지정보변경 dtVO : "+dtVO.toString());
		dtVO.setId("id005");
		
		DestinationService desService = new DestinationService(); 
		if("O".equals(dtVO.getDefaultFlag())) {
			desService.editDefault(dtVO);
		}
		
		return desService.modifyDes(dtVO);
	}
	
	// 배송지 삭제
	@ResponseBody
	@RequestMapping(value="/des_remove_process.do", method=RequestMethod.GET)
	public String desRemoveProcess(HttpSession session, String dtId, Model model) {
		
		DestinationService desService = new DestinationService(); 
		return desService.removeDes(dtId);
	}
	
}
