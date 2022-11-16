<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>찜리스트</title>
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
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/mypage.css">
<script type="text/javascript" src="http://localhost/mpnp/3rdDesign/_script/crypto.js"></script>
<script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810" userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D" webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>

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
		
		</script>



<script type="text/javascript">
	let tempFuncNm = ""; //onBackSelected 함수 호출 시 넘긴함수명으로 callBack함수에서 실행될 함수명
	
	$(document).ready(function(){
		/* 안드로이드 계열에서 저장되는 것 막음 / javascript Ready Function에 추가 */
		/*$(document).bind("contextmenu", function(e) {
		    return false;
		});*/
		
		document.addEventListener("contextmenu", e => { 
		    e.target.matches("img") && e.preventDefault()
		    e.target.matches("video") && e.preventDefault()
			e.target.className=="thumb-img" && e.preventDefault()
		});
		
		//Device 뒤로가기 버튼 기능을 웹에서 처리시 사용(Y:웹에서 백기능 처리, N:앱에서 처리)
		//페이지로딩시 Device 뒤로가기 버튼 기능 앱에서 처리로 리셋
		if("PC" == "APP") {
			toNativeData.func = "onBackSelected";
			toNativeData.isIntercepter = "N";
			toNative(toNativeData);
			
			tempFuncNm = ""; //함수명 초기화
		}
	});

	
	// mw/pc 자동 로그아웃 30분 
	var checkActionTimeOut;
	if('0' != '0' && 'PC' != 'APP'){
	    resetLoginTimeOut();
	    $(document).on('click keypress' , 'body' , function(){
	        resetLoginTimeOut();
	    });
	}
	function resetLoginTimeOut() {
		if('0' != '0' && 'PC' != 'APP'){
		    window.clearTimeout(checkActionTimeOut);
		    checkActionTimeOut = setTimeout(function() {
		        location.href="/logout/";
		    }, 30 * 60 * 1000);
		}		   
	}
	
	// 설정 -> 앱 푸시 설정 토글시
	// 앱에서 호출하기 위해 공통으로 호출
	var isAjaxAppPush = false;
	function updateInfoRcyYn(checkYn) {
		if("" != null && "" != "") {
			var toastText = (checkYn == "Y") ? "설정" : "해제";
			
			if(isAjaxAppPush){
				return false;
			}
			
			isAjaxAppPush = true;
			waiting.start();
			$.ajax({
				url : "/updateInfoRcvYn"
				, type : "POST"
				, dataType : "json"
				, contentType : "application/x-www-form-urlencoded;charset=UTF-8"
				, cache : false
				, data : { mbrNo : "0", infoRcvYn : checkYn }
			})
			.done (function(result){
				isAjaxAppPush = false;
				if(result == "S") {
					if(checkYn != "Y") {
						ui.toast("앱 푸시 알림이" +" "+toastText +"되었어요");	
					}
					if($("#settingArea #infoRcvYn").length > 0) {
						if(checkYn == "Y") {
							$("#infoRcvYn").prop('checked', true);
						} else {
							$("#infoRcvYn").prop('checked', false);
						}
					}
				}
				
				waiting.stop();
			});
		}
	}

	// APP용 페이지 이동 Callback function
	function fnGoIndexOrderPayment(data){
		var obj = JSON.parse(data);
		createFormSubmit("indexOrderPaymentForm","/order/indexOrderPayment",obj);
	}
	
	//App일때 영상상세(onNewPage로 띄움)에서 좋아요, 찜 선택 또는 해제시 영상상세를 호출한 화면의 좋아요, 찜 숫자 변경되도록 하기위해 필요한 함수
	//영상상세에서 onCallMainScript 호출시 받는 callback 함수임.
	function appCallMainScript(data){
		var parseData = JSON.parse(data);
		var detailVdId = parseData.vdId; //영상ID
		var detailGb = parseData.intrGbCd; //구분코드(10=좋아요, 20=찜)
		
		if(detailGb == "10"){
			$.ajax({
				type: 'POST',
				url: '/tv/series/selectLikeCount',
				dataType: 'json',
				data : {
					vdId : detailVdId
					, intrGbCd : detailGb
				},
				success: function(data) {
					var likeCnt = data.likeCnt;
					//console.log("["+detailVdId+"]의 좋아요 건수=" + likeCnt);
					
					$("[data-read-like='"+detailVdId+"']").html(fnComma(likeCnt));
				},
				error: function(request,status,error) {
					ui.alert("오류가 발생되었습니다. 다시 시도하여 주십시오.");
				}
			});
			
			if($("[data-btn-like='"+detailVdId+"']").hasClass("on")){
				$("[data-btn-like='"+detailVdId+"']").removeClass("on");
			}else{
				$("[data-btn-like='"+detailVdId+"']").addClass("on");
			}
		}else if(detailGb == "20"){
			if($("[data-btn-bookmark='"+detailVdId+"']").hasClass("on")){
				$("[data-btn-bookmark='"+detailVdId+"']").removeClass("on");
			}else{
				$("[data-btn-bookmark='"+detailVdId+"']").addClass("on");
			}
		}
	}
	
	//Device 뒤로가기 버튼 기능을 웹에서 처리시 사용(Y:웹에서 백기능 처리, N:앱에서 처리)-호출 함수
	function fncDeviceBackWebUse(funcNm){
		tempFuncNm = funcNm; //호출할 함수명 셋팅
		
		toNativeData.func = "onBackSelected";
		toNativeData.isIntercepter = "Y";
		toNative(toNativeData);
	}
	
	//Device 뒤로가기 버튼 기능을 웹에서 처리시 사용(Y:웹에서 백기능 처리, N:앱에서 처리)-리턴함수
	function appBackSelected(){
		/**function이 있을경우만 호출*/
		if (typeof window[tempFuncNm] == 'function') {
			window[tempFuncNm](); //함수 호출
		}
	}
	
	// SHOP 메인 html 세션스토리지 일괄 삭제
	function removeMainAllCache() {
		var bfKeyArr = [];
		var bfKey;
		for(var i =0; i < window.sessionStorage.length; i++){
			bfKey = window.sessionStorage.key(i);
			if(bfKey.indexOf('bfMain')>-1) {
				bfKeyArr.push(bfKey);
			}
		}
		if (bfKeyArr.length > 0) {
			for(var i=0; i<bfKeyArr.length; i++){
				window.sessionStorage.removeItem(bfKeyArr[i]);
			}
		}
	}
