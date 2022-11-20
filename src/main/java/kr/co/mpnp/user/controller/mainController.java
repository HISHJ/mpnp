package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.mpnp.user.domain.MainDomain;
import kr.co.mpnp.user.service.MainService;

@Controller
public class mainController {
	//메인화면
	@RequestMapping(value="/index.do", method=GET)
	public String main(HttpSession session,Model model,String mainid ) {
		
		
		
		 MainService ms = new MainService(); 
		 List<MainDomain> list =
		 ms.searchPrdList("m0001"); 

		 model.addAttribute("prdList",list);
		 
		
		return"user/main/index";
	}
	
	
	//메인-> 상품전체보기
	@RequestMapping(value="/mainList.do", method=GET)
	public String mainList(HttpSession session,Model model,String mainid) {
		
		MainService ms= new MainService();
		 List<MainDomain> list =
		 ms.searchPrdList("m0001"); 
		 int cnt=ms.searchPrdCnt("m0001");

		 model.addAttribute("prdList",list);
	
		
		
		
		return "user/main/mainList";
	}
	
}
