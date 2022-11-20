package kr.co.mpnp.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.mpnp.admin.domain.DashCategoryDomain;
import kr.co.mpnp.admin.domain.DashMemberDomain;
import kr.co.mpnp.admin.domain.DashSalesDomain;
import kr.co.mpnp.admin.service.DashBoardService;

@Controller
public class DashBoardController {

	@RequestMapping(value="/dashboard_main.do",method=RequestMethod.GET)
	public String dashBoard(HttpSession session, Model model) {
		
		DashBoardService dbService = new DashBoardService();
		
		List<DashMemberDomain> listMember = dbService.searchMember();
		List<DashCategoryDomain> listCategory  = dbService.searchCategorySales();
		List<DashSalesDomain> listDaily = dbService.searchDailySales();
		List<DashSalesDomain> listMonth = dbService.searchMonthSales();
		
		
		return "/admin/dashboard/dashboard";
	}
	
}
