<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="설빈" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>어바웃펫 : 새로운 반려 라이프의 시작</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<meta name="theme-color" content="#ffffff">

<link href="common/favicon/favicon.ico" rel="shrtcut icon">
<link href="common/favicon/android-icon-192x192.png" rel="apple-touch-icon-precomposed">


<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/common/css/headerFooter.css">
<link rel="stylesheet" type="text/css" href="http://localhost/mpnp/3rdDesign/_css/main.style.pc.css">


<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/_css/pc/log.css">
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/_css/pc/layout.css">
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/_css/pc/shop.css">
<link rel="stylesheet" type="text/css" href="http://localhost/mpnp/3rdDesign/css/order.css">
<link rel="stylesheet" type="text/css" href="http://localhost/mpnp/3rdDesign/css/my.css">

	<link rel="stylesheet" type="text/css" href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810" userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D" webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>
<script type="text/javascript" 	src="http://localhost/mpnp/3rdDesign/_script/ui.js"></script>
<script type="text/javascript" 	src="http://localhost/mpnp/3rdDesign/_script/ui_shop.js"></script>

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


</head>

<body class="body">

<!-- 기본 컨텐츠 -->
	<div class="wrap" id="wrap">
		<input type="hidden" id="viewJsonData" value="%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D">
		
	
<header class="header pc cu mode0" data-header="set0" id="header_pc">
	<input type="password" style="display:none;"/><!-- 크롬 패스워드 자동완성 방지 -->
	<div class="hdr">
		<div class="inr">
			<div class="tdt">
				<div class="usr">
						<a class="rank_icon" href="javascript:rankBox();"><em class="lv welcome">웰컴</em></a>
							<a href="javascript:;" class="name"><b class="t">seb0103@daum.net</b><i class="i">님</i></a>
						<div class="sbm">
							<ul class="sm">
							<li><a href="/mypage/info/indexPswdUpdate" data-content="1319879" data-url="/mypage/info/indexPswdUpdate" class="bt">비밀번호 설정</a></li>
									<li><a href="/mypage/info/indexManageDetail" data-content="1319879" data-url="/mypage/info/indexManageDetail" class="bt">회원정보 수정</a></li>
									<li><a href="/logout" data-content="1319879" data-url="/logout" class="bt">로그아웃</a></li>
								</ul>
						</div>
					</div>
				
			</div>
			<div class="hdt">
				<!-- mobile -->
				<button class="mo-header-btnType02">취소</button><!-- on 클래스 추가 시 활성화 -->
				<!-- // mobile -->
				<button class="btnGnb" type="button">메뉴</button>
<!-- -->
				<h1 class="logo shop">
					<a class="bt" href="javascript:goShopDeleteCookie();">AboutPet</a>
				</h1>
				<nav class="menushop">
							<button type="button" class="bt st" id="headerTxt"></button>
							<div class="list">
								<ul class="menu">
									<li class=""><a class="bt" href="javascript:void(0);" onclick="sendDispClsfNo(300000173)"><b class="t" id="b_tag_300000174">강아지</b></a></li>
									<li class="active"><a class="bt" href="javascript:void(0);" onclick="sendDispClsfNo(300000174)"><b class="t" id="b_tag_300000174">고양이</b></a></li>
								
								</ul>
							</div>
						</nav>
