<%@page import="javax.script.ScriptContext"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="설빈" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>주문관리-주문상세내역</title>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>


	
	
	<div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                           
                            <div class="col-lg-9">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header navy bg-dark"><h3 class="text-start text-white font-weight-light my-4 " style="font-weight: bold;">주문 상세정보</h3></div>
                                    <div class="card-body">
                                       
                                 <!--  // <form method="post" id="r_detailBtn" name="r_detailBtn">" -->
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>주문코드</b></div>
                                             <div class="col-6"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>주문고객</b></div> 
                                            <div class="col-6">${aoDom.memberName}(${aoDom.phone})</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>배송지</b></div> 
                                            <div class="col-9 navbar-dark "><b>${aoDom.shipName}</b></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2"><b></b></div> 
                                            <div class="col-9">[${aoDom.zipcode}]${aoDom.addr} ${aoDom.addrDetail}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2"><b></b></div> 
                                            <div class="col-9 figure-caption ">${aoDom.receiver}</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>요청사항</b></div> 
                                            <div class="col-6">${aoDom.shipReq}</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2 my-2"><b>주문상품</b></div> 
                                        <div class=" col-9">
                                            <table class="table">
                                            <tr class="fw-bold table-light"> 
                                                <td>상품명</td>
                                                <td>가격</td>
                                                <td>개수</td>
                                            </tr>
                                            <tr>
                                                <td>[2+1]펫모닝 바베큐(랜덤배송)</td>
                                                <td>1,000원</td>
                                                <td>1개</td>
                                            </tr>
                                            <tr>
                                                <td>캣 홀리스틱 가든 스틱 샘플 500g</td>
                                                <td>3,000원</td>
                                                <td>2개</td>
                                            </tr>
                                            </table>
                                        </div>
                                   		</div>   
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2 my-2"><b>결제금액</b></div> 
                                            <div class=" col-5">
                                                <table class="table">
                                                <tr > 
                                                    <td class="table-light"><b>총 상품금액</b></td>
                                                    
                                                    <td class="text-end">1,900원</td>
                                                </tr>
                                                <tr>
                                                    <td class="table-light"><b>할인금액</b></td>
                                                    
                                                    <td class="text-end">-100원</td>
                                                </tr>
                                                <tr>
                                                    <td class="table-light"><b>배송비</b></td>
                                                   
                                                    <td class="text-end">2,500원</td>
                                                </tr>
                                                <tr>
                                                    <td class="table-light"><b>총 결제금액</b></td>
                                                    
                                                    <td class="text-end"><b>${aoDom.actualPrice}</b></td>
                                                </tr>
                                                </table>
                                            </div>
                                        </div>
										<div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>상태</b></div> 
                                            <div class="col-5">
			                                <select name="" class="dataTable-selector" aria-label="Default select example">
												<option selected="selected">${aoDom.orderStatus}</option>
												<option>주문취소</option>
												<option>주문완료</option>
												<option>배송완료</option>
												<option>구매확정</option>
											</select>
                                            </div>
                                        </div>
                                                                     
                                        <div class="mt-4 mb-0">
                                            <div class="col text-center">
                                                     <a class="btn btn-info btn-sm" onclick="addBtn()" >추가</a>
                                                     <a class="btn btn-light btn-sm" onclick="history.back()">닫기</a>
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
