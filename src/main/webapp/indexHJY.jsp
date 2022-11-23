<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=" "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
//web.xml에서 제대로 안해준듯 
// No mapping found for HTTP request with URI [/mpnp/indexHJY.html] in DispatcherServlet with name 'appServlet'
</script> 
<body>
<a href="admin_login_form.do">관리자 로그인폼</a><br>
<a href="admin_modify_pass_form.do">관리자 수정폼</a><br>

<b>로그인 값 받아지나 테스트중</b><br>
<c:out value="${sessionScope.id }"/> session - 세션으로 값 받기 성공<br> 
<c:if test="${empty id }"></c:if>세션에 아이디 없음<br>
<c:out value="${requestScope.id }"/> request - 역시 안되네<br>
${member.id}흥 되나보자 - 안나오네<br>

<a href="admin_logout_process.do">관리자 로그아웃</a><br>
<b>아이디 세션 끊겼는지 확인중</b><br>
<c:out value="${sessionScope.id }"/> session - <br> 
<c:if test="${empty id }">세션에 아이디 없음</c:if><br>


<a href="admin_m_list.do">관리자 회원관리메인</a><br>
<a href="login_form.do">사용자 로그인</a><br>
<a href="logout_process.do">사용자 로그아웃</a><br>
<br>
<a href="mypage_form.do">사용자 마이페이지 메인</a><br>
<a href="mypage_pass_confirm.do">사용자 마이페이지 비번확인</a><br>




</body>
</html>