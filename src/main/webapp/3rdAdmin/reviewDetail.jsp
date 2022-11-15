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
        <title>후기관리-후기상세내역</title>
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
                                    <div class="card-header navy bg-dark"><h3 class="text-start text-white font-weight-light my-4 " style="font-weight: bold;">후기 상세정보</h3></div>
                                    <div class="card-body">
                                       
                                 <!--  // <form method="post" id="r_detailBtn" name="r_detailBtn">" -->
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>후기코드</b></div>
                                             <div class="col-6"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품코드</b></div> 
                                            <div class="col-6"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>닉네임</b></div> 
                                            <div class="col-6">닉네임(아이디)</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>별점</b></div> 
                                            <div class="col-6"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>작성일자</b></div> 
                                            <div class="col-6"></div>
                                        </div>
                                        <!-- 사진 추가해보고 height 정의해주기  -->
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>이미지</b></div>
                                             <div class="col-3">사진1</div>
                                             <div class="col-3">사진2</div>
                                             <div class="col-3">사진3</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>내용</b></div> 
                                            <div class="col-8">
                                            <p class="dataTable-input" readonly="readonly">
                                            @@@@@@@@@@@~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                            </p>
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>신고내역</b></div>
                                             <div class="col-2">
                                             <input type="button" name="" id="" value="상세보기">
                                             </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>후기삭제</b></div> 
                                            <div class="col-2">
                                            <input type="button" name="" id="btnDelete" value="후기삭제">
                                            </div>
                                        </div>
                                        
                                        <div class="mt-4 mb-0">
                                            <div class="col text-center">
                                                <!-- <button class="btn btn-secondary btn-sm" id="change_btn">변경</button> -->
                                                <button class="btn btn-light btn-sm" id="can_btn" onclick="javascript:history.back();">닫기</button>
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
