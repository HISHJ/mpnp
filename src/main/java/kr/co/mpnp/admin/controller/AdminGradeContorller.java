package kr.co.mpnp.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mpnp.admin.domain.AdminGradeDomain;
import kr.co.mpnp.admin.service.AdminGradeService;
import kr.co.mpnp.admin.vo.AdminGradeVO;
//설빈
@Controller
public class AdminGradeContorller {

	// 등급관리 전체조회(완료)
	@RequestMapping(value = "/admin_g_list.do", method = GET)
	public String adminGList(HttpSession session, Model model) {
		
		AdminGradeService ags = new AdminGradeService();
		List<AdminGradeDomain> list = ags.searchGrade();
		model.addAttribute("gradeList",list);
		
		return "/admin/grade/gradeList";
	}// adminGList
	
	/////////////////////////////////////////////////////////////////////////////////////

	// 등급추가 폼(완료)
	@RequestMapping(value = "/admin_g_add_form.do", method = GET)
	public String adminGAddForm(HttpSession session) {

		return "/admin/grade/grade_add";
	}// adminGAddForm

	// 등급추가버튼클릭(완료)
	@RequestMapping(value = "/admin_g_add_process.do", method = GET)
	public String adminGAddProcess(HttpSession session, AdminGradeVO agVO) {

		// System.out.println(agVO);
		AdminGradeService ags = new AdminGradeService();
		int cnt = ags.addGrade(agVO);
		System.out.println(cnt + "건 추가");

		return "/admin/grade/grade_add_process";
	}// adminGAddProcess
	
	/////////////////////////////////////////////////////////////////////////////////////

	// 등급상세보기페이지 이동(완료)
	@RequestMapping(value = "/admin_g_detail_form.do", method = GET)
	public String adminGDetailForm(String gradeId ,HttpSession session,Model model) {
		  model.addAttribute("gradeId", gradeId);
		  //String gId=request.getParameter("gradeId");
		 // System.out.println(gradeId);
		  AdminGradeService agServ = new AdminGradeService(); 
		  AdminGradeDomain agDom =agServ.searchGrade(gradeId); 
		  model.addAttribute("agDom",agDom);
		 return "/admin/grade/gradeDetailList";
	}// adminGDetailForm
	
	////////////////////////////////////////////////////////////////////////////////////////

	// 등급상세정보변경
	@RequestMapping(value = "/admin_g_modify_process.do", method = GET)
	public String adminGModifyProcess(HttpSession session) {
		//파라미터값 받아야 할듯..   
		AdminGradeVO agVO = new AdminGradeVO();
		   //agVO.setDiscountRate("discountRate");
		  System.out.println("업데이트 테스트"+agVO);
		  AdminGradeService agServ = new AdminGradeService(); 
		  int cnt = agServ.modifyGradeInfo(agVO);
		  System.out.println(cnt + "건 변경");
		  
		return "/admin/grade/gradeDetail_modify_process";
	}// adminGModifyProcess

	// 등급삭제(변경임)
	@RequestMapping(value = "/admin_g_remove_process.do", method = GET)
	public String adminGRemoveProcess(HttpSession session,AdminGradeVO agVO) {
		
		AdminGradeService agServ = new AdminGradeService(); 
		int cnt = agServ.removeGrade(agVO);
		System.out.println(cnt + "건 삭제됨");
		
		return "/admin/grade/grade_remove_process";
	}// adminGModifyProcess

}//class
