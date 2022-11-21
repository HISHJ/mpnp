package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.user.domain.MemberDomain;
import kr.co.mpnp.user.service.MemberService;
import kr.co.mpnp.user.vo.MemberVO;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/login_form.do", method=GET )
	public String loginForm() {
		
		return "user/member/login";
	}//loginForm
	
	@RequestMapping(value = "/login_process.do", method=GET )
	public String loginProcess(HttpSession session,MemberVO mVO,Model model) {
		
		MemberService ms=new MemberService();
		boolean flag=ms.searchLogin(mVO);
		
		String url="redirect:/indexHJY.jsp"; //실패했을때 처리해줘야해.. 지금은 기력이없고 내일
		if(flag) {
			session.setMaxInactiveInterval(60*10); //10분
			session.setAttribute("id", mVO.getId()); 
			url="redirect:/indexHJY.jsp";
		}
		
		return url;//원래는 메인으로 갈 것
	}//loginProcess
	
	@RequestMapping(value = "/logout_process.do", method=GET )
	public String logoutPcoess(HttpSession session) {
		
		session.removeAttribute("id");
		session.invalidate();
		
		return "redirect:/indexHJY.jsp"; //메인으로 갈 것
	}//logoutPcoess
	
	@RequestMapping(value = "/m_findid_form.do", method=GET )
	public String findIdForm() {
		
		
		return "user/member/find_id";
	}//findIdForm
	
	@RequestMapping(value = "/m_findid_process.do", method=GET )
	public String findIdProcess(MemberVO mVO, Model model) {
		
		MemberService ms=new MemberService();
		MemberDomain md=ms.searchMemberId(mVO);
		model.addAttribute("idFind", md);
		
		return "user/member/find_id_result";
	}//findIdProcess
	
	@RequestMapping(value = "/m_findpass_form.do", method=GET )
	public String findPassForm() {
		
		
		return "user/member/find_pass";
	}//findPassForm
	
	@RequestMapping(value = "/m_findpass_process.do", method=GET )
	public String findPassProcess(MemberVO mVO, Model model) {
		
		MemberService ms=new MemberService();
		ms.searchMemberPass(mVO);
		
		String url="";//비번찾기 실패시 어떻게 처리할지 생각해보슈
		
		return "user/member/pass_modify"; 
	}//findPassProcess
	
	
	
	@RequestMapping(value = "/m_modifypass_form.do", method=GET )
	public String passModifyForm() {
		
		return "user/member/pass_modify";
	}//passModifyForm
	
	@RequestMapping(value = "/m_modifypass_process.do", method=GET )
	public String passModifyProcess(MemberVO mVO) {		
		System.out.println("들어오는 아이디"+mVO.getId());
		
		MemberService ms=new MemberService();
		ms.modifyMemberPass(mVO);
		
		return "user/member/login"; //
	}//passModifyProcess
	
	
	
	//여기 밑에부터는 고민 ... 
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
