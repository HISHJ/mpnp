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
		
		String	url="user/member/login";//로그인 안했을때 로그인창으로 보내기
		
		flag=session.getAttribute("id")!=null?true:false; //오잉 ?이게 불린이 된다고? 바보야...삼항 연산이잖아 ...
		
		//System.out.println("세션 id "+session.getAttribute("id")); //됨
		String id=(String) session.getAttribute("id");
		
		if(flag) {//로그인 했을 때
			url="user/mypage/mypage_main";
			MypageService ms=new MypageService();
			MypageDomain md=ms.searchMypageMember(id);
			model.addAttribute("mypageMain",md);
		}
		
		//System.out.println("세션아이디"+session.getAttribute("id"));
		
		return url;
	}//mypageForm
	
	
	//비번확인 폼 //이걸 process에서 나눠줘야지 그럼 어떻게 하지 ? 
	//hidden에 mdodel 넣을까 이게 맞나
	@RequestMapping(value = "/mypage_pass_confirm.do", method=GET )
	public String mypagePassForm(HttpSession session, String what, Model model) {
		String id=(String)session.getAttribute("id");
		String url="user/member/login";
		
		
		if(id!=null) {
			MypageService ms=new MypageService();
			MypageDomain md= ms.searchMemberInfo(id);
			model.addAttribute("onlyForPass", md);
//			System.out.println("세션에 아이디: "+session.getAttribute("id")); //들어오고
//			System.out.println("왓"+what); //들어옴
			
			url="user/mypage/pass_confirm";
		}
		
		return url;
	}//mypagePassForm
	
	//비번확인 
	@RequestMapping(value = "/pass_confirm_process.do", method=POST )
	public String mypagePassProcess(HttpSession session, MypageVO mVO, String what, Model model) {
		//여기서 회원정보 수정인지, 비번변경인지 나눠서 url 들어가야해
		//그걸 어떻게 하는걸까 -> 함 ㅇㅇ
		//여기 코드 정리하기 지저분함 -> 역시나 못받는 값이 있었다
		String url="";
		String id=(String) session.getAttribute("id");
		
//		System.out.println("프로세스 왓"+what); //들어온ㄷ ㅏ!
		
		//비번확인
		MypageService ms=new MypageService();
		//mVO.setId(id);
		
		//회원정보 페이지에 값 보여주기
		MypageDomain md= ms.searchMemberInfo(id);
		mVO.setId(id);
//		System.out.println("myController 핸드폰번호"+md.getPhone());
//		System.out.println("myController 아이디"+md.getId()); 
//		System.out.println("myController 이름"+md.getName());
//		System.out.println("myController 프사"+md.getPfimg());
//		System.out.println("myController 등급"+md.getGradeid());
		
		if("updatePass".equals(what)) {//비번설정
//			System.out.println("비번 맞고 비번 설정임");
			model.addAttribute("passFind", md);
			url="user/member/pass_modify";
		}else{//회원정보수정
			//("updateMemberInfo".equals(what))
//			System.out.println("비번 맞고 회원정보수정임");
			model.addAttribute("mypage",md);  
			url="user/mypage/mypage_info_modify";
		}
		//이거할거 
		
		return url;
	}//mypagePassProcess
	
	//비번번경은 member꺼 쓰면 안되나? 그럽세
	
	
	//회원정보 수정
	@RequestMapping(value = "/m_info_modify_process.do", method=POST )
	public String mypageModifyProcess(HttpServletRequest request, Model model) {
		
		MypageVO mVO=new MypageVO();
//		System.out.println("회원정보수정 아이디!!"+request.getAttribute("id"));//null

		
		File saveDir=new File("C:/Users/user/git/mpnp/src/main/webapp/upload/pfimg");
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
			mVO.setGradeid(mr.getParameter("gradeid"));
			
//			System.out.println("회원정보수정 pfimg"+mVO.getPfimg());
//			System.out.println("회원정보수정 gid"+mVO.getGradeid());
			model.addAttribute("mypageMain",mVO);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MypageService ms=new MypageService();
		ms.modifyMemberInfo(mVO);
		
		return "user/mypage/mypage_main";
	}//memberModifyProcess
	
	//회원탈퇴 폼
	@RequestMapping(value = "/m_quit_form.do", method=GET )
	public String memberQuitForm(HttpSession session,Model model) {
		String id=(String)session.getAttribute("id");
		MypageService ms=new MypageService();
		MypageDomain md= ms.searchMemberInfo(id);
		
		model.addAttribute("quitMemChk", md);
		return "user/mypage/quitMember";
	}//memberQuitForm
	
	//회원탈퇴
	@RequestMapping(value = "/m_quit_process.do", method=POST )
	public String memberQuitProcess(HttpSession session, MypageVO mVO, Model model) {
		
		MypageService ms=new MypageService();
		//아이디,비번이 맞는지 확인
		String id=(String) session.getAttribute("id");
		mVO.setId(id);
		ms.searchMember(mVO);
		
		//탈퇴상태 update
		ms.modifyMemberStatus(mVO);
		
		//탈퇴테이블에 insert
		ms.addQuitMember(mVO);
		
		return "user/mypage/quitMemberComfirm";
	}//memberQuitProcess
	
	

}//class