</script>
<style type="text/css">
	/* 아이폰 계열에서 저장되는 것 막음 / css 에 추가 */
	img, video {
		/* 화면을 길게 누르고 있을때 뜨는 팝업이나 액션시트를 제어 */
		-webkit-touch-callout:none;
		/* 텍스트나 이미지를 선택할 수 있게 하는 여부를 제어 */
		/*-webkit-user-select:none;*/
		/* 링크를 터치했을때 나오는 기본 영역의 색상을 제어 */
		/*-webkit-tap-highlight-color:transparent;*/
	}
</style>


</head>

<body class="body">

<!-- 기본 컨텐츠 -->
	<div class="wrap" id="wrap">
		<input type="hidden" id="viewJsonData" value="%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D">
		
	<script>
	
	function clickLogin(){
		location.href = "/indexLogin?returnUrl="+location.pathname+location.search;
	}
	
	//장바구니 수 set, 캐시 이슈로 ajax 호출
	function setCartCnt(){
		$.ajax({
			url : "/order/getCartCnt"
			, dataType : "json"
			, type : "POST"
			, success : function(data){
				var $cartCntObj = $('.header .menu .cart').find('em');
				var $shopMainCartCntObj = $('#btnCart').find('em');
				if($cartCntObj.length == 0){
					if(data.cartCnt != 0){
						var html = '<em class="n">'+data.cartCnt+'</em>';
						$('.header .menu .cart').html(html);
					}
				}else{
					if(data.cartCnt == 0){
						$cartCntObj.remove();
					}else{
						$cartCntObj.text(data.cartCnt);
					}
				}
				
				// 모바일 샵 메인용
				if($shopMainCartCntObj.length == 0){
					if(data.cartCnt != 0){
						var html = '<em class="label cnt-cart">'+data.cartCnt+'</em>';
						$('#btnCart').append(html);
					}
				}else{
					if(data.cartCnt == 0){
						$shopMainCartCntObj.remove();
					}else{
						$shopMainCartCntObj.text(data.cartCnt);
					}
				}
			}
		});
	}

  	//등급 레이어팝업 스크립트 추가 2021.05.13
	var rankBox = function(){
		ui.popLayer.open('popLank',{
			ocb:function(){
				// console.log("popLank 열림");
			},
			ccb:function(){
				// console.log("popLank 닫힘");
			}
		});

		if("PC" == "PC") {
			$(".rank_pc").addClass("on");
		}else {										
			$(".rank_mo").addClass("on");
		}
	}
  	
	function closeTopbanner() {
		$('#topBanner').addClass('hide');
		var cookieName	= getTopbannerCookieName();
		setCookieTopBanner(cookieName, "done", 1);
	}