<!-- -->
				<!-- mobile -->
				<button class="mo-header-backNtn" onclick="storageHist.goBack();">뒤로</button>
					<div class="mo-heade-tit"  >
					<span class="tit"></span>
								</div>
				<div class="mo-header-rightBtn">
						<button class="mo-header-btnType01">
							<span class="mo-header-icon"></span>
							</button>
					</div>
				<button class="mo-header-close"></button>
				<!-- // mobile -->
				<nav class="tmenu">
					<ul class="list">
			
						<li id="liTag_10" class="active"><a href="/shop/home/" class="bt">스토어</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_00" class=""><a href="/mypage/indexMyPage/" class="bt">MY</a></li>
					</ul>
				</nav>
			</div>
			<div class="cdt" >
						<div class="schs">
								<div class="form ">
									<div class="input del kwd"><input id="srchWord" name="srchWord"  type="search" maxlength="50" value="" autocomplete="off" placeholder="검색어를 입력해주세요." ></div>
									<button type="button" class="btnSch" data-content="" data-url="/commonSearch">검색</button>
									
									<!-- 자동완성 드롭박스 -->
									<div class="key-word-list" id="key-word-list" style="display:none;"><ul></ul></div>
									<!-- 자동완성 드롭박스 -->
								</div>
							</div>
						<div class="menu">
							<button class="bt cart" type="button" onclick="location.href='/order/indexCartList/'" >
									</button>
							<button id="srchClsBtn" class="bt close" type="button" style="display: none;" onclick="searchCommon.srchClsBtn();">닫기</button>
							<div class="alims" id ="alertDiv">
							</div>
						</div>
						</div>
</div>
	</div>
</header>


<!--❤️main-->
<main class="container lnb page my" id="container" style="margin-top:100px;">
	<div class="inr" style="min-height: 429px;">
		<!-- 본문 -->
		<div class="contents" id="contents" style="min-height: 550.8px;">
					
			<!-- // PC 타이틀 모바일에서 제거  -->
			<div class="pc-tit">
				<h2>주문/배송</h2>
			</div>
			<!-- 주문 배송 -->
			<div class="delivery-oder-area" id="deliveryList">
				<div class="inr-box piner">
					<div class="pc-re-po01">
						<div class="oder-step ptb_memOrderbox">

							<nav class="menushop re-po01">
								<button type="button" class="bt st">최근 3개월</button>
								<div class="list">
									<ul class="menu">
										<li class="active"><a href="javascript:void(0);" id="period_type_3" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=3&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=" class="bt" onclick="orderDeliveryList.setPeriod(3);return false;">최근 3개월</a></li>
										<li><a href="javascript:void(0);" id="period_type_6" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=6&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=" class="bt" onclick="orderDeliveryList.setPeriod(6);return false;">최근 6개월</a></li>
										<li><a href="javascript:void(0);" id="period_type_9" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=9&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=" class="bt" onclick="orderDeliveryList.setPeriod(9);return false;">최근 9개월</a></li>
										<li><a href="javascript:void(0);" id="period_type_12" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=12&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=" class="bt" onclick="orderDeliveryList.setPeriod(12);return false;">최근 12개월</a></li>
										<li><a href="javascript:void(0);" id="period_type_0" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=0&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=" class="bt" onclick="orderDeliveryList.setPeriod(0);return false;">직접 입력</a></li>
									</ul>
								</div>
							</nav>

							<!-- open 클래스 추가 시 open -->
							<div class="dummy-gray-line " style="margin-bottom:10px;">
								<div class="dummy-gray-line open">
									<div class="layout-date-picker noIcon">
										<span class="uiDate"><input type="text" value="2022.07.31" class="datepicker hasDatepicker" title="날짜" id="delivery_start_dt" readonly=""><button type="button" class="ui-datepicker-trigger">달력</button></span>
										<span class="gap-area">-</span>
										<span class="uiDate"><input type="text" value="2022.10.30" class="datepicker hasDatepicker" title="날짜" id="delivery_end_dt" readonly=""><button type="button" class="ui-datepicker-trigger">달력</button></span>
										<a href="javascript:void(0);" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=3&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=" onclick="orderDeliveryList.search();return false;" class="btn lg">조회</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<form id="delivery_list_form">

