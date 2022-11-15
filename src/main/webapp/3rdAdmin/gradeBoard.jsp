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
        <title>등급관리-메인</title>
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

                              			<tr>
                                            <td>1</td>
                                            <td>NEW</td>
                                            <td>0(%)</td>
                                            <td><a class="btn btn-info btn-sm" onclick="addBtn()" >수정</a> <a class="btn btn-light btn-sm" onclick="addBtn()" >삭제</a></td>                                          
                                        </tr>
                                       
                                    </tbody>                                    
                                </table>
                               <div><a href="http://localhost/group2_prj/admin/showAdd.jsp"><button type="button" id="addBtn" class="btn btn-info">등급추가</button></a></div>
                                 
                            </div>
                            </main>
                        </div>
                    </div>
<!-- 여기서부터<footer -->
              <jsp:include page="admin_common_footer.jsp"/>
<!-- 요기까지</html> -->
