<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
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

<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/common/css/headerFooter.css">
<link rel="stylesheet" type="text/css" href="http://localhost/mpnp/3rdDesign/_css/main.style.pc.css">
	<link rel="stylesheet" type="text/css" href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<script type="text/javascript" src="http://localhost/mpnp/3rdDesign/_script/crypto.js"></script>
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
<script type="text/javascript"  src="http://localhost/mpnp/3rdDesign/_script/common.js?modifiedDate=20221013" ></script>
<script type="text/javascript"  src="http://localhost/mpnp/3rdDesign/_script/popup.js" ></script>
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
		//페이징
		 function movePage( page ) {
		 	$("#pageFlag").val( page );
		 	$("#hidFrm").submit();
		 }
		
		function setCateList(sub_id){
			
			location.href="prdList.do?sub_id="+sub_id
			
		}
	
		
		</script>
		
		
		 <style>
 .page-num,.page-num-click{
	font-size:18px;
	font-weight:bold;
	font-style: italic;
}

.page-num-click{
	color:var( --colors-main03);
}


 </style>

<!--라이브 앱과 연동을위한 JS -->
<script src="https://sgr.aboutpet.co.kr/web/runInit/v1.js"></script>

</head>

<body class="body">

<!-- 기본 컨텐츠 -->
	<div class="wrap" id="wrap">
		<input type="hidden" id="viewJsonData" value="%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D">
 <header class="header pc cu mode0" data-header="set0" id="header_pc">
	<input type="password" style="display:none;"/><!-- 크롬 패스워드 자동완성 방지 -->
	<div class="hdr">
		<div class="inr">

<c:import	url="../../user/main/user_header.jsp">
			<c:param name="id" value="${sessionScope.id }"></c:param>
</c:import>

			
</div>
	</div>
</header> 


		
		<div class="layers">
			<!-- 레이어팝업 넣을 자리 -->
			<!-- 등급안내 팝업 추가 2021.05.13 -->
			<article class="popLayer a popLank " id="popLank">
				<div class="pbd">
					<div class="phd">
						<div class="in">
							<h1 class="tit"></h1>
							<button type="button" class="btnPopClose">닫기</button>
						</div>
					</div>
					<div class="pct">
						<main class="poptents">
							<div class="rankCont">
								<div class="rank_imgBox rank_pc">
											<img src="/_images/common/img-level-pc.png" alt="어바웃펫 패미리 등급별 혜택 이미지">
										</div>
									</div>
						</main>
					</div>
				</div>
			</article>
			<!-- //등급안내 팝업 추가 2021.05.13 -->
		</div>
<!--// header pc--><!-- e : header 영역 -->
					<!-- s : gnb 영역 -->

<!--❤️사이드바-->


<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>
<!-- e : gnb 영역 -->			
					<!-- s : LNB 영역 -->

		<script >
		
		
		</script>
		


<nav class="lnb shop" id="lnb">
	<div class="inr" style="width:220px;">
			<nav class="menushop">
			<h2 class="bt bt_store">스토어</h2>
			<div class="button_wrap">
			<button type="button" class="bt st bt_dog active">강아지</button>
			<button type="button" class="bt st  bt_cat">고양이</button>
		</div>

				<li class="open open_dog" id="tab_category_12565" style="width:200px;">
				
								<ul class="sm">
									<li class=""><a class="bt" onclick="javascript:setCateList('s0001')"><b class="t">강쥐사료</b></a></li>
									<li class=""><a class="bt" onclick="javascript:setCateList('s0002')"><b class="t">간식</b></a></li>
								</ul>
								<ul class="sm_2">
									<li class=""><a class="bt" onclick="javascript:setCateList('s0003')"><b class="t">패션/의류</b></a></li>
									<li class=""><a class="bt"onclick="javascript:setCateList('s0004')"><b class="t">기타</b></a></li>
								 </ul> 
								 
				</li>
	
				<li class="open open_cat" id="tab_category_12565" style="width:200px;display:none;">
					<ul class="sm">
						<li class=""><a class="bt" onclick="javascript:setCateList('s0005')"><b class="t">냥이사료</b></a></li>
						<li class=""><a class="bt"onclick="javascript:setCateList('s0006')"><b class="t">간식</b></a></li>
					</ul>
					<ul class="sm_2">
						<li class=""><a class="bt" onclick="javascript:setCateList('s0007')"><b class="t">패션/의류</b></a></li>
						<li class=""><a class="bt" onclick="javascript:setCateList('s0008')"><b class="t">기타</b></a></li>
					 </ul> 
				 
					 
	</li>
		</nav>
		<nav class="menushop"style="margin-right:20px;margin-top:30px;">
			<h2 class="bt bt_my">MY</h2>
		

		<div class="ctset ctset1 active" data-ui-tab-ctn="tab_my_cate" data-ui-tab-val="tab_my_cate_1" style="width:200px;">
				<ul class="sm">
					<li><a class="bt" href="order_information_form.do">주문내역</a></li>
					<li><a class="bt" href="writable_review_list.do" data-content="0">상품 후기</a></li>
				<li><a class="bt" href="mypage_pass_confirm.do?what=updatePass">비밀번호 설정</a></li>
                    <li><a class="bt" href="mypage_pass_confirm.do?what=updateMemberInfo" >회원정보 수정</a></li>
				</ul>
			</div>

			
	</nav>
		</div>
	</div>