</form>
<div class="inr-box piner">
<div class="oder-step">
<div class="step-list">
	<ul>

		<li id="stepTwo">
			<a href="javascript:void(0);" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=3&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=120" onclick="orderDeliveryList.searchStauts('1230','stepTwo');return false;"><p class="num num1">1</p></a>
			<p class="txt">주문완료</p>
		</li>
	
		<li id="stepFive">
			<a href="javascript:void(0);" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=3&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=160" onclick="orderDeliveryList.searchStauts('160','stepFive');return false;"><p class="num num2">0</p></a>
			<p class="txt">배송완료</p>
		</li>
		<li id="stepSix">
			<a href="javascript:void(0);" data-content="1319879" data-url="/mypage/order/indexDeliveryList?page=1&amp;rows=20&amp;period=3&amp;ordAcptDtmStart=2022-07-31&amp;ordAcptDtmEnd=2022-10-30&amp;arrOrdDtlStatCd=170" onclick="orderDeliveryList.searchStauts('170','stepSix');return false;"><p class="num num3">0</p></a>
			<p class="txt">구매확정</p>
		</li>
	</ul>
</div>
</div>
</div>
<script type="text/javascript">
$(function(){
	//주문상태 카운트
	var staArr = ['주문완료','배송완료','구매확정'];
	var dbStaArr = new Array();
	$(".hidden_div").each(function(i,element){
		var status = $(element).find("#status").val(); //상태 
		dbStaArr.push(status);
	});
		//alert(dbStaArr);
		var cnt1 = 0;
		var cnt2 = 0;
		var cnt3 = 0;
		for(var i=0;i<dbStaArr.length;i++){
			if(dbStaArr[i] ==staArr[0]){
				cnt1 ++;
			}else if(dbStaArr[i] ==staArr[1]){
				cnt2 ++;
			}else{
				cnt3++;
			}//end if
		}//end for
		//alert(cnt3);
		
		$(".num1").html(cnt1);
		$(".num2").html(cnt2);
		$(".num3").html(cnt3);
		
	
         
		
		
})//ready
</script>
<script>
$(function(){
	var expression = /\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g;
	
	var prdPrice = $("#prd").val();
	
	$("#prdPrice").val(prdPrice);
	var prdResult=$("#prdPrice").val();
	//숫자에 단위 넣기
	  const rate_ = prdPrice.toString()
     .replace(expression, ","); //상품금액
     //$(".prdPri").html(rate_);
	
})
</script>
<script type="text/javascript">
function goOrderDetail(orID){
	$("#orderId").val(orID);
	var o = $("#orderId").val();
	$("#hidFrm").submit();
	
}
function deleteDetail(ordId,status){
	var data ={
			orDetailId :ordId
		
	}
	 console.log(data) 
	
 	
	if(confirm("주문취소 하시겠습니까?")){
		 if(status == '구매확정'){
			alert("구매확정 후에는 주문을 취소할 수 없습니다."); 
		 }else{
		
			$.ajax({
				url:"order_can_process.do",
				data:"orDetailId=" +ordId,
				type:"get",
				dataType:"json",
				error:function(xhr){
					alert("a:"+ xhr.status + "b:"+ xhr.statusText + "c:" + xhr.state());
					console.log(data)
				},
				success:function(jsonObj){
					if(jsonObj.removeFlag){
						alert("주문취소가 완료되었습니다");
						location.href="order_information_form.do";
					}//end if
				}//end suc
				
			})//ajax
		 }//end else
		
	}//if 


}//function


function canTotalOrder(orId, status){
		var data ={
				orderId :orId
			
		}
		 console.log(data) 
		
	 	
		if(confirm("해당 주문코드의 주문을 전부 취소하시겠습니까?")){
			 if(status == '구매확정'){
				alert("구매확정 후에는 주문을 취소할 수 없습니다."); 
			
			 }else{
				$.ajax({
					url:"order_totalCan_process.do",
					data:"orderId=" +orId,
					type:"get",
					dataType:"json",
					error:function(xhr){
						alert("a:"+ xhr.status + "b:"+ xhr.statusText + "c:" + xhr.state());
						console.log(data)
					},
					success:function(jsonObj){
						if(jsonObj.removeFlag){
							alert("주문취소가 완료되었습니다");
							location.href="order_information_form.do";
						}//end if
					}//end suc
					
				})//ajax
			 }//end else
			
		}//if 


	}//function



function deleteTotalOrder(orID){
	$("#orderId").val(orID);
	var o = $("#orderId").val();
	
	$("#delAFrm").submit();
}


