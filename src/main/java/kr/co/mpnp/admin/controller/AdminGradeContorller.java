package kr.co.mpnp.admin.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

//	////DB전달 완료
//	// 등급추가버튼클릭(완료)
//	@ResponseBody
//	@RequestMapping(value = "/admin_g_add_process.do", method = GET,produces = "application/json;charset=UTF-8")
//	public String adminGAddProcess(HttpSession session, AdminGradeVO agVO) {
//
//		// System.out.println(agVO);
//		AdminGradeService ags = new AdminGradeService();
//		// agVO.getMaxPrice() //파스인트
//
//		return ags.addGrade(agVO);
//	}// adminGAddProcess
	////DB전달 완료
	// 등급추가버튼클릭(완료)
	
	@RequestMapping(value = "/admin_g_add_process.do",method = GET,produces = "application/json;charset=UTF-8")
	public String adminGAddProcess(HttpSession session, AdminGradeVO agVO) {
		int cnt = 0;
		// System.out.println(agVO);
		AdminGradeService ags = new AdminGradeService();
		cnt =ags.addGrade(agVO); 
		// agVO.getMaxPrice() //파스인트
		
		return "/admin/grade/grade_add_process";
	}// adminGAddProcess
	
	/////////////////////////////////////////////////////////////////////////////////////

	// 등급상세보기페이지 이동(완료)
	@RequestMapping(value = "/admin_g_detail_form.do", method = GET)
	public String adminGDetailForm(String gradeId ,HttpSession session,Model model) {
		  model.addAttribute("gradeId", gradeId);
		  AdminGradeService agServ = new AdminGradeService(); 
		  AdminGradeDomain agDom =agServ.searchGrade(gradeId); 
		  model.addAttribute("agDom",agDom);
		 return "/admin/grade/gradeDetailList";
	}// adminGDetailForm
	
	////////////////////////////////////////////////////////////////////////////////////////

	//DB전달 완료
	// 등급상세정보변경
	@RequestMapping(value = "/admin_g_modify_process.do", method = GET)
	public String adminGModifyProcess(HttpSession session,AdminGradeVO agVO,Model model) {
	
		  System.out.println("업데이트 테스트"+agVO);
		  AdminGradeService agServ = new AdminGradeService(); 
		  int cnt = agServ.modifyGradeInfo(agVO);
		  System.out.println(cnt + "건 변경");
		 model.addAttribute("cnt ",cnt );
		  
		return "/admin/grade/gradeDetail_modify_process";
	}// adminGModifyProcess

	// 등급삭제(변경임) - 솔직히 필요 이유를 모르겠음 위에서 수정가능한데 여기서 왜 또 수정해야하지..?
	@RequestMapping(value = "/admin_g_remove_process.do", method = GET)
	public String adminGRemoveProcess(HttpSession session,AdminGradeVO agVO) {
		
		AdminGradeService agServ = new AdminGradeService(); 
		int cnt = agServ.removeGrade(agVO);
		System.out.println(cnt + "건 삭제됨");
		
		return "/admin/grade/grade_remove_process";
	}// adminGModifyProcess

}//class
