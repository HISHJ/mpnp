package kr.co.mpnp.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.admin.vo.AdminLoginVO;


@Controller
public class AdminLoginController {
	
	@RequestMapping(value = "/admin_login_form.do", method=GET )
	public String adminLoginForm(HttpSession session) {
		
		return  "/admin/login/adminlogin.jsp";
	}//adminLoginForm
	
	@RequestMapping(value = "/admin_login_process.do", method=GET )
	public String adminLoginProcess(HttpSession session,AdminLoginVO alVO, Model model) {
		
		return "";
	}//adminLoginProcess
	
	@RequestMapping(value = "/admin_logout_process.do", method=GET )
	public String adminLogoutProcess(HttpSession session) {
		
		return "";
	}//adminLogoutProcess
	
	@RequestMapping(value = "/admin_modify_pass_form.do", method=GET )
	public String adminModifyPassForm(HttpSession session) {
		
		return "/admin/login/adminModifyPass.jsp";
	}//adminModifyPassForm
	
	@RequestMapping(value = "/admin_modify_pass_process.do", method=GET )
	public String adminModifyPassProcess(HttpSession session,AdminLoginVO alVO) {
		
		return "";
	}//adminModifyPassProcess
	

}//class
