package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.mpnp.user.domain.MypageDomain;
import kr.co.mpnp.user.service.MypageService;
import kr.co.mpnp.user.vo.MypageVO;

@Controller
public class MypageController {
	
	//마이페이지 메인
	@RequestMapping(value = "/mypage_form.do", method=GET )
	public String mypageForm(HttpSession session, Model model) {
		boolean flag=false;
		String url="user/mypage/mypage_main";
		
		flag=session.getAttribute("id")!=null?true:false; 
		if(!flag) {
			url="user/member/login";//로그인 안했을때
		}
		
		System.out.println("세션아이디"+session.getAttribute("id"));
		
		return url;
	}//mypageForm
	
	//비번확인 폼
	@RequestMapping(value = "/mypage_pass_confirm.do", method=GET )
	public String mypagePassForm(HttpSession session) {
		session.getAttribute("id");
		System.out.println("세션에 아이디: "+session.getAttribute("id")); //들어오고
		
		return "user/mypage/pass_confirm";
	}//mypagePassForm
	
	//비번확인
	@RequestMapping(value = "/pass_confirm_process.do", method=GET )
	public String mypagePassProcess(HttpSession session, MypageVO mVO, Model model) {
		//여기서 회원정보 수정인지, 비번변경인지 나눠서 url 들어가야해
		//그걸 어떻게 하는걸까 
		
		//비번확인
		MypageService ms=new MypageService();
		String id=(String) session.getAttribute("id");
		mVO.setId(id);
		ms.searchPass(mVO);
		
		
		//회원정보 페이지에 값 보여주기
		MypageDomain md= ms.searchMemberInfo(id);
		System.out.println("핸드폰번호"+md.getPhone());
		System.out.println("이름"+md.getName());
		model.addAttribute("mypage",md);  
		
	
		
		return "user/mypage/mypage_info_modify";
	}//mypagePassProcess
	
	//비번번경은 member꺼 쓰면 안되나? 그럽세
	
//	//회원정보 수정 폼!!
//	@RequestMapping(value = "/m_info_modify_form.do", method=GET )
//	public String mypageModifyForm(HttpServletRequest request, Model model) {
//		
//		return "";
//	}
	
	
	//회원정보 수정
	@RequestMapping(value = "/m_info_modify_process.do", method=POST )
	public String mypageModifyProcess(HttpServletRequest request, Model model) {
		
		MypageVO mVO=new MypageVO();
		//request.getAttribute("id");
		System.out.println("컨트롤러에있는 세션 아이디!!"+request.getAttribute("id"));//null

		
		File saveDir=new File("C:/Users/user/git/mpnp/src/main/webapp/upload_pf");
		int maxSize=1024*1024*20;
		
		
		try {
			
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(),
					maxSize,"UTF-8", new DefaultFileRenamePolicy());
			mVO.setPfimg(mr.getFilesystemName("pfimg"));
			mVO.setId(mr.getParameter("id"));
			mVO.setPass(mr.getParameter("pass"));
			mVO.setName(mr.getParameter("name"));
			mVO.setPhone(mr.getParameter("phone"));
			mVO.setNick(mr.getParameter("nick"));
			
			model.addAttribute("mypage",mVO);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MypageService ms=new MypageService();
		ms.modifyMemberInfo(mVO);
		
//		mVO.setPfimg(request.getParameter("pfimg"));
//		mVO.setId(request.getParameter("id"));
//		mVO.setPass(request.getParameter("pass"));
//		mVO.setName(request.getParameter("name"));
//		mVO.setPhone(request.getParameter("phone"));
//		mVO.setNick(request.getParameter("nick"));
//		
//		System.out.println(request.getParameter("pfimg"));
//		System.out.println(request.getParameter("id"));
//		System.out.println(request.getParameter("pass"));
//		System.out.println(request.getParameter("name"));
//		System.out.println(request.getParameter("phone"));
//		System.out.println(request.getParameter("nick"));
		
		return "user/mypage/mypage_main";
	}//memberModifyProcess
	
	//회원탈퇴 폼
	@RequestMapping(value = "/m_quit_form.do", method=GET )
	public String memberQuitForm() {
		
		return "user/mypage/quitMember";
	}//memberQuitForm
	
	//회원탈퇴
	@RequestMapping(value = "/m_quit_process.do", method=GET )
	public String memberQuitProcess(HttpSession session, String str, Model model) {
		
		
		return "user/mypage/quitMemberConfirm";
	}//memberQuitProcess
	
	

}//class
