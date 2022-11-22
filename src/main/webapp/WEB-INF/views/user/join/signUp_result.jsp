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
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/find_info.css">
<script type="text/javascript" src="http://localhost/mpnp/3rdDesign//_script/crypto.js"></script>
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


<!--❤️사이드바 끝-->
<!--❤️main-->
 	<!-- s : 본문영역 -->			
	 <body class="body">
		<div class="wrap" id="wrap">
	
	
			<!-- 바디 - 여기위로 템플릿 -->
			<main class="container page login srch" id="container" style="margin-top:250px !important;margin-bottom:-100px;">
	
				<div class="inr">
					<!-- 본문 -->
					<div class="contents" id="contents">
						<!-- PC 타이틀 모바일에서 제거  -->
						<div class="pc-tit">
							<h2>가입완료</h2>
						</div>
						<!-- // PC 타이틀 모바일에서 제거  -->
						<div class="fake-pop">
							<div class="result">
								<span class="blue">${param.nick}</span>님<br> 명품냥품에 가입하신 것을 환영합니다!</div>
							<div class="end-box mt30">
									<dl>
										<dt>아이디</dt>
										<dd>${param.id}</dd>
									</dl>
									<dl>
										<dt>회원등급</dt>
										<dd>${param.gradeid}</dd>
									</dl>
								</div>
							<div class="pbt mt30">
								<div class="btnSet">
<!-- 									<a href="/indexLogin" class="btn lg a" data-content="" data-url="/indexLogin" >로그인하기</a> -->
									<a href="login_form.do" class="btn lg a" >로그인하기</a>
								</div>
							</div>
							<!-- <a class="lnk-pw center" href="/login/indexFindPswd" data-content="" data-url="/login/indexFindPswd" >비밀번호가 생각나지 않으세요?</a> -->
						</div>
					</div>
	
				</div>
			</main>
	
			<div class="layers">
				<!-- 레이어팝업 넣을 자리 -->
			</div>
		</div>
	</body><!-- location 영역 포함  -->					
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