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

<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/common/css/headerFooter.css">
<link rel="stylesheet" type="text/css" href="http://localhost/mpnp/3rdDesign/_css/main.style.pc.css">
<link rel="stylesheet" type="text/css" href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">

<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/my.css">
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/star.css">
<script type="text/javascript" src="/_script/crypto.js"></script>
<script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810" userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D" webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>

<script type="text/javascript"  src="http://localhost/mpnp/3rdDesign/_script/common.js?modifiedDate=20221013" ></script>
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


<!--라이브 앱과 연동을위한 JS -->
<script src="https://sgr.aboutpet.co.kr/web/runInit/v1.js"></script>
<script type="text/javascript">
	//검색API 클릭 이벤트(사용자 액션 로그 수집)
	function userActionLog(contId, action, url, targetUrl){	
		var mbrNo = "0";
		if (mbrNo != "0") {
			$.ajax({
				type: 'POST'
				, url : "/common/sendSearchEngineEvent"
				, dataType: 'json'
				, data : {
					"logGb" : "ACTION"
					, "mbr_no" : mbrNo
					, "section" : "shop" 
					, "content_id" : contId
					, "action" : action
					, "url" : (url != null && url) != '' ? url : document.location.href
					, "targetUrl" : (targetUrl != null && targetUrl != '') ? targetUrl : document.location.href
					, "litd" : ""
					, "lttd" : ""
					, "prclAddr" : ""
					, "roadAddr" : ""
					, "postNoNew" : ""
					, "timestamp" : ""
				}
			});
		}
	}
</script>




<style>
	/* .has_top_banner nav.lnb>.inr{top:182px} */
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

<!--❤️사이드바-->


<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>
<!-- e : gnb 영역 -->			
					<!-- s : LNB 영역 -->