</nav><!-- e : LNB 영역 -->
				<!-- s : 검색 영역 -->
<!-- e : 검색 영역 -->
<!--❤️사이드바 끝-->

<!--❤️main-->
<main class="container lnb page shop ct cate" id="container"style="margin-top:100px;margin-left:100px !important;">
	<form id="categoryListForm">
		<input type="hidden" name="cateCdL" id="cateCdL" value="12565">
		<input type="hidden" name="cateCdM" id="cateCdM" value="12673">
	</form>
	<nav class="subtopnav">
		<div class="inr" >
			<div class="swiper-container box swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
				<ul class="swiper-wrapper menu" style="transition-duration: 0ms;">
					<li class="swiper-slide active" id="upDispClsfNo_12673" data-cateidx="1">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12673', '12565', 'N');">사료</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12675" data-cateidx="2">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12675', '12565', 'N');">간식</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12677" data-cateidx="3">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12677', '12565', 'N');">건강관리</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12676" data-cateidx="4">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12676', '12565', 'N');">모래</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12679" data-cateidx="5">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12679', '12565', 'N');">화장실/위생</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12682" data-cateidx="6">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12682', '12565', 'N');">미용/목욕</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12680" data-cateidx="7">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12680', '12565', 'N');">급식/급수기</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12678" data-cateidx="8">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12678', '12565', 'N');">장난감/캣닢</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12683" data-cateidx="9">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12683', '12565', 'N');">스크래쳐/캣타워</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12684" data-cateidx="10">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12684', '12565', 'N');">하우스</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_14005" data-cateidx="11">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('14005', '12565', 'N');">이동장</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_12685" data-cateidx="12">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('12685', '12565', 'N');">패션/의류</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_14006" data-cateidx="13">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('14006', '12565', 'N');">목줄/하네스</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_100000198" data-cateidx="14">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('100000198', '12565', 'N');">반려인용품</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_100000211" data-cateidx="15">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('100000211', '12565', 'N');">텐바이텐</a>
					</li>
					<li class="swiper-slide " id="upDispClsfNo_100000244" data-cateidx="16">
						<a class="bt" href="javascript:void(0);" onclick="javascript:setMCateList('100000244', '12565', 'N');">펫가전</a>
					</li>
					</ul>
			<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
		</div>
	</nav>
	<div class="inr" style="min-height: 429px;">
		<!-- 본문 -->
		<div class="contents" id="contents" style="min-height: 550.8px;">
			 <!-- <section class="sect ct ctabs">
				<ul class="uiTab h menu " id="sCateList">
					<li class="" id="12673" name="dispClsfNo"><a href="javascript:getScateGoodsList('12673', '12673', true);" class="bt" data-ui-tab-btn="tab_cate" data-ui-tab-val="tab_cate_1">사료</a></li>	
					<!-- <li class="swiper-slide" id="12686" name="dispClsfNo"><a href="javascript:getScateGoodsList('12686', '12673', true);" class="bt" data-ui-tab-btn="tab_cate" data-ui-tab-val="tab_cate_1">건식</a>
						<input type="hidden" id="filterDispClsfNo" value="12686">
						<input type="hidden" name="dispClsfNmLength" value="false">
					</li>
					<li class="swiper-slide" id="12694" name="dispClsfNo"><a href="javascript:getScateGoodsList('12694', '12673', true);" class="bt" data-ui-tab-btn="tab_cate" data-ui-tab-val="tab_cate_2">주식파우치</a>
						<input type="hidden" id="filterDispClsfNo" value="12694">
						<input type="hidden" name="dispClsfNmLength" value="false">
					</li>
					<li class="swiper-slide" id="12696" name="dispClsfNo"><a href="javascript:getScateGoodsList('12696', '12673', true);" class="bt" data-ui-tab-btn="tab_cate" data-ui-tab-val="tab_cate_3">주식캔</a>
						<input type="hidden" id="filterDispClsfNo" value="12696">
						<input type="hidden" name="dispClsfNmLength" value="false">
					</li>
					<li class="swiper-slide" id="13329" name="dispClsfNo"><a href="javascript:getScateGoodsList('13329', '12673', true);" class="bt" data-ui-tab-btn="tab_cate" data-ui-tab-val="tab_cate_4">생식</a>
						<input type="hidden" id="filterDispClsfNo" value="13329">
						<input type="hidden" name="dispClsfNmLength" value="false">
					</li>
					<li class="swiper-slide" id="12687" name="dispClsfNo"><a href="javascript:getScateGoodsList('12687', '12673', true);" class="bt" data-ui-tab-btn="tab_cate" data-ui-tab-val="tab_cate_5">분유/우유</a>
						<input type="hidden" id="filterDispClsfNo" value="12687">
						<input type="hidden" name="dispClsfNmLength" value="false">
					</li>
					<li class="swiper-slide active" id="12697" name="dispClsfNo"><a href="javascript:getScateGoodsList('12697', '12673', true);" class="bt active" data-ui-tab-btn="tab_cate" data-ui-tab-val="tab_cate_6">사료샘플</a>
						<input type="hidden" id="filterDispClsfNo" value="12697">
						<input type="hidden" name="dispClsfNmLength" value="false">
					</li> 
					</ul>
			</section>  -->
			</form>
			<section class="sect ct recmd" id="recommendGoodsList" style="display: none"></section>
			<section class="sect ct cates">
				

				<div class="sticky_filter">
					<div class="inr" style="margin-bottom:10px;">
						<div class="uioptsorts cates">
							<div class="dx lt">
								<div class="tot">총 <em class="n" id="goodsCount">${totalData}</em>개 상품</div>
							</div>
							<!-- <div class="dx rt">
								<nav class="filter">
									<button type="button" class="bt filt" name="countName" id="btnFilter" onclick="filter.open();">
										필터<i class="n" id="filCount"></i>
									</button>
								</nav>
								<nav class="uisort only_down" id="sortNav">
									<button type="button" class="bt st" value="APET">등록일순</button>
										<div class="list">
										<ul class="menu">	<!-- filter.detail('del', this.value); 
											<li class="" id="order_DATE"><button type="button" class="bt" value="DATE" onclick="categoryResult.setSort(this.value);">등록일순</button></li>
											<li class="" id="order_SCORE"><button type="button" class="bt" value="SCORE" onclick="categoryResult.setSort(this.value);">후기많은순</button></li>
											<li class="" id="order_SALE"><button type="button" class="bt" value="SALE" onclick="categoryResult.setSort(this.value);">판매인기순</button></li>
										</ul>
									</div>
								</nav>
							</div> -->
						</div>
						<div class="uifiltbox filOneLine" id="uifiltbox">
							<div class="flist ">
								<ul class=""></ul>
							</div>
							<div class="bts">
								<button type="button" class="bt refresh" onclick="filter.refresh('refresh');">새로고침</button>
							</div>
						</div>
					</div>
				</div>
				<div id="sCateGoodsList" class="wrap-gd-unit gd-md gd-col-4 is-cart no-padding">
					<div class="gd-unit">
						<div class="inner">
