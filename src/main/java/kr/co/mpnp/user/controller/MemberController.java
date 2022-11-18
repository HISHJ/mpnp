package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.user.vo.MemberVO;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/login_form.do", method=GET )
	public String loginForm() {
		
		return "";
	}//loginForm
	
	@RequestMapping(value = "/login_process.do", method=GET )
	public String loginProcess(MemberVO mVO,Model model) {
		
		return "";
	}//loginProcess
	
	@RequestMapping(value = "/logout_process.do", method=GET )
	public String logoutPcoess(HttpSession session) {
		
		return "";
	}//logoutPcoess
	
	@RequestMapping(value = "/m_findid_form.do", method=GET )
	public String findIdForm() {
		
		return "";
	}//findIdForm
	
	@RequestMapping(value = "/m_findid_process.do", method=GET )
	public String findIdProcess(MemberVO mVO, Model model) {
		
		return "";
	}//findIdProcess
	
	@RequestMapping(value = "/m_findpass_form.do", method=GET )
	public String findPassForm() {
		
		return "";
	}//findPassForm
	
	@RequestMapping(value = "/m_findpass_process.do", method=GET )
	public String findPassProcess(MemberVO mVO, Model model) {
		
		return "forward:m_modifypass_form.do"; // ? 
	}//findPassProcess
	
	@RequestMapping(value = "/m_modifypass_form.do", method=GET )
	public String passModifyForm() {
		
		return "";
	}//passModifyForm
	
	@RequestMapping(value = "/m_modifypass_process.do", method=GET )
	public String passModifyProcess(MemberVO mVO) {
		
		return "";
	}//passModifyProcess
	
	@RequestMapping(value = "/m_info_chk.do", method=GET )
	public String memberChkForm() {
		
		return "";
	}//memberChkForm
	
	@RequestMapping(value = "/m_info_form.do", method=GET )
	public String memberForm(HttpSession session, String str, Model model) {
		
		return "";
	}//memberForm
	
	@RequestMapping(value = "/m_info_modify_process.do", method=GET )
	public String memberModifyProcess(HttpServletRequest request, Model model) {
		
		return "";
	}//memberModifyProcess
	
	@RequestMapping(value = "/m_quit_form.do", method=GET )
	public String memberQuitForm() {
		
		return "";
	}//memberQuitForm
	
	@RequestMapping(value = "/m_quit_process.do", method=GET )
	public String memberQuitProcess(HttpSession session, String str, Model model) {
		
		return "";
	}//memberQuitProcess
	
	
	//// ★ 탈퇴하고 나서 잘가라는 탈퇴 페이지 모여주는 컨트롤러도 추가해야할듯 
	
	

}//class