</script>
<div class=prdP">
<input type="hidden" id="prdPrice" name="prdPrice" >
</div>
  <form id="hidFrm" name="hidFrm" action="order_detail_form.do">
  	<input type="hidden" id="orderId" name="orderId" >
	 </form>	
	  <form id="delAFrm" name="delAFrm" action="order_totalCan_process.do">
	  <input type="hidden" id="orderId" name="orderId" >
	  </form>
	    <form id="delDFrm" name="delDFrm" action="order_can_process.do">
	    <input type="hidden" id="orDetailId" name="orDetailId">
	  </form>
  <c:forEach  items="${list}" var="list">
  <div class="hidden_div">
  <input type="hidden" id="status" name="status" value="${list.status}" /> 
  </div>
  </c:forEach>				
				
					<c:forEach  items="${list}" var="list">
					<div class="inr-box statusDeliveryList">
		<div class="item-list">
			<div class="top">
				<div class="tit">
					<p class="data">${list.inputDateS }</p>
					<a href="javascript:void(0);" class="detail-btn" data-content="C202210301001496" data-url="/mypage/order/indexDeliveryDetail?ordNo=C202210301001496" onclick="goOrderDetail('${list.orderId}')">주문상세 </a>
				</div>
				<!-- 주문 취소 가능 여부 eq Y -->
					<%-- <a href="order_totalCan_process.do?orderId=${list.orderId}" class="btn sm" data-content="C202210301001496" data-url="/mypage/order/indexCancelRequest" onclick="deleteTotalOrder('${list.orderId}')">전체주문취소</a> --%>
					<a href="javascript:void(0);" class="btn sm" onClick="canTotalOrder('${list.orderId}','${list.status}')" >주문코드 ${list.orderId} 전체주문취소</a>

						</div>
		</div>
					<div class="item-list">
							<div class="bottom">
								<div class="t-box">
										<p class="tit t3" data-target="">
													${list.status}</p>
										
								</div>
							
			
						
								
								<div class="float-bx" >
										<div class="untcart"><!-- .disabled -->
											<div class="box">
												<div class="tops" style="margin-bottom:30px;">
													<div class="pic">
														<a href="javascript:void(0);" data-content="C202210301001496" data-url="/mypage/order/indexDeliveryDetail?ordNo=C202210301001496" onclick="orderDeliveryListBtn.goOrderDetail('C202210301001496');return false;">
														<img src="http://localhost/mpnp/images/${list.thImg}" class="img" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'">
														</a>
													</div>
													<div class="name">
														<div class="tit k0421">
															<a href="javascript:void(0);" data-content="C202210301001496" data-url="/mypage/order/indexDeliveryDetail?ordNo=C202210301001496" onclick="orderDeliveryListBtn.goOrderDetail('C202210301001496');return false;">${list.prdName }</a>
														</div>
														<div class="stt">
															${list.totalCnt} 개
															</div>
														<div class="prcs">
															<span class="prc"><em class="p prdPri">${list.totalPrdPrice}</em><i class="w">원</i></span>
															<input type="hidden" id="prd" name="prd" value="${list.totalPrdPrice}"/>
																</div>
													</div>
												</div>
											</div>
										</div>
										 <div class="btn-bx 
										">
										<div class="btnSet">
																	<a href="javascript:void(0);" class="btn c" data-content="C202210301001496" data-url="/mypage/order/indexCancelRequest" onclick="deleteDetail('${list.orDetailId}','${list.status}')">주문취소</a>
											</div>
											</div>
										</div>
									</div>
						</div>
					
					</div>
					</c:forEach>
						 
<div class="btn_fixed_wrap t2" style="display: none;">
	<button class="btn_round" onclick="searchAllOrder();" style="display:none;">전체주문보기</button><!-- 하단 gnb 있을 시 t2추가 -->
</div>

			</div>				
			
			
			<!-- // 주문 배송 -->

		</div>

	</div>
</main>
<!--❤️main-->
				
		<!-- s : 본문영역 -->			






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