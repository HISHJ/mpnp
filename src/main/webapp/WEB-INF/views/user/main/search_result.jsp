<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


<link rel="stylesheet" href="http://localhost/mfnf/3rdDesign/common/css/headerFooter.css">
<link rel="stylesheet" type="text/css" href="http://localhost/mfnf/3rdDesign/_css/main.style.pc.css">
<link rel="stylesheet" type="text/css" href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<link rel="stylesheet" href="http://localhost/mfnf/3rdDesign/css/searchMain.css">
<script type="text/javascript" src="http://localhost/mfnf/3rdDesign/_script/crypto.js"></script>
<script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810" userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D" webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>

<script type="text/javascript"  src="http://localhost/mfnf/3rdDesign/_script/common.js?modifiedDate=20221013" ></script>
<script type="text/javascript"  src="http://localhost/mfnf/3rdDesign/_script/popup.js" ></script>
<script type="text/javascript" 	src="http://localhost/mfnf/3rdDesign/_script/ui.js"></script>
<script type="text/javascript" 	src="http://localhost/mfnf/3rdDesign/_script/ui_shop.js"></script>

  <!--google icons-->
	<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<!--google fonts-->
	<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">






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
				<ul class="menu">					
					<li><a href="/join/indexTerms?header=Y&goSns=Y" class="bt">회원가입</a></li>
		                <li><a href="javascript:clickLogin();" class="bt">로그인</a></li>
		                <!-- <li><a href="javascript:;" class="bt">로그인/회원가입</a></li> -->
				
					</ul>
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
			
			</div>
			<div class="cdt" >
						<div class="schs">
								<form action="search_prd_list.do" method="get">
								<div class="form " style="margin-right:70px !important;width:900px !important; ">
									<div class="input del kwd">
									<input id="srchWord" name="name"  type="search" maxlength="50" value="" autocomplete="off" placeholder="검색어를 입력해주세요." ></div>
									<button type="submit" class="btnSch">검색</button>
								</div>
									</form>
							</div>
						<div class="menu">
							
							<button id="srchClsBtn" class="bt close" type="button" style="display: none;" onclick="searchCommon.srchClsBtn();">닫기</button>
							<div class="alims" id ="alertDiv">
							</div>
						</div>
						</div>
</div>
	</div>
</header>

		
		
<!--// header pc--><!-- e : header 영역 -->
					<!-- s : gnb 영역 -->

<!--❤️사이드바-->


<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>
<!-- e : gnb 영역 -->			


				<!-- s : 검색 영역 -->
<!-- e : 검색 영역 -->
<!--❤️사이드바 끝-->

<!--❤️right main page-->
<main class="container  page 1dep 2dep" id="container" style="margin-top:100px;">
	<div class="inr" style="min-height: 429px;">
		<script>
var check = ($('link[href *= "style.mo.css"]').length) ? true : false;
var searchLastView;
var hitKeyword;
var swiper3;

//페이징
function movePage( page ) {
	$("#pageFlag").val( page );
	$("#hidFrm").submit();
}



</script>
<!-- 검색 페이지 -->
<div class="contents" id="contents">
<!-- 공통 검색  -->
<div class="search-wrap">
<!-- 최근 태그  -->
<!-- // 최근 태그  -->

