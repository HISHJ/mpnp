package kr.co.mpnp.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mpnp.user.domain.MainDomain;
import kr.co.mpnp.user.service.MainService;
import kr.co.mpnp.user.vo.mainVO;

@Controller
public class mainController {
	//메인화면
	
	@RequestMapping(value="/index.do", method=GET)
	public String main(HttpSession session,Model model,String mainid ) {
	
		
		session.setAttribute("id", "id007");
		 MainService ms = new MainService(); 
		 mainVO mVO= new mainVO();
		 List<MainDomain> list =null;
		 if(mainid==null) {
			 mainid="m0001";
		 }
		 list=ms.searchPrdList(mainid);
		model.addAttribute("prdList",list);
		//페이징변수
				int totalData =ms.searchPrdCnt(mainid);
				int lastPage = ms.lastPage(totalData);
				int curPage = mVO.getPageFlag();
				int startNum = ms.startNum(curPage);
				int isLast = ms.isLast(lastPage, startNum);
						
				//view로 전송
				model.addAttribute("totalData", totalData);
				model.addAttribute("lastPage", lastPage);
				model.addAttribute("startNum", startNum);
				model.addAttribute("isLast", isLast);
				model.addAttribute("curPage", curPage);
		
		
		System.out.println(session.getAttribute("id"));
		return"user/main/index";
	}
	
	
	//메인-> 상품전체보기
	@ResponseBody
	@RequestMapping(value="/mainList.do", method=GET)
	public String mainList(HttpSession session,Model model,String mainid) {
		
		MainService ms= new MainService();
		 List<MainDomain> list =
		 ms.searchPrdList(mainid); 
		 int cnt=ms.searchPrdCnt(mainid);

		 model.addAttribute("prdList",list);
		 model.addAttribute("cnt", cnt);
		
		
		
		return "user/main/mainList";
	}
	
}