</script><!-- header pc-->
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
				<nav class="tmenu">
					<ul class="list">
			
						<li id="liTag_10" class=""><a href="/shop/home/" class="bt">스토어</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_00" class="active"><a href="/mypage/indexMyPage/" class="bt">MY</a></li>
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
							<!-- <button id="alertBtn" class="bt alim  " type="button">알림</button> -->
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
					<script type="text/javascript">
function setCateList(dispClsfNo, upDispClsfNo) {
	var viewDispClsfNo = getDispClsfNoFromCateCdL(upDispClsfNo);
	// 쿠키저장
	fnDispClsfNoCookie('set', viewDispClsfNo);
	location.href = "/shop/indexCategory?dispClsfNo="+dispClsfNo+"&cateCdL="+upDispClsfNo+"&cateCdM="+dispClsfNo;
}

function goIndexLoginSettings() {
	location.href = "/indexLoginSettings?returnUrl=" + window.location.pathname;
}

//시리즈 팝업
function seriesOpen(){
	var options = {
		url : "/tv/series/getSeriesList"
		, type : "POST"
		, dataType : "html"
		, data : { }
		, done : function(result){
			$("#gnbSrisListPopup").empty();
			$("#gnbSrisListPopup").html(result);
			ui.gnb.using("close"); //시리즈 목록 레이어 팝업 실행시 gnb메뉴(전체메뉴) 닫기
			ui.popLayer.open('popSeriesList');
		}
	};
	ajax.call(options);
}


function goMyPetLogGnb(){
	if( checkLoginGnb() && checkRegPetGnb() ){
		location.href = "https://aboutpet.co.kr/log/indexMyPetLog/?mbrNo=0";
	}
}


function checkLoginGnb(){
	if( "false" != "true" ){
		ui.confirm('로그인 후 서비스를 이용할 수 있어요.<br>로그인 할까요?',{ // 컨펌 창 옵션들
			ycb:function(){
				location.href = "https://aboutpet.co.kr/indexLogin";
			},
			ncb:function(){
				return false;
			},
			ybt:"로그인", // 기본값 "확인"
			nbt:"취소"  // 기본값 "취소"
		});
	}else{
		return true;
	}
}


function checkRegPetGnb(){	
	if( "" == null || "" == ""){
		ui.confirm('마이펫 등록 후 이용할 수 있어요<br/>펫정보를 등록할까요?',{ // 컨펌 창 옵션들
			ycb:function(){
				// 반려동물 등록 화면으로 이동.
				location.href = "https://aboutpet.co.kr/my/pet/petInsertView";
			},
			ncb:function(){
				//alert('취소');
				return false;
			},
			ybt:"예", // 기본값 "확인"
			nbt:"아니요"  // 기본값 "취소"
		});
	}else{
		return true;
	}
}

function goPageWithClosingGnb(url) { 
	if(typeof url !== 'string') return;

	ui.gnb.usingWithoutAnimation('close');

	location.href = url;
}

</script>
<!--❤️사이드바-->


