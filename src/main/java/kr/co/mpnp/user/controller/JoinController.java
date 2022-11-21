package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.net.http.HttpRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	
	@RequestMapping(value = "/join_terms.do", method=GET )
	public String joinTerms() {
		
		return "user/join/terms";
	}//adminLoginForm
	
	@RequestMapping(value = "/join_form.do", method=GET )
	public String joinForm() {
		
		return "user/join/signUp";
	}//joinForm
	
	@RequestMapping(value = "/join_idchk_process.do", method=GET )
	public String joinDupChk(String str, Model model) {
		
		return "";
	}//joinDupChk
	
	@RequestMapping(value = "/join_add_process.do", method=GET )
	public String joinAddProcess(HttpRequest request, Model model) {
		
		return "";
	}//joinDupChk
	
	
	

}
