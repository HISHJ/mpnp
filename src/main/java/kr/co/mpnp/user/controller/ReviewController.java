package kr.co.mpnp.user.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.mpnp.user.domain.ReviewDomain;
import kr.co.mpnp.user.service.ReviewService;
import kr.co.mpnp.user.vo.ReviewVO;

@Controller
public class ReviewController {
	
	// 작성가능 리뷰
	@RequestMapping(value="/writable_review_list.do",method=RequestMethod.GET)
	public String writableReviewList(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		//System.out.println("ReviewController : id - "+id);
		
		ReviewService reviewService = new ReviewService(); 
		// 2022-11-28 막바지 세션 아이디 테스트
		//List<ReviewDomain> writableList = reviewService.searchWritableReview("id005");
		List<ReviewDomain> writableList = reviewService.searchWritableReview(id);
		
		
		
		//System.out.println("작성가능한 리뷰 갯수 확인 "+writableList.size());
		//for(ReviewDomain rd : writableList) {
			//System.out.println("ReviewController :  - "+rd.getPurchaseDate());
		//}
		model.addAttribute("writableList",writableList);
		////////////////////////////////////////////////////////////////////////
		
		//List<ReviewDomain> writenList = reviewService.searchWritenReview("id001");
		//model.addAttribute("writenList",writenList);
		
		
		/////////////////////////////////////////////////////////////////////////
		return "/user/review/writable_review";
	}
	
	// 리뷰작성 폼
	@RequestMapping(value="/add_review_form.do",method=RequestMethod.POST)
	public String addReviewForm(HttpSession session, String orderDetailId,String name, String thImg, Model model) {
		
		//System.out.println(orderDetailId+" / "+name+" / "+thImg);
		
		model.addAttribute("odId",orderDetailId);
		model.addAttribute("prdName",name);
		model.addAttribute("prdImg",thImg);
		
		//return "/user/review/write_review";
		return "/user/review/write_review";
	}
	
	// 리뷰작성
	@RequestMapping(value="/add_review_process.do",method=RequestMethod.POST)//post
	public String addReviewProcess(HttpServletRequest request, HttpSession session, Model model) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		//File saveDir = new File("E:/dev/workspace_spring/upfileTest/"); // 저장경로얻기
		File saveDir = new File("E:/dev/workspace_spring/mpnp/src/main/webapp/upload/review/"); // 저장경로얻기
		
		int maxSize = 1024 * 1024 * 20 ; // byte * kb * mb * gb
		String responseURL = "/day1104/upload_err";
		
		String reviewMsg = "";
		String reviewUrl = "";
		try {
			// MultipartRequest,,,?
			MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(),
					maxSize,"UTF-8",new DefaultFileRenamePolicy());
			// 3. 파라미터를 받는다. ( VO에 넣어야한다면 VO를 객체화하여 setter로 넣어준다 )
			/////////////////////////////////////////////
			List<String> imgList = new ArrayList<String>();
			Enumeration name = mr.getFileNames();
			while(name.hasMoreElements()) {
				String testname = (String)name.nextElement();
				//System.out.println("file태그들의 이름 : "+testname);
				String fileName = mr.getFilesystemName(testname);
				if(fileName!=null) {
					imgList.add(fileName);
				}
				//System.out.println("file태그들의 이름으로 upload한 파일명 : "+fileName);
			}
			
			String odId = mr.getParameter("orderDetailId");
			String contents = mr.getParameter("reviewContents");
			//System.out.println("가공전 contents"+contents);
			//contents = contents.replace("\r\n","<br>");
			//System.out.println("가공후 contents"+contents);
			String starScore = mr.getParameter("starScore");
			//System.out.println("odId : "+odId);
			//System.out.println("contents : "+contents);
			//System.out.println("starScore : "+starScore);
			
			// 2022-11-28 막바지 세션 아이디 테스트
			String id = (String)session.getAttribute("id");
			//String id = "id005";
			
			ReviewVO rVO = new ReviewVO();
			rVO.setId(id);
			rVO.setContents(contents);
			rVO.setOrderDetailId(odId);
			//rVO.setOrderDetailId("od_0000001");
			rVO.setStarScore(Integer.parseInt(starScore));
			rVO.setReviewImg(imgList);
			
			
			ReviewService rService = new ReviewService();
			boolean addFlag = rService.addReview(rVO);
			
			if(addFlag) {
				reviewMsg = "후기작성을 완료하셨습니다.";
				reviewUrl = "writable_review_list.do";
			}else {
				reviewMsg = "후기작성 중 문제가 발생했습니다. 잠시 후 다시 시도해주세요.";
				reviewUrl = "writable_review_list.do";
			}
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		model.addAttribute("reviewMsg",reviewMsg);
		model.addAttribute("reviewUrl",reviewUrl);
		
