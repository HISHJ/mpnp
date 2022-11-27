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
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
        <style type="http://localhost/mpnp/3rdAdmin/text/css">
        
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
<script type="text/javascript">
$(function(){
	  var expression = /\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g;
	  var prdSum = $("#totlaPrdPrice").val()*1;
	  var price = $("#price").val()*1;

	  
	//할인액 구하기
	  //할인율 가져오기
	  var rate = ($("#discountRate").val()*1)/100;
		
	  //해당 상품에 적용되는 할인 액
	  var rate_price = prdSum * rate;
	
	 
var deli_fee = 0;

var actual_price;
if(prdSum < 30001){//sum이 (구매한 상품금액이 30000원 이하인 경우)
	  deli_fee = 2500;
} //end if

actual_price = prdSum - rate_price +deli_fee ; 


//숫자에 단위 넣기
const rate_ = rate_price.toString()
.replace(expression, ","); //할인금액
const total_pri = prdSum.toString() 
.replace(expression, ","); //상품 총가격
const cn1 = actual_price.toString()
.replace(expression, ","); // 총 결제금액
const ship_fee = deli_fee.toString()
.replace(expression, ","); // 배송비
const price_ = price.toString().replace(expression, ",");


$(".prdPri").html(total_pri +"원"); //상품 총 금액
if(rate_price > 0 && deli_fee >0){
$(".disPri").html("-" + rate_ + "원"); //할인금액
$(".deliFee").html("-" +ship_fee + "원");//배송비
}else{
	$(".disPri").html( rate_ + "원"); //할인금액
	$(".deliFee").html(ship_fee + "원");//배송비
}
$(".actualPri").html(cn1 +"원");//총 결제금액
//$(".pri").html(price_);


})//reay
</script>
<script>

$(function(){
	var expression = /\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g;
	var price;
	var rate;
	var act_price
	$(".act_price").each(function(i,element){
	 	price = $(element).find("#price").val()*1;
	 	rate = price.toString().replace(expression,",");
	 	$(this).html(rate + "원");
	})
})//ready

</script>

<div class="hidList">
<input type="hidden" id="discountRate" name="discountRate" value="${discountRate}">
<input type="hidden" id="totlaPrdPrice" name="totlaPrdPrice" value="${totlaPrdPrice}">
<input type="hidden" id="status" name="status" value="${aoDom.status}">

</div>
	
	
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
                                             <div class="col-6">${aoDom.orderId}</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>주문고객</b></div> 
                                            <div class="col-6">${aoDom.memberName}(${aoDom.phone})</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>배송지</b></div> 
                                            <div class="col-9 navbar-dark "><b>${aoDom2.shipName}</b></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2"><b></b></div> 
                                            <div class="col-9">[${aoDom2.zipcode}]${aoDom2.addr} ${aoDom2.addrDetail}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-2"><b></b></div> 
                                            <div class="col-9 figure-caption ">${aoDom2.receiver} | ${aoDom2.phone}</div>
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
                                            <c:forEach items="${list}" var="list">
                                            <tr>
                                                <td>${list.productName}</td>
                                                <td class="act_price">${list.price}원
                                                 <input type="hidden" id="price" name="price" value="${list.price}">
                                                </td>
                                                <td>${list.totalCnt}개</td>
                                            </tr>
                                               
                                            </c:forEach>
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
                                                    
                                                    <td class="text-end prdPri">${totlaPrdPrice}원</td>
                                                </tr>
                                                <tr>
                                                    <td class="table-light"><b>할인금액</b></td>
                                                    
                                                    <td class="text-end disPri">-100원</td>
                                                </tr>
                                                <tr>
                                                    <td class="table-light"><b>배송비</b></td>
                                                   
                                                    <td class="text-end deliFee">2,500원</td>
                                                </tr>
                                                <tr>
                                                    <td class="table-light"><b>총 결제금액</b></td>
                                                    
                                                    <td class="text-end actualPri"><b>4,300원</b></td>
                                                </tr>
                                                </table>
                                            </div>
                                        </div>
                                        <script type="text/javascript">
                                        $(function(){
                                        	 const oriStatus =$("select[name=status]").val();
                                        	 if(oriStatus == "구매확정"){
                                        		 $(".selectStatus").attr('disabled',true);
                                        		 $(".selectStatus").css('background-color',"#f7f7f7");
                                        		 $(".selectStatus").css('color',"grey");
                                        	 }
                                        	 if(oriStatus == "배송완료"){
                                        		 $("#id_0").attr('disabled',true);
                                        		 $("#id_0").css('background-color',"#f7f7f7");
                                        		 $("#id_0").css('color',"grey");
                                        	 }
                                        	 if(oriStatus == "주문완료"){
                                        		 $("#id_2").attr('disabled',true);
                                        		 $("#id_2").css('background-color',"#f7f7f7");
                                        		 $("#id_2").css('color',"grey");
                                        	 }
                                
                                        })//ready
                                             function addBtn(){
                                        	 const oriStatus =$("select[name=status]").val();
                                        	  if(oriStatus == "구매확정"){
                                           	    alert("주문 상태를 구매확정으로 변경하시겠습니까?")
                                        		  $("#statusFrm").submit();
                                           	     return;
                                        	  }//end if
                                        	  
                                        	  if(oriStatus == "배송완료"){
                                             	    alert("주문 상태를 배송완료로 변경하시겠습니까?")
                                          		  $("#statusFrm").submit();
                                             	    return;
                                          	  }//end if
                                          	  
                                        	 
	                                        }//end addBtn()
                                        </script>
                                       
                                    
										<div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>상태</b></div> 
                                            <div class="col-5">
                          
                                            <form action="orderModify_process.do" id="statusFrm" name="statusFrm">
                                            <input type="hidden" id="orderId" name="orderId" value="${aoDom.orderId}"/>
			                                <select id="status" name="status" class="dataTable-selector selectStatus" aria-label="Default select example" >
												
												<option id="id_0" value="주문완료" ${aoDom.status eq '주문완료'?"selected='selected'":"" }>주문완료</option>
												<option id="id_1" value="배송완료" ${aoDom.status eq '배송완료'?"selected='selected'":"" }>배송완료</option>
												<option id="id_2" value="구매확정" ${aoDom.status eq '구매확정'?"selected='selected'" :"" }>구매확정</option>
											</select>
											
											    </form>
											
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
