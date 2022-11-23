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
		System.out.println("ReviewController : id - "+id);
		
		ReviewService reviewService = new ReviewService(); 
		
		List<ReviewDomain> writableList = reviewService.searchWritableReview("id001");
		for(ReviewDomain rd : writableList) {
			System.out.println("ReviewController :  - "+rd.getPurchaseDate());
		}
		model.addAttribute("writableList",writableList);
		////////////////////////////////////////////////////////////////////////
		
		//List<ReviewDomain> writenList = reviewService.searchWritenReview("id001");
		//model.addAttribute("writenList",writenList);
		
		
		/////////////////////////////////////////////////////////////////////////
		return "/user/review/writable_review";
	}
	
	// 리뷰작성 폼
	@RequestMapping(value="/add_review_form.do",method=RequestMethod.GET)
	public String addReviewForm(HttpSession session, String orderDetailId,String name, String thImg, Model model) {
		
		System.out.println(orderDetailId+" / "+name+" / "+thImg);
		
		model.addAttribute("odId",orderDetailId);
		model.addAttribute("prdName",name);
		model.addAttribute("prdImg",thImg);
		
		//return "/user/review/write_review";
		return "/user/review/write_review_testtesttesttest";
	}
	
	// 리뷰작성
	@RequestMapping(value="/add_review_process.do",method=RequestMethod.POST)//post
	public String addReviewProcess(HttpServletRequest request, HttpSession session, Model model) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		File saveDir = new File("E:/dev/workspace_spring/upfileTest/"); // 저장경로얻기
		int maxSize = 1024 * 1024 * 20 ; // byte * kb * mb * gb
		String responseURL = "/day1104/upload_err";
		
		
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
				System.out.println("file태그들의 이름 : "+testname);
				String fileName = mr.getFilesystemName(testname);
				if(fileName!=null) {
					imgList.add(fileName);
				}
				System.out.println("file태그들의 이름으로 upload한 파일명 : "+fileName);
			}
			
			String odId = mr.getParameter("orderDetailId");
			String contents = mr.getParameter("reviewContents");
			String starScore = mr.getParameter("starScore");
			
			System.out.println("odId : "+odId);
			System.out.println("contents : "+contents);
			System.out.println("starScore : "+starScore);
			
			String id = "id001";
			
			ReviewVO rVO = new ReviewVO();
			rVO.setId(id);
			rVO.setContents(contents);
			rVO.setOrderDetailId(odId);
			rVO.setStarScore(Integer.parseInt(starScore));
			rVO.setReviewImg(imgList);
			
			
			ReviewService rService = new ReviewService();
			rService.addReview(rVO);
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return "";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 파일업로드 테스트용 메서드 최정민 11-23
	@RequestMapping(value="/add_review_process_test.do",method=RequestMethod.POST)//post
	public String addReviewProcessTest(HttpServletRequest request, HttpSession session, Model model) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		File saveDir = new File("E:/dev/workspace_spring/upfileTest/"); // 저장경로얻기
		int maxSize = 1024 * 1024 * 20 ; // byte * kb * mb * gb
		String responseURL = "/day1104/upload_err";
		//////
		
		try {
			// MultipartRequest,,,?
			MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(),
					maxSize,"UTF-8",new DefaultFileRenamePolicy());
			// 3. 파라미터를 받는다. ( VO에 넣어야한다면 VO를 객체화하여 setter로 넣어준다 )
			/////////////////////////////////////////////
			Enumeration name = mr.getFileNames();
			while(name.hasMoreElements()) {
			String testname = (String)name.nextElement();
			System.out.println("file태그들의 이름 : "+testname);
			String fileName = mr.getFilesystemName(testname);
			System.out.println("file태그들의 이름으로 upload한 파일명 : "+fileName);
			}
			//System.out.println(name);
			//////////////////////////////////////
			// 찍어볼이유가 없나?? 들어오는데?
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return "";
		
	}
	
	/////////////////////////////////////////////////////////
	
	// 작성한 리뷰
	@RequestMapping(value="/writen_review_list.do",method=RequestMethod.GET)
	public String writenReviewList(ReviewVO rVO, HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		System.out.println("ReviewController : id - "+id);
		
		ReviewService reviewService = new ReviewService(); 
		
		List<ReviewDomain> writenList = reviewService.searchWritenReview("id001");
		for(ReviewDomain rd : writenList) {
			System.out.println("ReviewController : 작성한리뷰 - "+rd.getWriteDate());
		}
		model.addAttribute("writenList",writenList);
		
		return "/user/review/writen_review";
	}
	
	// 작성리뷰 상세보기   
	@RequestMapping(value="/writen_review_detail_form.do",method=RequestMethod.GET)
	public String reviewDetailForm(ReviewVO rVO, HttpSession session, Model model) {
		System.out.println("왔냐"+rVO.getReviewId());
		
		return "";
	}
	
	// 작성리뷰 수정
	@RequestMapping(value="/modify_review_process.do",method=RequestMethod.GET)
	public String modifyReviewProcess(HttpServletRequest request, HttpSession session, Model model) {

		
		return "";
	}
	
	// 리뷰 삭제
	@RequestMapping(value="/remove_review_process.do",method=RequestMethod.GET)
	public String removeReviewProcess(String reviewId, HttpSession session, Model model) {
		
		
		return "";
	}
	
}
