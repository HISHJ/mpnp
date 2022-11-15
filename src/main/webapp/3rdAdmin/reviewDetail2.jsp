<%@page import="javax.script.ScriptContext"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>후기관리-신고내역 상세보기</title>
        <link href="css/styles.css" rel="stylesheet" />
        <style type="text/css">
        
        body{background-color : #fff;}
        
        
		
		select:disabled {
  		color: #333;
		}
         
        </style>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<!--JQuery Google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>


	
	
	<div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                           
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header navy bg-dark"><h3 class="text-start text-white font-weight-light my-4 " style="font-weight: bold;">신고내역 상세보기</h3></div>
                                    <div class="card-body">
                                       
                                       <table class="table table-hover ">
	                                        <tr class="fw-bold">
		                                        <td>번호</td> <!-- (단순 총 신고수 카운트용)  -->
		                                        <td>신고자</td><!-- 아이디 넣어주세요 -->
		                                        <td>신고사유</td>
		                                        <td>신고일자</td>
	                                        </tr>
	                                        <tr>
		                                        <td>1</td>
		                                        <td>ha1234</td>
		                                        <td>그런게있어요</td>
		                                        <td>2022-10-29</td>
	                                        </tr>
                                        </table>
                                       
                                        <div class="mt-4 mb-0">
                                            <div class="col text-center">
                                                <!-- <button class="btn btn-secondary btn-sm" id="change_btn">변경</button> -->
                                                <a class="btn btn-light btn-sm" onclick="addBtn()" >닫기</a>
                                            </div>
                                        </div>
                                    </div>
                                    

                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
          
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                           
                           
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
