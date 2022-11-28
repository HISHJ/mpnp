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
	  System.out.println("requestUrl : "+requestUrl);
	  // 관리자 로그인 여부
	  String adminId = (String)request.getSession().getAttribute("adminId"); 
	  String[] passPages = {"/login","/index","mainList","search","/prd","find","join","admin_login"};
	  
	  boolean passFlag = false;
	  for(String page : passPages) {
		  System.out.println(requestUrl+" 얘랑 "+page+" 얘랑 비교");
		  if(requestUrl.contains(page)) {
			  //adminFlag = true;
			  passFlag = true;
			  break;
		  }
	  }
	  if(passFlag) {
		  return true;
	  }
	  // 위의 요청들이 아닌애들
	  
	  if(requestUrl.contains("/admin") || requestUrl.contains("/dashboard")) {
		  
		  if(adminId==null) {
			  response.sendRedirect("http://localhost/mpnp/3rdAdmin/interceptor_test_admin.jsp");
			  return false;
		  }else {
			  return true;
		  }
	  }
	  
	  // 아이디 없어도 가지는애들이 아니면서 관리자페이지도 아닌경우
	  if(id==null) {
		  response.sendRedirect("http://localhost/mpnp/3rdDesign/interceptor_test.jsp");
	      return false; 
	  }else {
		  return true;
	  }
	  
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
