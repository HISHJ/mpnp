package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.user.domain.MainDomain;
import kr.co.mpnp.user.service.MainService;

@Controller
public class mainController {
	@RequestMapping(value="/index.do", method=GET)
	public String main(HttpSession session,Model model,String mainid) {
		
		
		/*
		 * MainService ms = new MainService(); List<MainDomain> list =
		 * ms.searchPrdList("m0001"); System.out.println(list);
		 * model.addAttribute("prdList",list);
		 */
		
		return"user/main/index";
	}
	
}
