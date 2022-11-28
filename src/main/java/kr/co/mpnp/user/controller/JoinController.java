package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.mpnp.user.service.JoinService;
import kr.co.mpnp.user.vo.MemberVO;


@Controller
public class JoinController {
	
	@RequestMapping(value = "/join_terms.do", method=GET )
	public String joinTerms() {
		//넣을거없음
		return "user/join/terms";
	}//joinTerms
	
	@RequestMapping(value = "/join_form.do", method=GET )
	public String joinForm() {
		//넣을거없음
		return "user/join/signUp";
	}//joinForm
	
	@ResponseBody
	@RequestMapping(value = "/join_idchk_process.do", method=GET )
	public String joinDupChk(String id, Model model) {
		
		//ajax 사용할건데 페이지 이동이 있으면 되나 ? 
		
		JoinService js=new JoinService();
//		System.out.println("중복환인 return 값 "+js.searchDupChk(id));
		
		return js.searchDupChk(id);
	}//joinDupChk
	
	@RequestMapping(value = "/join_add_process.do", method=POST )
	public String joinAddProcess(HttpServletRequest request, Model model) {
		
		MemberVO mVO=new MemberVO();
		File saveDir=new File("C:/Users/user/git/mpnp/src/main/webapp/upload/pfimg");
		int maxSize=1024*1024*20;
		
		
		//DB에 데이터는 들어가는데 ...디렉토리에는 사진이 안들어가지 해결완료 jsp form 태그를 조심ㅎㅐ.. Post방식으로 받아야하는것도
		try {
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(),
					maxSize,"UTF-8", new DefaultFileRenamePolicy());
			mVO.setPfimg(mr.getFilesystemName("pfimg"));
			
			mVO.setId(mr.getParameter("id"));
			mVO.setPass(mr.getParameter("pass"));
			mVO.setName(mr.getParameter("name"));
			mVO.setPhone(mr.getParameter("phone"));
			mVO.setNick(mr.getParameter("nick"));
			mVO.setStatus(mr.getParameter("status"));
			mVO.setGradeid(mr.getParameter("gradeid"));
			
			model.addAttribute("join",mVO);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		JoinService js= new JoinService();
		js.addMember(mVO);
		return "user/join/signUp_result";
	}//joinAddProcess
	
	
	

}
