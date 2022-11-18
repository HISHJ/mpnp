<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>멍품냥품</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<meta name="theme-color" content="#ffffff">

<link href="common/favicon/favicon.ico" rel="shrtcut icon">
<link href="common/favicon/android-icon-192x192.png" rel="apple-touch-icon-precomposed">

<link rel="stylesheet" href="http://localhost/mungpoom/3rdDesign/common/css/headerFooter.css">
<link rel="stylesheet" type="text/css" href="http://localhost/mungpoom/3rdDesign/_css/main.style.pc.css">
<link rel="stylesheet" type="text/css" href="http://localhost/mungpoom/3rdDesign/css/order.css">
	<link rel="stylesheet" type="text/css" href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<script type="text/javascript" src="http://localhost/mungpoom/3rdDesign/_script/crypto.js"></script>
	<script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/webHookPolicy.js?v=22102810"></script>
	<script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810" userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D" webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.blockUI.js" charset="utf-8"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.inputmask.bundle.min.js" charset="utf-8"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.number.min.js" charset="utf-8"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.form.min.js" ></script>

<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/swiper.min.js"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/clipboard.min.js"></script>
<script type="text/javascript"  src="http://localhost/mungpoom/3rdDesign/_script/common.js?modifiedDate=20221013" ></script>
<script type="text/javascript"  src="http://localhost/mungpoom/3rdDesign/_script/popup.js" ></script>
<script type="text/javascript" 	src="http://localhost/mungpoom/3rdDesign/_script/ui.js"></script>
<script type="text/javascript" 	src="http://localhost/mungpoom/3rdDesign/_script/ui_shop.js"></script>

  <!--google icons-->
	<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<!--google fonts-->
	<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
	<script>
		$(function(){
		 $(".bt_dog").click(function(){
			$(".bt_cat").removeClass("active"); 
		 $(this).addClass("active")
		 $(".open_dog").css('display','block');
		 $(".open_cat").css('display','none');
		
		 })//click
		
		 $(".bt_cat").click(function(){
		 $(".bt_dog").removeClass("active"); 
		 $(this).addClass("active")
		 $(".open_cat").css('display','block');
		 $(".open_dog").css('display','none');
		
		 })//click
		
		})
		
		</script>
		
		<script type="text/javascript">
		function submitBtn(){
			
			var prdCnt = $("input[name='prdCnt']").length;
			//var prdName = 
			//	var arr = new Array(); 
			var prdCntArr = new Array();  
			var prdNameArr = new Array();  
			var prdIDArr = new Array();  
			var prdPriceArr = new Array();  
			for(let i=0;i<prdCnt ;i++){
				
				prdCntArr =$("input[name='prdCnt' ]").eq(i).attr("value");
				prdNameArr =$("input[name='prdName' ]").eq(i).attr("value");
				prdIDArr= $("input[name='prdId' ]").eq(i).attr("value");
				prdPriceArr = $("input[name='prdPrice' ]").eq(i).attr("value");
				alert(prNameArr[i]);
				
			}
			
			  alert(prdNameArr);
				$("#hidfrm").submit(); 
			  
				
			
		/* 	$("#prdCnt").val();
			alert($("#prdCnt").val());
			$("#prdName").val();
			$("#prdPrice").val();
			$("#hidfrm").submit(); */
		}
		</script>




<header class="header pc cu mode0" data-header="set0" id="header_pc">

<form id="hidfrm" name="hidfrm" action="orderPayment_form.do" >
 <input type="hidden" id="prdCnt" name="prdCnt" value="1"/>
 <input type="hidden" id="prdCnt" name="prdCnt" value="2"/>
 <input type="hidden" id="prdName" name="prdName" value="쉨잇 캣 북어 1.2kg"/>
 <input type="hidden" id="prdName" name="prdName" value="쉨잇 캣 연어 3.2kg"/>
 <input type="hidden" id="prdPrice" name="prdPrice" value="20000"/>
 <input type="hidden" id="prdPrice" name="prdPrice" value="5000"/>
 <input type="hidden" id="prdId" name="prdId" value="5000"/>
 <input type="hidden" id="prdId" name="prdId" value="5000"/>
</form>
	
					
					<div class="btntot">
						<div class="inr">
							<!-- <a href="javascript:void(0);" class="btn lg a btnOrder" data-content="" onclick="directOrderSelectFunc(true);" data-url="orderPayment_form.do"> -->
							<button  onClick="submitBtn();"  class="btn lg a btnOrder" data-content="" >
								<em class="p">총</em> <i class="i" id="goodsOrdCntText">2</i><em class="s">개</em>
								<em class="prc"><i class="i" id="totalChkAmtText">64,500</i><i class="s">원</i></em>
								<em class="p" id="orderBtnText">주문하기</em>
							</button>
						</div>
					</div>
					
		
</main>
<!--❤️main-->				
	





<!-- footer -->	
<footer class="footer" id="footer" style="width: 100%;">
	<div class="inr">
		<div class="link">
			<ul class="list">
				<li><a href="javascript:void(0);" onclick ="openTerms('2001' , 'Y'); return false;">서비스 이용약관</a></li>
				<li><a href="javascript:void(0);" onclick ="openTerms('2002' , 'Y'); return false;" class="fc_black">개인정보 처리방침</a></li>
				<li><a href="javascript:void(0);" onclick ="openPartnershipInquiry();return false;">입점/제휴 문의</a></li>
				<li class="hide_mo"><a href="http://www.gsretail.com/gsretail/ko/brand/about-pet" target="_blank">회사소개</a></li>
					<li class="hide_mo"><a href="https://gsretail.recruiter.co.kr/appsite/company/index" target="_blank">채용정보</a></li>
				<!-- 무조건 모바일웹으로 들어간 1경우에만 나타나게 만들기 -->
				</div>
		 <div class="info">
			<ul class="list">
				<li>주식회사 멍품냥품</li>
				<li>대표자명 : 최정민 유원준 정선홍 하지윤 유설빈</li>
				<li>사업자 등록번호 : 022-10-0025 
				</li>
				<li class="dn">통신판매업신고번호 : 제 2020-서울강남-03142호</li>
				<li>TEL : 1644-1234</li>
			</ul>
				<ul class="list">
					<li>
						<p class="adr">서울특별시 강남구 테헤란로 한독빌딩 8층</p>
					</li>
				
				</ul>
			</div>
	<div class="copy">© copyright (c) www.aboutpet.co.kr all rights reserved.</div>
	<div class="info escrow">
			
		</div>
	</div>
</footer>
<!-- // footer -->

<div id ="layers">
</div><!-- e : footer 영역 -->
	</div>
</body>
</html>