<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>
<!-- e : gnb 영역 -->			
					<!-- s : LNB 영역 -->
					<script type="text/javascript">
	var rcntList = null;// 최근본 상품 호출여부 판단(petshopShortCut.jsp 에서 사용)
	
	var reqUri = '/shop/home/';
	var thisPath =  window.location.pathname + window.location.search;
	$(document).ready(function(){
		// 최근본 상품
		$.ajax({
			type: "POST",
			data : {mbrNo : '0'},
			url: "/shop/getOneGoodsDtlInqrHist",
			beforeSend : function name() {
				rcntList = '';
			},
			success: function (result) {
				$(".rcntImgArea").data('loading','ing');
				var thisImgPath = '';
				var thisHtml = 	'<a class="box" href="javascript:void(0);" onclick="location.href=\'/mypage/indexRecentViews/\'" data-content="" data-url="/mypage/indexRecentViews/">';
				thisHtml += 	'<b class="t">최근본상품</b><div class="thumb" ><div class="pic">';
				if(result.dtlHist == undefined || result.dtlHist.imgPath == null){
					thisHtml += 	'<img src="/_images/common/img-rc-vw-gds.jpg" alt="" class="img rcntImgArea">';
				}else{
					var imgDomain = "https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images" ;
					thisImgPath = imgDomain + result.dtlHist.imgPath + "?type=f&w=70&h=70&quality=90&align=4";
					thisHtml += 	'<img src="'+thisImgPath+'" alt="'+result.dtlHist.goodsNm+'" class="img rcntImgArea">';
				}
				thisHtml += '</div></div></a>';
				$("#rcntThumbArea").html(thisHtml);
				if($("#contents .rcntImgArea").length > 0 && thisImgPath != ''){	// 샵메인 최근본상품에 적용
					$("#contents .rcntImgArea").attr("src",thisImgPath);
					$("#contents .rcntImgArea").attr("alt",result.dtlHist.goodsNm);
					rcntList = 'done';
				}else{
					rcntList = 'fail';
				}
			},
			error : function() {
				rcntList = 'fail';
			}
		});  
		
		var cateCdL = "12565"	// 12564
		
 		$.each($('li[id^=shortCut] a'), function(){
 			var thisHrefUrl = $(this).data("url").replace(location.origin,"");
 			if(thisPath.indexOf(thisHrefUrl) > -1 && thisPath.indexOf("shortCutYn=Y") > -1){
 				$(this).parent('li').attr("class", "active");
 				if($(this).attr("onclick").indexOf("/event/indexSpecialExhibitionZone") != -1 
 						&& $(this).attr("onclick").indexOf('exhbtNo='+'') == -1){
	 					 $(this).parent('li').attr("class", "");
	 			}
	 		}else if(thisPath.indexOf("/shop/indexBestGoodsList") > -1 && thisHrefUrl.indexOf("/shop/indexBestGoodsList") > -1) {
	 			// 베스트 전체보기로 진입했을 경우
	 			$(this).parent('li').attr("class", "active");
	 		}
 		});
		
		showMyLnbList(cateCdL);
		$("#lnb").show();
		$("#contents").show();
		$("li[id^=menu_tab_]").one('click', function(){
			var dispClsfNo = $(this).data("dispclsfno");
			sendDispClsfNo(dispClsfNo);
		});
		
		// 카테고리 버튼 열기/닫기 버튼 쿠키 저장
		$("li[id^=tab_category_]").children('a').click(function(){
			var categoryClass = $(this).parent().attr("class");
			if(categoryClass == 'open') {
				$.cookie('categoryYn', 'N', {path:'/'});
			}else{
				$.cookie('categoryYn', 'Y', {path:'/'});
			}
		});
	});
	
	function setCateList(dispClsfNo, upDispClsfNo, scateYN) {
		var viewDispClsfNo = getDispClsfNoFromCateCdL(upDispClsfNo);
		// 쿠키저장
		fnDispClsfNoCookie('set', viewDispClsfNo);
		var url = "/shop/indexCategory?dispClsfNo="+dispClsfNo+"&cateCdL="+upDispClsfNo+"&cateCdM="+dispClsfNo;
		var cateCdL = $("#cateCdL").val();
		var cateCdM = $("#cateCdM").val();
		if(scateYN == 'Y') {
			url = "/shop/indexCategory?dispClsfNo="+dispClsfNo+"&cateCdL="+cateCdL+"&cateCdM="+cateCdM;
		}
		location.href = url;
	}
	
	// 분류번호 보내기
	function sendDispClsfNo(dispClsfNo){
		var cateCdL = dispClsfNo
		var lnbDispClsfNo = getDispClsfNoFromCateCdL(dispClsfNo);	
		// 쿠키저장
		fnDispClsfNoCookie('set', lnbDispClsfNo);
		var form = document.createElement("form");
		document.body.appendChild(form);
		form.setAttribute("method", "POST");
		var url = "/shop/home/";
		// 바로가기 영역, 샵홈 상품목록, 펫샵메인 -> 메인으로 이동
		if(thisPath.indexOf("shortCutYn=Y") == -1 && thisPath.indexOf("&dispCornNo=") == -1 && thisPath.indexOf("/shop/home") == -1 && thisPath.indexOf("/event/indexExhibitionZone") == -1 && thisPath.indexOf("/event/indexSpecialExhibitionZone") == -1 && thisPath.indexOf("/shop/indexBestGoodsList")) {
			form.setAttribute("method", "GET");
			url = reqUri;
		}
		
		var hiddenField = document.createElement('input');
		
		if(thisPath.indexOf("/shop/indexCategory") > -1) {
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "cateCdL");
			hiddenField.setAttribute("value", cateCdL);	// 12564
			form.appendChild(hiddenField);
			document.body.appendChild(form);
		}else if(thisPath.indexOf("/brand/indexBrandDetail") > -1) { 
			var bndNo = $("input[id=bndNo]").val();
			hiddenField = document.createElement("input");
			hiddenField.setAttribute("type", "hidden");
			hiddenField.setAttribute("name", "bndNo");
			hiddenField.setAttribute("value", bndNo);
			form.appendChild(hiddenField);
			document.body.appendChild(form);
		}
		
		form.setAttribute("action", url);
		document.body.appendChild(form);
		form.submit();
	}
	
	// 나의 반려 동물로 LNB 셋팅
	function showMyLnbList(cateCdL) {
		$("li[id^=tab_category_]").hide();
		$("#b_tag_"+cateCdL).click();
		$("#tab_category_"+cateCdL).show();
	}
	