<div class="block-wrap">
	<div class="search_left">

		<!-- //어바웃펫 추천 검색어 -->
		
		<!-- 최근 본 상품 영역 -->
		 <section class="search_last_view" id="rcntSearchArea" style="margin-top:-5px" >	<!-- one_line 은 각 구좌별 고유 class명이 들어갑니다 -->
				<div class="hdts">
					<a class="hdt" href="/mypage/indexRecentViews">
						<span class="tit"> 검색결과 (${totalData }건)</span>
					</a>
				</div>
				<div id="tmpPrd01" class="wrap-gd-unit gd-sd gd-col-2">
				
					<div class="gd-unit swiper swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
						<div class="inner swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
						<c:if test="${empty result }">
						검색하신 상품을 준비하지 못했어요.
						</c:if>
			<c:forEach var="result" items="${result}">
							<div class="gd-item amplitudeMainData airbridge swiper-slide active" data-idx="0" data-index="1" data-goodsid="GS251062051" data-displayid="" data-displayname="" data-productid="GS251062051" data-productname="[2+1] 펫모닝 바베큐 PMD-159 (랜덤발송)" data-brandid="" data-brandname="" data-categorypath="" data-price="9000" data-discountprice="3400" data-petgbcd="" style="margin-right: 10px;">
		<a class="gd-link" href="prddetail.do?productid=${result.productid}" data-dispcornno="" data-disptype="commonSearchHist" data-idx="0" data-content="GS251062051" data-url="/goods/indexGoodsDetail?goodsId=GS251062051">
			 <div class="gd-thumb">
				<img class="thumb-img" src="http://localhost/mpnp/images/${result.thimg}?type=f&amp;w=178&amp;h=178&amp;quality=90&amp;align=4" alt="${result.productname}" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'">
				<div class="gd-flag">
					</div>
				<!-- <button class="btn-favorite " data-content="GS251062051" data-url="/goods/insertWish?goodsId=GS251062051" data-disp-clsf-no="300000174" data-action="interest" data-yn="N" data-goods-id="GS251062051" data-target="goods">찜하기</button>
				<button class="btn-cart" data-goodsid="GS251062051" data-itemno="424850" data-reservationtype="" data-reservationstrtdtm="" data-ordmkiyn="N" data-minordqty="" data-goodscstrttpcd="SET">장바구니 담기</button> -->
				</div> 
			<div class="gd-info">
				<div class="gd-top">
					<div class="gd-flag">
						</div>
					<button class="btn-cart" data-goodsid="GS251062051" data-itemno="424850" data-reservationtype="" data-reservationstrtdtm="" data-ordmkiyn="N" data-minordqty="" data-goodscstrttpcd="SET">장바구니 담기</button>
					</div>
				<div class="gd-body">
					<span class="tit">${result.productname }</span>
					<div class="wrap-price">
							<span class="price"><em><fmt:formatNumber value="${result.price }" pattern="#,###"/></em>원</span>
					</div>
					</div>
				</div>
		</a>
	</div>
		</c:forEach> 
 
	<div class="page">
		<c:if test="${ not empty result  }">
			<c:if test="${ startNum ne 1 }">
				<a href="javascript:movePage(1)" class="page-num">&nbsp;&lt;&lt;&nbsp;</a>
				<a href="javascript:movePage(${startNum ne 1 ? startNum-1 : 1})" class="page-num">&nbsp;&lt;&nbsp;</a>
			</c:if>
			<c:forEach step="1" var="i" begin="0" end="${ isLast }">
				<a href="javascript:movePage(${ startNum+i })" ${ curPage eq startNum + i ?" class='page-num-click'" :" class='page-num'"}><c:out value="&nbsp;${ startNum+i }&nbsp;" escapeXml="false"/></a>
			</c:forEach>
			<c:if test="${ lastPage gt startNum+2 }">
				<a href="javascript:movePage(${ startNum+3 })" class="page-num">&nbsp;&gt;&nbsp;</a>
				<a href="javascript:movePage(${ lastPage })" class="page-num">&nbsp;&gt;&gt;&nbsp;</a>
			</c:if>
		</c:if>
	</div>

 	<form name="hidFrm" id="hidFrm" action="search_prd_list.do">
	<input type="hidden" id="name" name="name" value="${param.name}">
	<input type="hidden" id="pageFlag" name="pageFlag" value="${ empty param.pageFlag ? 1: param.pageFlag}">
	</form> 


