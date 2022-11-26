<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
 
<%-- <%
 //로그인되어있지 않은 경우 로그인페이지로 이동
if( session.getAttribute("adminId") == null){
   response.sendRedirect("admingLogin.jsp");
}
%>  --%>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회원관리-메인</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <!-- <link href="css/styles.css" rel="stylesheet" /> -->
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        
      
         <!--제이쿼리-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#searchBtn").click(function(){
				$("#searchMemberFrm").submit();
			})
	    	
   		});//ready
   		
   			//아마 필요없는 애
	    	function HiddenVal(Id){
	    		$("#memberId").val(Id);
	    		$("#userFrm").submit();
	    	}
	    	
			
	
	</script>
    </head>
    <body class="sb-nav-fixed">
    
     <!-- 여기서부터 <nav>-->
<%-- <jsp:include page="admin_common_header.jsp"/> --%> 
<c:import url="http://localhost/mpnp/3rdAdmin/admin_common_header.jsp"/>
<!-- -여기까지 <div id="layoutSidenav_content"> 전  -->
 
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">회원관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">user management board</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                회원 조회
                            </div>
                            <div class="card-body">
                            <form name="searchMemberFrm" id="searchMemberFrm" action="admin_m_list.do">
                           	<div class="dataTable-top"></div>
                                <label>닉네임　　</label>
                           	  	<input type="text"  name="nick" class="dataTable-input" style="width: auto; display: inline-block;"> 
                           	<div class="dataTable-top"></div>
                                <label>아이디　　</label>
                           	  	<input type="text"  name="id" class="dataTable-input" style="width: auto; display: inline-block;"> 
                           
                                <div class="dataTable-top"></div>
                                <label>회원등급　</label>
                                <select name="gradeid" class="dataTable-selector" aria-label="Default select example">
									<!-- <option value="">등급선택</option> 와 이거 처리를 못하겠어-->
								<c:forEach items="${gradeList }" var="grade">
									<option>${grade.gradeid }</option>
								</c:forEach>
								</select>
                                
                            
                                <div class="dataTable-top"></div>
                                <label>회원상태　</label>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" value="정상" >
                                        <label class="form-check-label" for="inlineRadio1">정상</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" value="탈퇴">
                                        <label class="form-check-label" for="inlineRadio2">탈퇴</label>
                                    </div>
                                    <input type="button" id="searchBtn" name="searchBtn" value="검색">
                             </form>   
                                <a href="admin_m_list.do"><button id="addBtn" type="button" class="btn btn-outline-info float-end mx-md-4" >전체보기</button></a>
                                </div>
                            </div>
                        	<form id="userFrm" name="userFrm" action="" method="post">
                               <input type="hidden" name="memberId" id="memberId">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>아이디</th>
                                            <th>닉네임</th>
                                            <th>회원등급</th>
                                            <th>상태</th>
                                            <th>가입일</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                            <th>아이디</th>
                                            <th>닉네임</th>
                                            <th>회원등급</th>
                                            <th>상태</th>
                                            <th>가입일</th>
                                            <th>관리</th>
                                        </tr>
                                        </tfoot>
                                     <tbody>
                                     <c:forEach items="${memberList }" var="member">
                                        <tr>
                                            <td>${member.id }</td>
                                            <td>${member.nick }</td>
                                            <td>${member.gradeid }</td>
                                            <td>${member.status }</td>
                                            <td>${member.inputdate }</td>
                                            <td><a href="admin_m_detail_form.do?id=${member.id}"><input type="button" value="상세보기"></a></td>
                                        </tr>
                                    </c:forEach> 
                                    </tbody>
                                </table>
                              </form>
                            </div>
                        </div>
                    </div>
                </main>
                <c:import url="http://localhost/mpnp/3rdAdmin/admin_common_footer.jsp"/>
                <%-- <jsp:include page="admin_common_footer.jsp"/> --%>
                
             