<!-- <script>
var goodsCount = '21';
$('#goodsCount').text(goodsCount);
</script> -->
<c:forEach var="list" items="${sub}">
<div class="gd-item  amplitudeMainData airbridge" data-idx="0" data-index="1" data-goodsid="GI251033031" data-displayid="" data-displayname="" data-productid="GI251033031" data-productname="ANF 캣 홀리스틱 헬시 키튼 샘플 40g" data-brandid="356" data-brandname="ANF" data-categorypath="" data-price="500" data-discountprice="500" data-petgbcd="">
		<a class="gd-link" href="prddetail.do?productid=${list.productid}" data-dispcornno="" data-disptype="10" data-idx="0" data-content="GI251033031" data-url="/goods/indexGoodsDetail?goodsId=GI251033031">
			<div class="gd-thumb">
				<img class="thumb-img" src="http://localhost/mpnp/upload/product/${list.thimg}?type=f&amp;w=288&amp;h=288&amp;quality=90&amp;align=4" alt="${list.productname }" onerror="http://localhost/mpnp/upload/product/${list.thimg}?type=f&amp;w=288&amp;h=288&amp;quality=90&amp;align=4'">
				<div class="gd-flag">
					</div>
				<button class="btn-favorite " data-content="GI251033031" data-url="/goods/insertWish?goodsId=GI251033031" data-disp-clsf-no="300000174" data-action="interest" data-yn="N" data-goods-id="GI251033031" data-target="goods">찜하기</button>
				<button class="btn-cart" data-goodsid="GI251033031" data-itemno="395860" data-reservationtype="" data-reservationstrtdtm="" data-ordmkiyn="" data-minordqty="1" data-goodscstrttpcd="ITEM">장바구니 담기</button>
				</div>
			<div class="gd-info">
				<div class="gd-top">
					<div class="gd-flag">
						</div>
					<button class="btn-cart" data-goodsid="GI251033031" data-itemno="395860" data-reservationtype="" data-reservationstrtdtm="" data-ordmkiyn="" data-minordqty="1" data-goodscstrttpcd="ITEM">장바구니 담기</button>
					</div>
				<div class="gd-body">
					<span class="tit">${list.productname }</span>
					<div class="wrap-price">
						<span class="price"><em><fmt:formatNumber value="${list.price }" pattern="#,###"/></em>원</span>
					</div>
					</div>
				<div class="gd-bottom">
					<div class="rate">
						<span class="star">${list.staravg }</span>
							<span class="review">후기 ${list.reviewcnt }</span>
						</div>
					<div class="gd-flag">
						</div>
				</div>
				</div>
		</a>
	</div>
