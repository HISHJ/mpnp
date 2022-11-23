<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
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

<!-- 네이버 서치어드바이저 HTML 태그 삽입 -->
<meta name="naver-site-verification" content="77730f530bdf1947042f9bdd01be70b207a8fefb" />


<link href="common/favicon/favicon.ico" rel="shrtcut icon">
<link href="common/favicon/android-icon-192x192.png" rel="apple-touch-icon-precomposed">

<link rel="stylesheet" href="http://localhost/nyangpoom/3rdDesign/common/css/headerFooter.css">
<link rel="stylesheet" type="text/css" href="http://localhost/nyangpoom/3rdDesign/_css/main.style.pc.css">
<link rel="stylesheet" type="text/css" href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<link rel="stylesheet" href="http://localhost/nyangpoom/3rdDesign/css/mypage.css">
<link rel="stylesheet" href="http://localhost/nyangpoom/3rdDesign/css/order.css">
<script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810" userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D" webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>

<script type="text/javascript"  src="http://localhost/nyangpoom/3rdDesign/_script/popup.js" ></script>
<script type="text/javascript" 	src="http://localhost/nyangpoom/3rdDesign/_script/ui.js"></script>
<script type="text/javascript" 	src="http://localhost/nyangpoom/3rdDesign/_script/ui_shop.js"></script>

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
					  $(function(){
						  var expression = /\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g;
						  var prdSum = $("#fstPurchGoodsIncYn").val();
						  var discountRate = $("#order_payment_total_dc_amt").val();
						  var actualPrice = $("#order_payment_total_pay_amt").val()*1;
						  
				
					  var deli_fee = 2500;
					 
					  if(prdSum < 30001){//sum이 (구매한 상품금액이 30000원 이하인 경우)
						  deli_fee = 0;
					  } //end if
				
					  //숫자에 단위 넣기
					  const rate_ = discountRate
                      .replace(expression, ","); //할인금액
					  const total_pri = prdSum 
                      .replace(expression, ","); //상품 총가격
					  const cn1 = actualPrice.toString()
                      .replace(expression, ","); // 총 결제금액
					  const ship_fee = deli_fee.toString()
                      .replace(expression, ","); // 배송비
                     
					  $(".total_pri").html(total_pri); //상품 총 금액
					  $("#order_payment_total_dc_amt_view").html(rate_); //할인금액
					  $("#order_payment_total_dlvr_amt_view").html(ship_fee);//배송비
					  $("#order_payment_total_pay_amt_view").html(cn1);//총 결제금액
					//  $("#order_payment_end_pay_amt_view").html(cn1);//총 결제금액
					 
					 
					  })//reay
					</script>
					<script>
					//전화번호 하이픈
					const autoHyphen2 = (target) => {
						 target.value = target.value
						   .replace(/[^0-9]/g, '')
						  .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
						}
					
					//기본배송지 값 설정(안됨..)
				  $(function(){
					  if(document.getElementById("defaultFlag").checked) {
						    document.getElementById("input_check_hidden").disabled = true;
						}
					  
				  })
					</script>








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
<main class="container page shop od order com" id="container" style="margin-top:100px !important">
	<div class="pageHeadPc">
		<div class="inr">
			<div class="hdt">
				<h3 class="tit">주문완료</h3>
			</div>
		</div>
	</div>
	<div class="inr" style="min-height: 357px;">
		<!-- 본문 -->
		<div class="contents" id="contents">
			<div class="ordersets">
				<section class="topbox">
					<div class="hdd">
						<div class="hd">
							<em class="nm">${mod1.membername}</em>님 <br>주문이 완료되었습니다.
						</div>
						<div class="dd">주문하신 내역은 ‘주문내역’ 에서 확인하실 수 있습니다.</div>
					</div>
					</section>

				<section class="sect odnb">
					<div class="hdts"><span class="tit">주문 번호</span></div>
					<div class="cdts">
						<div class="box">
							<i class="nums">${mod1.orderId}</i>
						</div>
					</div>
				</section>

				<section class="sect proinfo">
					<div class="hdts"><span class="tit">상품 정보</span></div>
					<div class="cdts">
					 <c:forEach  items="${mod2}" var="mod2">
						<div class="box">
							<i class="nums" style="font-weight:bold;">👀${mod2.prdName }</i>
							<i class="nums">&nbsp;[수량: ${mod2.totalCnt}개]</i>
						</div>
					 </c:forEach>
					</div>
				</section>

				<section class="sect addr">
					<div class="hdts"><span class="tit">배송지</span></div>
					<div class="cdts">
						<div class="adrset">
							<div class="name">
								<em class="t">집</em>
							</div>
							<div class="adrs">
								[${mod3.zipcode}] ${mod3.addr}( ${mod3.addrDetail})</div>
							<div class="tels">${mod3.receiver} | ${mod3.phone } </div>
						</div>
						<div class="adrreq">
							<div class="pwf">
								
								<div class="txt custom_ellipsis_dlvr">${mod1.shipReq }</div>
							</div>
						</div>
					</div>
				</section>
				<!-- APET-1523 - 스탬프 -->
				<section class="sect bprc">
					<div class="hdts"><span class="tit">결제 정보</span></div>
					<div class="cdts">
						<ul class="prcset">
							<li>
								<div class="dt">총 상품금액</div>
								<div class="dd">
									<span class="prc"><em class="p total_pri">${totalPrice}</em><i class="w">원</i></span>
									<input type="hidden" id="order_payment_total_goods_amt" value="99000">
									<input type="hidden" id="order_payment_total_local_goods_amt" value="">
									<input type="hidden" id="fstPurchGoodsIncYn" value="${totalPrice}">
								</div>
							</li>
							<li id="couponDcLi">
								<div class="dt">등급할인</div>
								<div class="dd">
									<span class="prc dis"><em class="p" id="order_payment_total_dc_amt_view">-${discountPrice}</em><i class="w">원</i></span>
									<input type="hidden" id="order_payment_total_dc_amt" value="${discountPrice}">
								</div>
							</li>
					
					
							<li>
								<div class="dt">배송비</div>
								<div class="dd">
									<span class="prc"><em class="p" id="order_payment_total_dlvr_amt_view">0</em><i class="w">원</i></span>
									<input type="hidden" id="gb_01_total_dlvr_amt" value="0">
									<input type="hidden" id="gb_02_total_dlvr_amt" value="0">
									<input type="hidden" id="order_payment_total_dlvr_amt" value="0">
								</div>
							</li>
						</ul>
						<div class="tot">
							<div class="dt">총 결제금액</div>
							<div class="dd">
								<span class="prc"><em class="p" id="order_payment_total_pay_amt_view">${mod1.actualPrice }</em><i class="w">원</i></span>
								<input type="hidden" id="order_payment_total_pay_amt" value="${mod1.actualPrice }">
							</div>
						</div>
						<!-- 01 주문서-리테일멤버십 가입 안한 경우 -->
					
						<!-- 02 주문서-리테일멤버십 등록 한 경우 -->
				
					</div></section>
				<section class="sect binf">
						<div class="hdts"><span class="tit">결제수단 정보</span></div>
						<div class="cdts">
							<div class="result">
								<div class="hd">
										<i class="t">카카오페이</i>
										</div>
								</div>
						</div>
					</section>

				<div class="my_btnWrap">
					<div class="btnSet">
						<a href="order_detail_form.do?orderId=${mod1.orderId}" class="btn lg d">상세 주문내역</a>
						<a href="/shop/home/" class="btn lg a">계속 쇼핑하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<!--❤️main-->
				
		<!-- s : 본문영역 -->			







<!-- footer -->	
<footer class="footer" id="footer" style="width: 100%; ">
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