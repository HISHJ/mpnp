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
	public String loginForm(HttpSession session) {
		
		session.removeAttribute("id");
		session.invalidate();
		
		return "user/member/login";
	}//loginForm
	
	@RequestMapping(value = "/login_process.do", method=GET )
	public String loginProcess(HttpSession session,MemberVO mVO,Model model) {
		
		MemberService ms=new MemberService();
		boolean flag=ms.searchLogin(mVO);
		
		String url="redirect:/index.do"; //실패했을때 처리해줘야해.. 지금은 기력이없고 내일
		if(flag) {
			session.setMaxInactiveInterval(60*10); //10분
			session.setAttribute("id", mVO.getId()); 
			url="redirect:/index.do";
		}
		
		return url;//원래는 메인으로 갈 것
	}//loginProcess
	
	@RequestMapping(value = "/logout_process.do", method=GET )
	public String logoutPcoess(HttpSession session) {
		
		session.removeAttribute("id");
		session.invalidate();
		
		return "redirect:/index.do"; //메인으로 갈 것
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
	public String findPassProcess(HttpSession session, MemberVO mVO, Model model) {
		
		MemberService ms=new MemberService();
		MemberDomain md=ms.searchMemberPass(mVO);
		model.addAttribute("passFind", md);
		
		System.out.println("m_findpass_process-id: "+mVO.getId());
		
		if(md!=null) {
			session.setMaxInactiveInterval(60*3); //10분
			session.setAttribute("id", mVO.getId()); 
		}
		
		return "user/member/pass_modify"; 
	}//findPassProcess
	
	
	
	@RequestMapping(value = "/m_modifypass_form.do", method=GET )
	public String passModifyForm() {
		
		return "user/member/pass_modify";
	}//passModifyForm
	
	@RequestMapping(value = "/m_modifypass_process.do", method=GET )
	public String passModifyProcess(HttpSession session,MemberVO mVO) {		
		//System.out.println("들어오는 아이디"+mVO.getId());
		// param으로 받으면 안되고 세션꺼를 받아와야해 > 마이페이지에서 패스 수정할땐 말이야
		
		String id=(String)session.getAttribute("id");
		System.out.println("마이페이지 비번 수정 프로세스 아이디 "+id);
		
		mVO.setId(id);
		
		
		MemberService ms=new MemberService();
		ms.modifyMemberPass(mVO);
		
		return "user/member/login"; //
	}//passModifyProcess
	
	
	
	//여기 밑에부터는 고민 ... 
//	@RequestMapping(value = "/m_info_chk.do", method=GET )
//	public String memberChkForm() {
//		
//		return "";
//	}//memberChkForm
//	
//	@RequestMapping(value = "/m_info_form.do", method=GET )
//	public String memberForm(HttpSession session, String str, Model model) {
//		
//		return "";
//	}//memberForm
	
//	@RequestMapping(value = "/m_info_modify_process.do", method=GET )
//	public String memberModifyProcess(HttpServletRequest request, Model model) {
//		
//		return "";
//	}//memberModifyProcess
//	
//	@RequestMapping(value = "/m_quit_form.do", method=GET )
//	public String memberQuitForm() {
//		
//		return "";
//	}//memberQuitForm
//	
//	@RequestMapping(value = "/m_quit_process.do", method=GET )
//	public String memberQuitProcess(HttpSession session, String str, Model model) {
//		
//		return "";
//	}//memberQuitProcess
	
	
	//// ★ 탈퇴하고 나서 잘가라는 탈퇴 페이지 모여주는 컨트롤러도 추가해야할듯 
	
	

}//class
