package kr.co.mpnp.admin.controller;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.user.vo.MemberVO;

@Controller
public class AdminMemberController {
	
	@RequestMapping(value = "/admin_m_list.do", method=GET )
	public String adminMList(HttpSession session, MemberVO mVO, Model model) {
		
		return "";
	}//adminMList
	
	@RequestMapping(value = "/admin/member/admin_m_detail_form.do", method=GET )
	public String adminMDetailForm(HttpSession session,String str, Model model) {
		
		return "admin/member/memberDetail";
		
	}// adminMDetailForm
	
	@RequestMapping(value = "/admin_m_remove_process.do", method=GET )
	public String adminMRemoveProcess(HttpSession session,String str, Model model) {
		
		return "";
	}//adminMRemoveProcess
	
	@RequestMapping(value = "/admin_m_grade_process.do", method = GET)
	public String adminGradeProcess(HttpSession session,MemberVO mVO, Model model) {
		
		return "";
	}//adminGradeProcess
	
	

}//class
