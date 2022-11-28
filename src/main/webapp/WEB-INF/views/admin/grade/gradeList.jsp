<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="설빈" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>등급관리-메인</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--JQuery Google CDN -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	

    </head>
<body class="sb-nav-fixed">

<!-- <script type="text/javascript">
function addDBtn(gradeId){
	$("#gradeId").val(gradeId);
	var gId = $("#gradeId").val();
	//alert(gId); 
   $("gradeFrm").submit();
}// 

</script>
 -->
 <!-- 여기서부터 <nav>-->
 <c:import url="http://localhost/mpnp/3rdAdmin/admin_common_header.jsp"/>
   
<!-- -여기까지 <div id="layoutSidenav_content"> 전  -->


            <div id="layoutSidenav_content">
                <main>
             
                
                <form id="gradeFrm" name="gradeFrm" method="post" action="admin_g_remove_process.do">
                   <input type="hidden" id="gradeId"  name="gradeId"/>
                    
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">등급관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">grade management board</li>
                        </ol>
                        
                        
		 				  
                                <table id="datatablesSimple">
                               
                                    <thead>
                                        <tr>
                                            <th>등급레벨</th>
                                            <th>등급명</th>
                                            <th>할인률</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tfoot>                                         
                                        <tr>
                                            <th>등급레벨</th>
                                         	<th>등급명</th>
                                            <th>할인률</th>
                                            <th>관리</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
									
									<c:forEach items="${gradeList}" var="grade">
                              			<tr>
                                            <td id="level" name="level">
                                            
                                            ${grade.gradeLevel}
                                            </td>
                                            <td>${grade. gradeName}</td>
                                            <td>${grade.discountRate}(%)</td>
                                            <td><%-- <button class="btn btn-info btn-sm" onclick="addBtn('${grade.gradeId}')" >수정</button> --%>
                                           <a class="btn btn-info btn-sm" href="http://localhost/mpnp/admin_g_detail_form.do?gradeId=${grade.gradeId}" >수정</a>
                                           <!--  <a class="btn btn-light btn-sm" onclick="addDBtn()" >삭제</a> -->                                          
                                           <%--  <button class="btn btn-light btn-sm" onclick="addDBtn('${grade.gradeId}')" >삭제</button></td>        --%>                                   
                                        </tr>
                                     </c:forEach>
                                    </tbody>                                    
                                </table>
                               <div><a href="admin_g_add_form.do"><button type="button" id="addBtn" class="btn btn-info">등급추가</button></a></div>
                                 
                            </div>
                            </form>
                            </main>
                        </div>
                    </div>
<!-- 여기서부터<footer -->

          <c:import url="http://localhost/mpnp/3rdAdmin/admin_common_footer.jsp"/>
   
<!-- 요기까지</html> -->
