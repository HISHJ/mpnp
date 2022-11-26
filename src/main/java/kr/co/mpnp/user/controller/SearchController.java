package kr.co.mpnp.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.mpnp.user.domain.SearchDomain;
import kr.co.mpnp.user.service.SearchService;
import kr.co.mpnp.user.vo.SearchVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class SearchController {

	@RequestMapping(value="/search_prd_list.do", method=GET)
	public String searchPrdList(Model model, SearchVO sVO) {
		SearchService ss= new SearchService();
		//검색결과
		List<SearchDomain> list =  ss.searchProduct(sVO);
		model.addAttribute( "result",list);
		//베스트5개
		model.addAttribute("best",ss.searchBestFive());
		
		
		//현재날짜 구하기
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		model.addAttribute("today", sdf1.format(System.currentTimeMillis()));
		//검색결과 총 갯수(페이지네이션 너무어렵다........ )
		//페이징변수
		int totalData =ss.TotalCnt(sVO);
		int lastPage = ss.lastPage(totalData);
		int curPage = sVO.getPageFlag();
		int startNum = ss.startNum(curPage);
		int isLast = ss.isLast(lastPage, startNum);
				
		//view로 전송
		model.addAttribute("totalData", totalData);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("startNum", startNum);
		model.addAttribute("isLast", isLast);
		model.addAttribute("curPage", curPage);
	

		
		
		
		return "user/main/search_result";
	}
	
	
}//class
