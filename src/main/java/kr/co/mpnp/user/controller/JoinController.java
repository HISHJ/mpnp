package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartRequest;

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
	
	@RequestMapping(value = "/join_idchk_process.do", method=GET )
	public String joinDupChk(String str, Model model) {
		
		return "";
	}//joinDupChk
	
	@RequestMapping(value = "/join_add_process.do", method=GET )
	public String joinAddProcess(HttpServletRequest request, Model model) {
		
		MemberVO mVO=new MemberVO();
		mVO.setPfimg(request.getParameter("pfimg"));
		mVO.setId(request.getParameter("id"));
		mVO.setPass(request.getParameter("pass"));
		mVO.setName(request.getParameter("name"));
		mVO.setPhone(request.getParameter("phone"));
		mVO.setNick(request.getParameter("nick"));
		mVO.setStatus(request.getParameter("status"));//vo랑 짝 맞는지 확인하슈
		mVO.setGradeid(request.getParameter("gradeid"));
		
		System.out.println("컨트롤러 아이디 "+request.getParameter("id"));//잘 들어옴
		
		//값 받아서 어떻게해야하지 db로 가야하는데
		JoinService js= new JoinService();
		js.addMember(mVO);
		
		
		
//		File savePfImg=new File("E:/dev/workspace_spring/mpnp/src/main/webapp/upload_pfimg");
//		int maxSize=1024*1024*20; //Byte, KB, MB, GB
//		String responseURL="";
//		try {
//			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(),
//					maxSize,"UTF-8", new DefaultFileRenamePolicy());
//			//3.파라메터 받기(VO에 넣어야한다면 VO를 생성하여 값 넣는다)
//			UploadVO uVO=new UploadVO();
//			uVO.setUploader(mr.getParameter("uploader"));
//			uVO.setAge(Integer.parseInt(mr.getParameter("age")));
//			uVO.setUpfile(mr.getFilesystemName("upfile"));
//			
//			//JSP에서 입력값을 보여주기 위해 model에 VO를 넣는다
//			model.addAttribute("viewData",uVO);
//			
//			responseURL="/day1104/upload_success";
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		
		
		
		return "user/join/signUp_result";
	}//joinAddProcess
	
	
	

}
