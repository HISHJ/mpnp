package kr.co.mpnp.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.mpnp.admin.service.AdminLoginService;
import kr.co.mpnp.admin.vo.AdminLoginVO;

@Controller
public class AdminLoginController {
	
	@RequestMapping(value = "/admin_login_form.do", method=GET ) //admin index 여기로 연결하기
	public String adminLoginForm(HttpSession session) {
		
		//여기에 세션을 받아야해? 아이디가 안들어왔는데 ? 
		//이전에 있을 세션에 있는 id 지우는 용
		session.removeAttribute("id");
		session.invalidate();
		
		return  "admin/login/adminLogin";
	}//adminLoginForm
	
	@RequestMapping(value = "/admin_login_process.do", method=GET )
	public String adminLoginProcess(HttpSession session,AdminLoginVO alVO, Model model) {
		
		//System.out.println(alVO.getId()+"/"+alVO.getPass()); //확인완료
		AdminLoginService als=new AdminLoginService();
		boolean flag=als.searchAdminLogin(alVO); 
		
		String url="admin/login/adminLogin";
		
		if(flag) {
			session.setMaxInactiveInterval(60*30); //30분
			session.setAttribute("id", alVO.getId()); 
			url="redirect:dashboard_main.do";
		}
		
		return url; 
	}//adminLoginProcess
	
	@RequestMapping(value = "/admin_logout_process.do", method=GET )
	public String adminLogoutProcess(HttpSession session) {
		session.removeAttribute("id");
		
		session.invalidate();
		
		//return "redirect:/admin/login/adminLogin"; //안됨. view바깥으로 내놔야 이동가능한듯
		return "admin/login/adminLogin"; //테스트용1-성공
		//return "admin/login/adminLogoutTest"; //테스트용2-안끊김. 이동은 됨
	}//adminLogoutProcess
	
	@RequestMapping(value = "/admin_modify_pass_form.do", method=GET )
	public String adminModifyPassForm(HttpSession session) {
		
		//세션에 아이디 없을때 처리
		String url="admin/login/adminLogin";
		if(session.getAttribute("id")!=null) {
			url="admin/login/adminModifyPass";
		}
		
		return url;
	}//adminModifyPassForm
	
	@RequestMapping(value = "/admin_modify_pass_process.do", method=GET )
	public String adminModifyPassProcess(HttpSession session,AdminLoginVO alVO) {
		//System.out.println("수정컨트롤러 임다");
		String id=(String)session.getAttribute("id");
		
		AdminLoginService als=new AdminLoginService();
		
		alVO.setId(id);
		System.out.println("관리자 비번변경 controller id "+id);
		System.out.println("관리자 비번변경 controller pass "+alVO.getPass());
		boolean passChk=als.searchAdminLogin(alVO); 
		if(passChk) { //아이디 비번 맞으면
			als.modifyAdminPass(alVO);
		}
		
		return "admin/login/adminLogin";
	}//adminModifyPassProcess
	

}//class