<div class="gd-item swiper-slide" style="margin-right: 10px;">
			</div>
		</div> 
						<!-- Add Pagination -->
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
				</div>
			</section>
			<script type="text/javascript">
				window.setTimeout(function() {
					if (ui.prdSwiper.chkInstance('#tmpPrd01')) {
						ui.prdSwiper.update('#tmpPrd01');
					} else {
						ui.prdSwiper.init('#tmpPrd01', {
							// swiper callback: 초기화 완료
							icb: function() {
								console.log('swiper init! : (#tmpPrd01) 최근 본 상품');
							},
						}, {
							freeMode: true,
							slidesPerView: 'auto',
							spaceBetween: 10,
						});
					}
				}, 300);
			</script>
		<!-- // 최근 본 상품 영역 -->
	</div>
	
	<!-- 인기 검색어 -->
	<div class="search_list">
		<div class="swiper-container t01">
			<div class="hdts">
				<span class="tit">
					<em>
						
							베스트셀러
							</em>
					 TOP 5
				 </span>
				<span class="criteria_time hide_mo">
				${today }
				<%-- <fmt:formatDate value="${today}" pattern="yyyy-MM-dd hh:mm:ss"/> --%>
				</span>
			</div>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<ul class="item">
					
						<c:forEach var="best" items="${best}" varStatus="status">
						<li>
								<a href="prddetail.do?productid=${best.productid}" data-content="" data-url="/commonSearch">
									<span class="num">${status.count}</span> 
									<p class="txt">${best.productname }</p>
										</a>
							</li>
							</c:forEach>
						</ul>
				</div>
			
				</div>
		</div>
		<script type="text/javascript">
			if(check){
				hitKeyword = new Swiper('.search_list .swiper-container.t01', {
					slidesPerView: '1',
					centeredSlides: false,
					spaceBetween: 20,
					pagination: {
						el: '.search_list .swiper-container.t01 .swiper-pagination',
						clickable: true,
					}
				});
			}
		</script>

	</div>
	<!-- // 인기 검색어 -->
</div>
</div>
<!-- // 공통 검색  -->
</div>
<!-- 검색 페이지 -->
</div>
</main>
	<!--❤️main-->



				
		<!-- s : 본문영역 -->			
		<!--  <main class="container lnb page shop hm main" id="container"> -->
		<main class="container gnb lnb page shop hm main" id="container">
			<div class="mnschbox hide_mo">
				<div class="inr">
			
				</div>
			</div>
			<div class="inr">
				<!-- 본문 -->
				<div class="contents" id="contents">
					<input type="hidden" id="dispClsfNo_" value="300000174"/>
					<div id="519" name="dispCorn_div" data-index="0"></div>
					<div id="1313" name="dispCorn_div" data-index="1"></div>
					<div id="1204" name="dispCorn_div" data-index="2"></div>
					<div id="1257" name="dispCorn_div" data-index="3"></div>
					<div id="538" name="dispCorn_div" data-index="4"></div>
					<div id="1022" name="dispCorn_div" data-index="5"></div>
					<div id="521" name="dispCorn_div" data-index="6"></div>
					<div id="1252" name="dispCorn_div" data-index="7"></div>
					<div id="535" name="dispCorn_div" data-index="8"></div>
					<div id="536" name="dispCorn_div" data-index="9"></div>
					<div id="537" name="dispCorn_div" data-index="10"></div>
					<div id="1202" name="dispCorn_div" data-index="11"></div>
					<div id="1302" name="dispCorn_div" data-index="12"></div>
					<div id="1030" name="dispCorn_div" data-index="13"></div>
					<div id="540" name="dispCorn_div" data-index="14"></div>
					<div id="1026" name="dispCorn_div" data-index="15"></div>
					<div id="541" name="dispCorn_div" data-index="16"></div>
					<div id="543" name="dispCorn_div" data-index="17"></div>
					<div id="545" name="dispCorn_div" data-index="18"></div>
					<div id="539" name="dispCorn_div" data-index="19"></div>
					<div id="585" name="dispCorn_div" data-index="20"></div>
					</div>
			</div>
		</main>
	



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