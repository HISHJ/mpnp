
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        
      
         <!--제이쿼리-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
		   	$("#idSearchBtn").click(function() {
	    		$("#idFrm").submit();
			});//아이디 검색
			
	    	$("#ChkSearchBtn").click(function() {
	    		$("#chkFrm").submit();
			});// 수신동의검색
			
	    	$("#statusSearchBtn").click(function() {
	    		$("#statusFrm").submit();
	    	});//상태 검색
	    	
   		});//ready
	    	function HiddenVal(Id){
	    		$("#memberId").val(Id);
	    		$("#userFrm").submit();
	    	}
	    	
			
	
	</script>
    </head>
    <body class="sb-nav-fixed">
    
     <!-- 여기서부터 <nav>-->
<%-- <jsp:include page="admin_common_header.jsp"/>    --%>   
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
                           <form name="idFrm" id="idFrm">
                           	<div class="dataTable-top"></div>
                                <label>닉네임　　</label>
                           	  	<input type="text"  name="name" class="dataTable-input" style="width: auto; display: inline-block;"> 
                                <input type="button" id="idSearchBtn" name="name" value="검색">
                             </form>
                           
                           
                           
                           <form name="chkFrm" id="chkFrm">
                                <div class="dataTable-top"></div>
                                <label>회원등급　</label>
                                <select name="" class="dataTable-selector" aria-label="Default select example">
								<option>NEW</option>
								<option>SILVER</option>
								<option>GOLD</option>
								<option>VIP</option>
								</select>
                                <input type="button" id="ChkSearchBtn" value="검색">
                                
                            </form>
                            
							<form name="statusFrm" id="statusFrm">
                                <div class="dataTable-top"></div>
                                <label>회원상태　</label>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" >
                                        <label class="form-check-label" for="inlineRadio1">정상</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="status" id="inlineRadio2" value="Y">
                                        <label class="form-check-label" for="inlineRadio2">탈퇴</label>
                                    </div>
                                    <input type="button" id="statusSearchBtn" name="showSatusSearchBtn" value="검색">
                                 </form>   
                                <a href="http://localhost/group2_prj/admin/useBoard.jsp"><button id="addBtn" type="button" class="btn btn-outline-info float-end mx-md-4" >전체보기</button></a>
                                </div>
                            </div>
                        	<form id="userFrm" name="userFrm" action="http://localhost/group2_prj/admin/useDetail.jsp" method="post">
                               <input type="hidden" name="memberId" id="memberId">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
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
                                            <th>번호</th>
                                            <th>아이디</th>
                                            <th>닉네임</th>
                                            <th>회원등급</th>
                                            <th>상태</th>
                                            <th>가입일</th>
                                            <th>관리</th>
                                        </tr>
                                        </tfoot>
                                     <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td><input type="button" value="상세보기" onclick="HiddenVal('')"></td>
                                        </tr>
                                    </tbody>
                                </table>
                              </form>
                            </div>
                        </div>
                    </div>
                </main>
                <!--  -->
                <%-- <jsp:include page="admin_common_footer.jsp"/> --%>
                
             