package kr.co.mpnp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MpnpInterceptor implements HandlerInterceptor{

	@Override 
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception { 
	  
	  //로그인 세션이 없다면 login 페이지로 이동 
	  String id = (String)request.getSession().getAttribute("id"); 
	  String requestUrl = request.getRequestURL().toString(); 
	  
	  System.out.println("preHandle 탔음");
	  System.out.println("id : "+id);
//	  System.out.println("requestUrl : "+requestUrl);
	
	  
	  // 관리자 로그인 여부
//	  String adminId = (String)request.getSession().getAttribute("adminId"); 
////	  // 관리자쪽은 어떻게 식별해서 보낼까?
////	  // 이렇게되면 
	  String[] adminPages = {"admin","dashboard"};
	  //boolean adminFlag = false;
	  //boolean adminFinalFlag = false;
	  for(String adminPage : adminPages) {
		  System.out.println(requestUrl+" 얘랑 "+adminPage+" 얘랑 비교");
		  if(requestUrl.contains(adminPage)) {
			  //adminFlag = true;
			  return true;
		  }
	  }
	  
//	  if(adminFlag) { // 일단 관리자페이지 일경우
//		  if(adminId == null) {
//			  response.sendRedirect("http://localhost/mpnp/3rdAdmin/interceptor_test_admin.jsp");
//			  //return false;
//			  adminFinalFlag = false;
//		  }else if(requestUrl.contains("admin_login")){
//			  //return true;
//			  adminFinalFlag = true;
//		  }
//	  }
//	  if(adminFinalFlag) {
//		  return true;
//	  }
	  
	  
	  						// id가 없어도 되는애들
	  String[] notChkPages = {"/login","/index","mainList","search","/prd","find","join"};
	  boolean passFlag = false;
	  for(String passPages : notChkPages) { 
		  System.out.println(requestUrl+" 얘랑 "+passPages+" 얘랑 비교");
		  if(requestUrl.contains(passPages)) {
			  passFlag = true;
			  break;
		  }
	  }
	  // 사용자 로그아웃은 어떻게 처리하지??
	  
	  // 아이디가 없이들어왔지만 통과가능 페이지이다.
	  if(passFlag) {
		  
		  //System.out.println("로그인안해도 되는페이지임");
		  return true;
	  }
	  
	  // 통과가능페이지에서도 걸러졌고 아이디도 null이다.
	  if(id==null){
		  //response.sendRedirect("/WEB-INF/views/user/member/login.jsp");
		  response.sendRedirect("http://localhost/mpnp/3rdDesign/interceptor_test.jsp");
	      return false; 
	  }
	  
	  // 아이디가 있으며 login,,,find,,,join 이 아닌애들 
	  // 즉 정상 로그인한 사용자들
	  return true; 
	  
	  
	  
	  
	  // id가 null이 아니다 = 로그인이 되어있다. 그럼 바로 true로 짤라도되잖아
	  
	  


	  
	  

	  
	  
	  
	  //로그인 경로 제외 
//	  if(requestUrl.contains("/login")){ 
//		  System.out.println("if login 탐");
//	      return true;
//	  } 
//	  //리소스 경로 제외 
//	  if(requestUrl.contains("/review")){ 
//		  System.out.println("if review 탐");
//	      return true;
//	  } 
//	  if(requestUrl.contains("review")){ 
//		  System.out.println("if review 탐");
//		  return true;
//	  } 
	  
	  
	  
	  
	  
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		  //System.out.println("postHandle 탔음");

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		 // System.out.println("afterCompletion 탔음");

	} 

}
