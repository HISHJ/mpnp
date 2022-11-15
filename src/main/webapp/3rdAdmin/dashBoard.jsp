 <%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%> 

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자-대시보드</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        


    </head>
    <body class="sb-nav-fixed">
   
   
   <jsp:include page="admin_common_header.jsp">
   <jsp:param name="adminId" value=""/>
   </jsp:include> 
        
        
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">대시보드</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                       
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4" style="height: 516px">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        등급별 회원현황
                                    </div>
                                    <div class="card-body" style=" height:150px;">
                                        <table class="table table-hover ">
                                        <tr class="fw-bold"> 
	                                        <td>레벨</td>
	                                        <td>등급</td>
	                                        <td>기준</td>
	                                        <td>회원수</td>
                                        </tr>
                                        <tr>
	                                        <td>1</td>
	                                        <td>new</td>
	                                        <td>0~500,000</td>
	                                        <td>100명</td>
                                        </tr>
                                        <tr>
	                                        <td>2</td>
	                                        <td>new</td>
	                                        <td>0~500,000</td>
	                                        <td>100명</td>
                                        </tr>
                                        <tr>
	                                        <td>3</td>
	                                        <td>new</td>
	                                        <td>0~500,000</td>
	                                        <td>100명</td>
                                        </tr>
                                        <tr>
	                                        <td>4</td>
	                                        <td>new</td>
	                                        <td>0~500,000</td>
	                                        <td>100명</td>
                                        </tr>
                                        </table>
                                    </div>   
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4" >
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        카테고리별 판매추이
                                    </div>
                                    <div class="card-body">
                                    	<!-- <input type="button" class="btn btn-info" value="고양이"> -->
                                        <canvas id="myBarChart" width="100%" height="50"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                       일별 매출
                                    </div>
                                    <div class="card-body">
                                        
                                        <canvas id="myAreaChart_day" width="100%" height="50px"></canvas>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                       월별 매출
                                    </div>
                                    <div class="card-body">
                                        
                                        <canvas id="myAreaChart_month" width="100%" height="50px"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>




                    </div>
                </main>
                <!--  -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="js/chart-area-demo-day.js"></script>
        <script src="js/chart-area-demo-month.js"></script>
        <script src="js/chart-bar-demo.js"></script>
        <script src="js/chart-pie-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
