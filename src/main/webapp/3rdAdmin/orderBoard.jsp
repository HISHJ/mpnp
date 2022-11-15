<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>주문관리-메인</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--JQuery Google CDN -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	

    </head>
<body class="sb-nav-fixed">

<script type="text/javascript">
</script>


 <!-- 여기서부터 <nav>-->
<jsp:include page="admin_common_header.jsp"/>      
<!-- -여기까지 <div id="layoutSidenav_content"> 전  -->


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">주문관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">order management board</li>
                        </ol>
                        
                        
                       
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                주문조회
                            </div>
                            <div class="card-body">
                               
                               <!-- 다 검색으로 조회가능 하지만 우선 만듬 -->
                            <form name="" id=>
                           	 <div class="dataTable-top"></div>
                                <label>아이디　</label>
                           	  	<input type="text"  name="name" class="dataTable-input" style="width: auto; display: inline-block;"> 
                                <input type="button" id="nameSearchBtn" name="nameSearchBtn" value="검색">
                             </form>
                             
                            <form name="" id=>
                           	 <div class="dataTable-top"></div>
                                <label>상태　　</label>
                                <select name="genreId" class="dataTable-selector" aria-label="Default select example">
								<option>입금대기</option>
								<option>결제완료</option>
								<option>배송완료</option>
								<option>구매확정</option>
								</select>
                                <input type="button" id="nameSearchBtn" name="nameSearchBtn" value="검색">
                             </form>
                                
                                </div>
                            </div>
                        
                               
                           <form id="resultFrm" name="resultFrm" action="rsrvtDetail.jsp" method="post"> 
                   		  <input type="hidden" name="rsrvtId" id="rsrvtId" >
		 				  <input type="hidden" name="status" id="status" >
		 				  <input type="hidden" name="name" id="name" >
		 				  
                                <table id="datatablesSimple">
                               
                                    <thead>
                                        <tr>
                                            <th>주문코드</th>
                                            <th>아이디</th>
                                            <th>주문상품</th>
                                            <th>상태</th>
                                            <th>금액</th>
                                            <th>주문일</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tfoot>                                         
                                        <tr>
                                            <th>주문코드</th>
                                            <th>아이디</th>
                                            <th>주문상품</th>
                                            <th>상태</th>
                                            <th>금액</th>
                                            <th>주문일</th>
                                            <th>관리</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>

                              			<tr>
                                            <td>O_1234556</td>
                                            <td>rornfl1</td>
                                            <td>[2+1]펫모닝 바베큐(랜덤배송)</td>
                                            <td>입금대기</td>
                                            <td>1000원</td>
                                            <td>2022-10-29</td>                                          
                                            <td><input type="button" value="상세보기" onClick="getHiddenVal('','','')"></td> 
                                        </tr>
                                       
                                    </tbody>                                    
                                </table>
                                 
                                  </form>
                            </div>
                            </main>
                        </div>
                    </div>
<!-- 여기서부터<footer -->
              <jsp:include page="admin_common_footer.jsp"/>
<!-- 요기까지</html> -->
