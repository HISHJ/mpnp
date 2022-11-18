package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	@RequestMapping(value = "/mypage_form.do", method=GET )
	public String mypageForm(HttpSession session, Model model) {
		
		return "";
	}//mypageForm
	
	@RequestMapping(value = "/mypage_pass_confirm.do", method=GET )
	public String mypagePassForm() {
		
		return "";
	}//mypagePassForm
	
	@RequestMapping(value = "/pass_confirm_process.do", method=GET )
	public String mypagePassProcess() {
		
		return "";
	}//mypagePassForm
	
	//비번번경은 member꺼 쓰면 안되나? 
	
	

}//class