</script>
<nav class="lnb shop" id="lnb">
	<div class="inr" style="width:220px;">
		<nav class="menushop"style="margin-right:20px;margin-top:-30px;">
			<h2 class="bt bt_my">MY</h2>
		

			<div class="ctset ctset1 active" data-ui-tab-ctn="tab_my_cate" data-ui-tab-val="tab_my_cate_1" style="width:200px;">
				<ul class="sm">
					<li><a class="bt" href="/mypage/order/indexDeliveryList" data-url="/mypage/order/indexDeliveryList" data-content="0">주문내역</a></li>
					<li><a class="bt" href="/mypage/goodsCommentList" data-url="/mypage/goodsCommentList" data-content="0">상품 후기</a></li>
					<li><a class="bt" href="/mypage/info/indexPswdUpdate" data-content="0" data-url="/mypage/info/indexPswdUpdate" >비밀번호 설정</a></li>
					<li><a class="bt" href="/mypage/info/indexManageCheck" data-content="0" data-url="/mypage/info/indexManageCheck" >회원정보 수정</a></li>
				</ul>
			</div>

			
	</nav>

		<nav class="menushop">
			<h2 class="bt bt_store">스토어</h2>
			<div class="button_wrap">
			<button type="button" class="bt st bt_dog active">강아지</button>
			<button type="button" class="bt st  bt_cat">고양이</button>
		</div>

				<li class="open open_dog" id="tab_category_12565" style="width:200px;">
								<ul class="sm">
									<li class=""><a class="bt" href="javascript:setCateList('12673', '12565', 'N');"><b class="t">강쥐사료</b></a></li>
									<li class=""><a class="bt" href="javascript:setCateList('12675', '12565', 'N');"><b class="t">간식</b></a></li>
								</ul>
								<ul class="sm_2">
									<li class=""><a class="bt" href="javascript:setCateList('12685', '12565', 'N');"><b class="t">패션/의류</b></a></li>
									<li class=""><a class="bt" href="javascript:setCateList('100000244', '12565', 'N');"><b class="t">기타</b></a></li>
								 </ul> 
				</li>

				<li class="open open_cat" id="tab_category_12565" style="width:200px;display:none;">
					<ul class="sm">
						<li class=""><a class="bt" href="javascript:setCateList('12673', '12565', 'N');"><b class="t">냥이사료</b></a></li>
						<li class=""><a class="bt" href="javascript:setCateList('12675', '12565', 'N');"><b class="t">간식</b></a></li>
					</ul>
					<ul class="sm_2">
						<li class=""><a class="bt" href="javascript:setCateList('12685', '12565', 'N');"><b class="t">패션/의류</b></a></li>
						<li class=""><a class="bt" href="javascript:setCateList('100000244', '12565', 'N');"><b class="t">기타</b></a></li>
					 </ul> 
	</li>
		</nav>
	
		</div>
	
</nav><!-- e : LNB 영역 -->
				<!-- s : 검색 영역 -->