</c:forEach>
</div>
</div>
</div>
			</section>
			<div class="page" style="width:100%;display:flex;justify-content: center;align-self: center;">
		<c:if test="${ not empty sub  }">
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
	
 	<form name="hidFrm" id="hidFrm" action="prdList.do">
 	<input type="hidden" id="sub_id" name="sub_id" value="${param.sub_id }">
	<input type="hidden" id="pageFlag" name="pageFlag" value="${ empty param.pageFlag ? 1: param.pageFlag}">
	</form> 
			
			
			
			
			</div>
	</div>
</main>
	
<!--❤️main-->
				
		<!-- s : 본문영역 -->			

		<script type="text/template" id="relatedGoodsDetailWrap">
	<div class="commentBoxAp type01 handHead popconTingBox pop-relation-box uiPdOrdPan ton tabMode bodylock" style="bottom:-100%;" data-priceh="60%" id="goodsRelatedBottomSheet">
		<!-- tabMode 클래스 추가 시 : 탭해더 부분 display:block ; // backMode 클래스 추가 시 : 뒤로가기 버튼 display:block -->
		<div class="head h2 bnone" id="divHandHead">
			<div class="con">
				<button class="mo-header-backNtn t2" onclick="backToGoodsRelatedList();" id="btnBack" style="display: block;">뒤로</button>
				<div class="small-pic" id="divSmallPic"></div>
				<div class="tit type-ab" id="divBackModeTit" ><span></span></div><!--  04.13 -->
				<a href="javascript:;" class="close" onclick="javascript:fnHandHeadClose(this);"></a>
			</div>
		</div>
	</div>
</script>
<nav class="floatNav">
	<div class="inr">
		<div class="bts">
			<!-- 스토어 전환 버튼 -->
			<div class="float-toggle-store is-cat hide_pc hide_mo">
				<!-- NOTE: 현재 스토어가 강이지인 경우 'is-dog', 고양이인 경우 'is-cat' 클래스 추가 -->
				<div class="inner">
					<button type="button" class="btn-toggle-store btn-dog">
						<span>강아지</span>
					</button>
					<button type="button" class="btn-toggle-store btn-cat">
						<span>고양이</span>
					</button>
				</div>
			</div>
			<!-- // 스토어 전환 버튼 -->
			
			<div class="pd tp">
				<button type="button" class="bt tops">페이지위로</button>
			</div>
			</div>
	</div>
</nav>




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