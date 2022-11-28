package kr.co.mpnp.admin.controller;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.mpnp.admin.domain.AdminMemberDomain;
import kr.co.mpnp.admin.service.AdminMemberService;
import kr.co.mpnp.admin.service.AdminQuitMemberService;
import kr.co.mpnp.admin.vo.AdminMemberVO;

@Controller
public class AdminMemberController {
	
	//멤버조회(검색조회-등급 포함)
	@RequestMapping(value = "/admin_m_list.do", method=GET )
	public String adminMList(HttpSession session, AdminMemberVO amVO, Model model) {
		
		String url="admin/login/adminLogin";
		
		if(session.getAttribute("adminId")!=null) {
			AdminMemberService ams=new AdminMemberService();
			
			List<AdminMemberDomain> list= ams.searchMember(amVO);
			model.addAttribute("memberList",list);
			
			List<AdminMemberDomain> gradeList= ams.searchGrade(amVO);
			model.addAttribute("gradeList",gradeList);
			
			url="admin/member/memberBoard";
		}
		
		
		return url;
	}//adminMList
	
	//멤버상세보기
	@RequestMapping(value = "/admin_m_detail_form.do", method=GET )
	public String adminMDetailForm(@RequestParam(value="id") String id,HttpSession session, Model model) {
		
		AdminMemberService ams=new AdminMemberService();
		AdminMemberDomain amd=ams.searchMemberDetail(id);
		model.addAttribute("member",amd);
		
		//탈퇴한 회원일때
		AdminQuitMemberService aqs=new AdminQuitMemberService();
		AdminMemberDomain amd2=aqs.searchQuitMember(id);
		model.addAttribute("quitmember",amd2);
		
		//member id를 세션에 올려야 수정이 되지 않겠니
		session.setMaxInactiveInterval(60*2); //2분
		session.setAttribute("id", id); 
		
		return "admin/member/memberDetail";
		
	}// adminMDetailForm
	
	//멤버삭제
	@RequestMapping(value = "/admin_m_remove_process.do", method=GET )
	public String adminMRemoveProcess(String id, HttpSession session, Model model) {
		System.out.println("멤버삭제 !"+id);
		
		//member table 상태 '탈퇴'로 update
		AdminMemberService ams=new AdminMemberService();
		ams.modifyMember(id);
		
		//그리고 quitMember table에 insert하기
		AdminQuitMemberService aqs=new AdminQuitMemberService();
		aqs.addQuitMember(id);
		
		return "redirect:admin_m_list.do"; //return한 페이지는 리스트 조회한 결과가 없는걸까
	}//adminMRemoveProcess
	
	//멤버등급변경
	@RequestMapping(value = "/admin_m_grade_process.do", method = GET)
	public String adminGradeProcess(HttpSession session, AdminMemberVO amVO, Model model) {
		session.getAttribute("adminId"); 
		System.out.println("등급수정 !"+amVO.getGradeid());
		System.out.println("수정할 아이디 !"+session.getAttribute("adminId")); //불러옴
		
		AdminMemberService ams=new AdminMemberService();
		ams.modifyMemberGrade(amVO);
		
		return "redirect:admin_m_list.do";
	}//adminGradeProcess
	
	

}//class