		return "/user/review/write_review_alert";
	}
	
	
	// 페이지이동 alert 테스트
//	@RequestMapping(value="/add_review_processt_testttttttt.do",method=RequestMethod.GET)//post
//	public String addReviewProcessTesttttttttttt(Model model) {
//		boolean addFlag = true;
//		String reviewMsg = "";
//		String reviewUrl = "";
//		if(addFlag) {
//			reviewMsg = "후기작성을 완료하셨습니다.";
//			reviewUrl = "writable_review_list.do";
//		}else {
//			reviewMsg = "후기작성 중 문제가 발생했습니다. 잠시 후 다시 시도해주세요.";
//			reviewUrl = "writable_review_list.do";
//		}
//		System.out.println(reviewMsg);
//		System.out.println(reviewUrl);
//		model.addAttribute("reviewMsg",reviewMsg);
//		model.addAttribute("reviewUrl",reviewUrl);
//		return "/user/review/write_review_alert";
//		
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 파일업로드 테스트용 메서드 최정민 11-23
//	@RequestMapping(value="/add_review_process_test.do",method=RequestMethod.POST)//post
//	public String addReviewProcessTest(HttpServletRequest request, HttpSession session, Model model) throws UnsupportedEncodingException {
//		request.setCharacterEncoding("UTF-8");
//		
//		File saveDir = new File("E:/dev/workspace_spring/upfileTest/"); // 저장경로얻기
//		int maxSize = 1024 * 1024 * 20 ; // byte * kb * mb * gb
//		String responseURL = "/day1104/upload_err";
//		//////
//		
//		try {
//			// MultipartRequest,,,?
//			MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(),
//					maxSize,"UTF-8",new DefaultFileRenamePolicy());
//			
//			/////////////////////////////////////////////
//			Enumeration name = mr.getFileNames();
//			while(name.hasMoreElements()) {
//				String testname = (String)name.nextElement();
//				System.out.println("file태그들의 이름 : "+testname);
//				String fileName = mr.getFilesystemName(testname);
//				System.out.println("file태그들의 이름으로 upload한 파일명 : "+fileName);
//			}
//			//System.out.println(name);
//			//////////////////////////////////////
//			// 찍어볼이유가 없나?? 들어오는데?
//			
//		}catch(IOException e) {
//			e.printStackTrace();
//		}
//		
//		return "";
//		
//	}
	
	/////////////////////////////////////////////////////////
	
	// 작성한 리뷰
	@RequestMapping(value="/writen_review_list.do",method=RequestMethod.GET)
	public String writenReviewList(ReviewVO rVO, HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		//System.out.println("ReviewController : id - "+id);
		
		ReviewService reviewService = new ReviewService(); 
		// 2022-11-28 막바지 세션 아이디 테스트
		//List<ReviewDomain> writenList = reviewService.searchWritenReview("id005");
		List<ReviewDomain> writenList = reviewService.searchWritenReview(id);
		
		
		//System.out.println("작성한리뷰 갯수 확인 "+writenList.size());
		///////////////////////////////////
		// 날짜 형식바꾸기 테스트
		/////////////////////////////////
		//for(ReviewDomain rd : writenList) {
			//System.out.println("ReviewController : 작성한리뷰 - "+rd.getWriteDate());
		//}
		model.addAttribute("writenList",writenList);
		
		return "/user/review/writen_review";
	}
	
	// 작성리뷰 상세보기   
	@RequestMapping(value="/writen_review_detail_form.do",method=RequestMethod.GET)
	public String reviewDetailForm(String selReviewId, HttpSession session, Model model) {
		//System.out.println("왔냐"+selReviewId);
		
		// 지금받은걸로 상품사진, 상품명, 별점, 내용, 이미지들 받아와야함
		ReviewService reviewService = new ReviewService(); 
		
		ReviewDomain rDomain = reviewService.searchReviewDetail(selReviewId);
		// 그냥 삭제만가능하게할까 ;;;;;;;;;;;;;;;;;;;
		//System.out.println("ReviewController : 239 라인 : "+rDomain);
		model.addAttribute("reviewDetail",rDomain);
		return "/user/review/writen_review_edit_impossible";
	}
	
	// 작성리뷰 수정
//	@RequestMapping(value="/modify_review_process.do",method=RequestMethod.GET)
//	public String modifyReviewProcess(HttpServletRequest request, HttpSession session, Model model) {
//
//		// 안해
//		
//		return "";
//	}
	
	// 리뷰 삭제
	@ResponseBody
	@RequestMapping(value="/remove_review_process.do",method=RequestMethod.GET)
	public String removeReviewProcess(String selReviewId, HttpSession session, Model model) {
		//System.out.println("들어온 selReviewId : "+selReviewId);
		ReviewService reviewService = new ReviewService(); 
		return reviewService.removeReview(selReviewId);
	}
	
}