<!-- e : 검색 영역 -->
<!--❤️사이드바 끝-->
<!--❤️main-->
  <!--❤️main-->
  <main class="container lnb page my" id="container" style="margin-left:100px;margin-top:100px;">
	<div class="inr">
		<!-- 본문 -->
		<div class="contents" id="contents">
			<!-- PC 타이틀 모바일에서 제거  -->
			<div class="pc-tit">
				<h2>마이 찜리스트</h2>
			</div>
			<!-- // PC 타이틀 모바일에서 제거  -->
			<!-- tab -->
			<section class="sect petTabContent mode_fixed leftTab hmode_auto myZzim">

				<!-- tab content -->
				<div class="uiTab_content">
					<ul data-cont-tag="shop">
						<li class="active" id="tab_shop">
							<div class="noneBoxPoint" id="noneBoxShopPoint" style="display:none">
								<section class="no_data i7" style="height:calc(100vh - 110px);">
									<div class="inr">
										<div class="msg">
											찜리스트에 추가한 상품이 없습니다.<br>
											반려동물을 위한 상품을  구경해보세요.</div>
										<div class="uimoreview">
											<a href="/shop/home" class="bt more" data-url="/shop/home">스토어 바로가기</a> <!-- APET-1250 210728 kjh02  -->
										</div>
									</div>
								</section>
							</div>
							
							<div class="mybrand-list t4" id="brandPage" data-page="1" style="display:none;">
								<div class="brand">
									</div>
								<!-- PC 일경우 10개 이상, APP,MO일경우 6개 이상 일때 더보기 노출 -->
								</div>
							
							<div class="thumbnail-list" id="boxShopPoint" data-page="1" >
								<ul>
									<li>
										<div class="gdset packg">
											<div class="thum">
												<a href="/goods/indexGoodsDetail?goodsId=GI251062497" data-content='GI251062497' data-url="/goods/indexGoodsDetail?goodsId=GI251062497" class="pic">
													<img class="img" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/goods/GI251062497/be95ce69-4e81-45f1-9bda-d938a410ac29.jpg?type=f&w=356&h=356&quality=100&align=4" onerror="this.src='/_images/mall/common/default_image.jpg'" alt="이미지">
													</a>
												<span class="bt zzim on" 
													data-yn="N"
													data-goods-id="GI251062497"
													data-content='GI251062497'
													data-delyn='Y'
													data-url="/goods/insertWish?goodsId=GI251062497"
													onclick="myInsertWish('GI251062497');">즐겨찾기</span>
											</div>
											<div class="boxs">
												<div class="tit">
													<a href="/goods/indexGoodsDetail?goodsId=GI251062497" data-content='GI251062497' data-url="/goods/indexGoodsDetail?goodsId=GI251062497" class="lk">[어펫단독] 사니캣 옥수수 모래 6L</a>
												</div>
												<a href="/goods/indexGoodsDetail?goodsId=GI251062497" data-content='GI251062497' data-url="/goods/indexGoodsDetail?goodsId=GI251062497" class="inf">
													<span class="prc"><em class="p">14,900</em><i class="w">원</i></span>
												</a>
												</div>
										</div>
										</li>
										<li>
										<div class="gdset packg">
											<div class="thum">
												<a href="/goods/indexGoodsDetail?goodsId=GP251060222" data-content='GP251060222' data-url="/goods/indexGoodsDetail?goodsId=GP251060222" class="pic">
													<img class="img" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/goods/GP251060222/7b76ffcb-0a3b-4c1a-acc0-413635e97f85.jpg?type=f&w=356&h=356&quality=100&align=4" onerror="this.src='/_images/mall/common/default_image.jpg'" alt="이미지">
													</a>
												<span class="bt zzim on" 
													data-yn="N"
													data-goods-id="GP251060222"
													data-content='GP251060222'
													data-delyn='Y'
													data-url="/goods/insertWish?goodsId=GP251060222"
													onclick="myInsertWish('GP251060222');">즐겨찾기</span>
											</div>
											<div class="boxs">
												<div class="tit">
													<a href="/goods/indexGoodsDetail?goodsId=GP251060222" data-content='GP251060222' data-url="/goods/indexGoodsDetail?goodsId=GP251060222" class="lk">냥심멍심 강아지간식 리얼져키 6종 모음</a>
												</div>
												<a href="/goods/indexGoodsDetail?goodsId=GP251060222" data-content='GP251060222' data-url="/goods/indexGoodsDetail?goodsId=GP251060222" class="inf">
													<span class="prc"><em class="p">5,900</em><i class="w">원</i></span>
												</a>
												</div>
										</div>





</li>
</ul>
								</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- // tab -->
		</div>
	</div>
</main>
<!-- // tab content -->	
<!--❤️main끝-->			
	

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