<nav class="lnb shop" id="lnb" >
	<div class="inr" style="width:220px;">
		<nav class="menushop"style="margin-right:20px;">
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
	<script>
		$(document).ready(function(){
			//다 입력된 경우 변경 버튼 활성화
			$(".inputPswd").on('keyup', function(e) {
				if($("#newPswd_error").html() != "" ||  $("#newPswdCheck_error").html() != ""){
					$("#newPswd_error").html("")
					$("#newPswdCheck_error").html("");
				}
				
				if($("#newPswd").val() != "" && $("#newPswdCheck").val()  != ""){
					//버튼 활성화
					$("#updateBtn").attr("disabled",false);
					$("#updateBtn").attr("class","btn lg a");
					
				}else{
					//버튼 비활성화
					$("#updateBtn").attr("disabled",true);
					$("#updateBtn").attr("class","btn lg a gray");
				}
			});
	
			$(document).on("blur", "#newPswd", function(){
				fncPswdCheck();
			});
			
			$(document).on("blur", "#newPswdCheck", function(){
				if($("#newPswdCheck").val() != $("#newPswd").val()){
					$("#newPswdCheck_error").html("동일한 비밀번호를 입력해주세요.");
					//$("#newPswdCheck").focus();
				}else{
					$("#newPswdCheck_error").html("");
				}
			});
		});
		
		// 알럿창 띄우기
		var popAlert = function(msg, callback){
			ui.toast('<p>'+msg+'</p>',{
				ccb:function(){
					if(callback.length > 0){
						var returnUrl = "";
						if(returnUrl.indexOf("indexManageDetail") > -1){
							jQuery("<form action=\"/mypage/info/indexManageDetail\" method=\"post\"><input type=\"hidden\" name=\"checkCode\" value=\"f844fd4a067f5a543f9bb3adf7236d94\" /><input type=\"hidden\" name=\"type\" value=\"MNG\" /></form>").appendTo('body').submit();
							return;
						}
						
						if("PC"!= 'PC' ){
							//location.href="/indexMyInfo?returnUrl=/mypage/indexMyPage";
							location.href="/indexMyInfo";
							return;
						}
						
						location.href="/mypage/indexMyPage/";
					}
				},
				ybt:'확인'	
			});
		}
		
		//비밀번호 변경
		function fncUpdatePswd(){
			if(fncPswdCheck()){
				var newPswd = $("#newPswd").val();
				var rsa = new RSAKey();
				rsa.setPublic($("#RSAModulus").val(), $("#RSAExponent").val());
				var newPswd_enc = rsa.encrypt(newPswd);
				$("#newPswd").val(newPswd_enc);
				
				var options = {
					url: "/mypage/info/updateMemberPassword",
					data : $("#pswdForm").serialize(),
					done : function(data){
						if(data.resultCode == 'F'){
							popAlert('오류가 발생되었습니다. 관리자에게 문의하십시요.');
							return;
						}
						else if(data.resultCode == 'duplicated'){
							ui.toast('이전에 사용된 비밀번호는 사용하실 수 없어요.'); // 체크하는게 맞는지 노확실
						}else{
							popAlert('비밀번호가 변경되었어요.', 'callback');
						}
					}
				}
				ajax.call(options);
				
				$("#newPswd").val(newPswd);
			}else{
				if($("#newPswd_error").html() != ''){
					$("#newPswd").focus();
				}else{
					$("#newPswdCheck").focus();
				}
			}
		}
		
		//유효성 체크
		function fncPswdCheck(){
			$("#newPswd_error").html("");
			$("#newPswdCheck_error").html("");
			
			if($("#newPswd").val() == ""){
				$("#newPswd_error").html("비밀번호를 입력해주세요.");
				//$("#newPswd").focus();
				return false;
			}
			 
			if($("#newPswd").val().search(/\s/) !== -1 || $("#newPswd").val().search(/[|]/gi) !== -1){
				$("#newPswd_error").html("공백이나 제한된 특수문자는 사용하실 수 없어요");
				//$("#newPswd").focus();
				return false;
			}
			
			var pswdCheck = pswdValid.checkPswd($("#newPswd").val());
			if(pswdCheck == "falseLength"){
				$("#newPswd_error").html("8~15자 이내로 입력해주세요.");
				//$("#newPswd").focus();
				return false;
			}
			
			if(pswdCheck == "falseCheck"){
				$("#newPswd_error").html("영문, 숫자, 특수문자를 각각 1자리 이상 포함해주세요");
				//$("#newPswd").focus();
				return false;
			}
			
			if(!pswdValid.checkPswdMatch($("#newPswd").val())){
				$("#newPswd_error").html("3자리 연속 반복된 문자나 숫자는 입력할 수 없어요");
				//$("#newPswd").focus();
				return false;
			}
			
			if(!pswdValid.checkIncludeIdValue($("#newPswd").val(),"jsh4135@naver.com") ) {
				$("#newPswd_error").html("아이디와 4자 이상 동일할 수 없어요.");
				//$("#newPswd").focus();
				return false;
			}
	
			/* if(!pswdValid.checkIncludeIdValue($("#newPswd").val(), "")){
				$("#newPswd_error").html("생년월일과 4자 이상 동일할 수 없습니다.");
				//$("#newPswd").focus();
				return false;
			} */
	
			if($("#newPswdCheck").val() != $("#newPswd").val()){
				$("#newPswdCheck_error").html("동일한 비밀번호를 입력해주세요.");
				//$("#newPswdCheck").focus();
				return false;
			}
			
			return true;
		}
	</script>
	
	
	
	<style>
.container{
	margin-top:-5px;
	margin-bottom:170px;
}


	
	</style>
	
			
		 
				<!--❤️nav-->
	
	
	
			<!--❤️main-->
			<!-- 바디 - 여기위로 템플릿 -->
			<main class="container lnb page my" id="container" style="width:80%;margin-top:100px !important;margin-left:230px !important;">
				<input type="hidden" id="returnUrl" value="https://aboutpet.co.kr/mypage/order/indexPurchaseCompletion">
				<div class="inr" style="min-height: 429px;">
					<!-- 본문 -->
					<div class="contents" id="contents" style="min-height: 550.8px;">
						<div class="pc-tit">
							<h2 id="asd"> 후기 작성</h2>
						</div>
						<!-- 리워드 있는 경우-->
							<!-- 일반후기, 펫 미등록 사용자 -->
										
										<form id="commentForm" data-goods-estm-tp="NOR" data-goods-estm-no="">
							<div class="uirevset-my">
								<div class="set gods line-n">
									<div class="cdt">
										<div class="tops">
											<div class="pic"><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/goods/GS251062051/PI000001260_1.jpg" alt="상품" class="img"></div>
											<div class="name">
												<div class="tit k0423">[2+1] 펫모닝 바베큐 PMD-159 (랜덤발송)</div>
												<div class="stt k0423"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="flex-box">
									<!-- 리워드 있는 경우-->
										<!-- 일반후기, 펫 미등록 사용자 -->
													
														
													<div class="set star">
										<div class="hdt">
											<span class="tit">구매하신 상품이 만족스러운가요?</span>
										</div>
										<div class="cdt">
	
											<div class="uiStar">
												<div class="inner-content">
													<input type="radio" name="starRating" value="1" id="star1">
													<label for="star1"><i class="fa fa-star"></i></label>
													<input type="radio" name="starRating" value="2" id="star2">
													<label for="star2"><i class="fa fa-star"></i></label>
													<input type="radio" name="starRating" value="3" id="star3">
													<label for="star3"><i class="fa fa-star"></i></label>
													<input type="radio" name="starRating" value="4"  id="star4">
													<label for="star4"><i class="fa fa-star"></i></label>
													<input type="radio" name="starRating" value="5" id="star5">
													<label for="star5"><i class="fa fa-star"></i></label>
												</div>
											</div>
											<div class="msg">별을 선택하여 만족도를 알려주세요.</div>
										</div>

										
									</div>
								
								</div>
								<div class="set memo">
										<div class="hdt">
											<span class="tit">후기 내용 입력</span>
										</div>
										<div class="textarea">
											<textarea name="commentContArea" placeholder="다른 고객님들에게 도움이 되는 후기를 입력해주세요. 후기 내용은 최소 10자 이상 입력해주세요."></textarea>
										</div>
									</div>
									<div class="set file">
										<div class="flex-box">
											<div class="btnSet">
												<button type="button" class="btn lg btnAddPic" id="imgAddBtn-comment" onclick="$('#imgAdd-comment').trigger('click')">사진 첨부하기</button>
												<input type="file" id="imgAdd-comment" onclick="writeFnc.imageUpload(); return false;" style="display: none;" accept="image/*">
											</div>
											<div class="addfile">
												<ul class="photo" id="commentImgArea">
													<li id="commentImgArea_1"><input type="hidden" name="imgPath" value="/mnt/nas/upload/20221031/9c887117-b1f7-4988-b3c6-ecb6a065fdf3.jpg"><span class="pic"><img class="img" src="common/images/button-kategorie-third-dog-petfood-dry3x.jpg" alt="사진"><button type="button" class="bt del" name="delImg"><span class="material-symbols-outlined">
														cancel
														</span></button></span></li></ul>
											</div>
										</div>
										<!--APDO-174 모바일에서는 후기는 모바일앱에서 작성할 수 있습니다.를 제외하고 mweb / pc와 동일하게 맞춤   -->
										<div class="gmsgListWrap">
											<p class="gmsg info-t1" id="gsmgInfoRemoveInApp">로그 후기는 모바일앱에서 작성할 수 있습니다. </p> <!-- APET-1250 210728 kjh02  -->
											<p class="gmsg info-t1">20MB 미만의 JPG, PNG 파일만 등록 가능합니다.</p>
										</div>
									</div>
								<div class="set btts">
									<div class="btnSet">
										<button type="button" class="btn lg d" name="writeCancel">취소</button>
										<button type="button" class="btn lg a disabled" name="okbtn" onclick="writeFnc.writeComment(); return false;" style="pointer-events:all;">등록</button>
											</div>
								</div>
								
								
			
								<div class="btnSet pc pc-bottom-s1 mo-margin-s1">
									<a href="javascript:;" class="btn lg d onWeb_if" name="writeCancel">취소</a>
									<a href="javascript:;" class="btn lg a disabled" name="okbtn" onclick="writeFnc.writeComment(); return false;" style="pointer-events:all;">등록</a>
										</div>
						
							</div>
						</form>
					</div>
				</div>
			</main>
			
			
		
	
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