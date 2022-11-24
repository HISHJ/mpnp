<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script type="text/javascript"    src="http://localhost/mpnp/3rdDesign/_script/ui.js"></script>
<script type="text/javascript"    src="http://localhost/mpnp/3rdDesign/_script/ui_shop.js"></script>
<script type="text/javascript"    src="http://localhost/mpnp/3rdDesign/_script/deviceChk.js"></script>   <!-- // APP용 Device, Device OS, 위도, 경도 추가 -->

  <!--google icons-->
   <link rel="stylesheet"
   href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
   <!--google fonts-->
   <link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
   rel="stylesheet">
   <!--버튼클릭시 카테고리 변경  -->
<!-- 		<script>
	    $(function(){
			 $(".bt_dog").click(function(){
				$(".bt_cat").removeClass("active"); 
				$(".quickCat").removeClass("active")
			 $(this).addClass("active")
			 $(".open_dog").css('display','block');
			 $(".open_cat").css('display','none');
			 $(".quickDog").addClass("active");
			
			 })//click
			
			 $(".bt_cat").click(function(){
			 $(".bt_dog").removeClass("active"); 
			 $(".quickDog").removeClass("active")
			 $(this).addClass("active")
			 $(".open_cat").css('display','block');
			 $(".open_dog").css('display','none');
			 $(".quickCat").addClass("active")
		
			 })//click
			
		
	
		
		</script> -->



<script>
	var len = "3";
	var booleanLoop = false;
	if(len > 1){
		booleanLoop = true;
	}
	
	var popSwiper = new Swiper(".swiPopCont .swiper-container", {
	    slidesPerView: 1,
	    slidesPerGroup: 1,
	    freeMode: false,
	    //loop: true,
	    loop: booleanLoop,
	    watchOverflow: true,
	    /* APET-1151 2021.07.20 추가함 start */
	    autoplay: {
		   delay: 3000,
		   disableOnInteraction: false, // touch or click 시 autoplay 멈춤현상 수정 2021.07.28 추가함
		 },
	    /* APET-1151 2021.07.20 추가함 end */
	    pagination: {
	      el: ".swiPopCont .swiper-pagination",
	      clickable: true,
	    },
	    navigation: {
	      nextEl: ".swiPopCont .swiper-button-next",
	      prevEl: ".swiPopCont .swiper-button-prev",
	    },
	});

</script>
<style>
	/* .has_top_banner nav.lnb>.inr{top:182px} */
</style>

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
			
						<li id="liTag_10" class="active"><a href="/shop/home/" class="bt">스토어</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_00" class=""><a href="/mypage/indexMyPage/" class="bt">MY</a></li>
					</ul>
				</nav>
			</div>
			<div class="cdt" >
						<div class="schs">
						<form action="search_prd_list.do" method="get">
								<div class="form ">
									<div class="input del kwd">
									<input id="srchWord" name="productname"  type="search" maxlength="50" value="" autocomplete="off" placeholder="검색어를 입력해주세요." >
									</div>
									<button type="submit" class="btnSch" >검색</button>
								</div>
									</form>
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

		
		
		<script >
		
		
		
		//중분류 이동
			function setCateList(subid){
				location.href="prdList.do?subid="+subid
			}
		
		//검색
			
	function search(){
		location.href="search_prd_list.do"
	}
		
			/* 카테고리 	버튼 클릭시 상품 변경 */
			
		 	 	 $(function(){
			    	$("button").on('click',function(){
			    			var mainid = $(this).val();  //버튼이 클릭 되었을 때 그 버튼의 value를 var kind로 가져와서	
			    			
			    			console.log(mainid)
			    			$.ajax({
			    				 url : 'index.do', // 이 주소로 
			    	              type : "get",
			    	              data : {"mainid" : mainid}, 
			    	              success : function(data){ 
			    	                 
			    	                 $('body').html(data); 
			    	             	if(mainid=="m0002"){
			    	            		
			    	           		 $(".bt_dog").removeClass("active"); 
			    	           		 $(".quickDog").removeClass("active")
			    	           		 $(".bt_cat").addClass("active")
			    	           		 $(".open_cat").css('display','block');
			    	           		 $(".open_dog").css('display','none');
			    	           		 $(".quickCat").addClass("active")
			    	         
			    	           	}else if(mainid=="m0001"){
			    	           		$(".bt_cat").removeClass("active"); 
			    	           		$(".quickCat").removeClass("active")
			    	           	 $(".bt_dog").addClass("active")
			    	           	 $(".open_dog").css('display','block');
			    	           	 $(".open_cat").css('display','none');
			    	           	 $(".quickDog").addClass("active");
			    	
			    	           	}//end if
			    	              },
			    	              error : function(data){
			    	            	 alert('error');
			    	               
			    	              }//error
			    			})//ajax 
			    		});//click
			    });//ready 
			
					
					 
				
		
		
		</script>
		



<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>

<nav class="lnb shop" id="lnb">
	<div class="inr" style="width:220px;">
		<nav class="menushop">
			<h2 class="bt bt_store">스토어</h2>
			<div class="button_wrap">
			
			<button type="button" class="bt st bt_dog active" value="m0001">강아지</button>
		
	
			<button type="button" class="bt st  bt_cat" value="m0002">고양이</button>
	
		</div>
		<!-- 대분류 히든값  -->
		<input type="hidden" value="m0001"/>
		<input type="hidden" value="m0002"/>
		

				<li class="open open_dog" id="tab_category_12565" style="width:200px;">
								<ul class="sm">
									<li class=""><a class="bt" href="javascript:setCateList('s0001');"><b class="t">강쥐사료</b></a></li>
									<li class=""><a class="bt" href="javascript:setCateList('s0002');"><b class="t">간식</b></a></li>
								</ul>
								<ul class="sm_2">
									<li class=""><a class="bt" href="javascript:setCateList('s0003');"><b class="t">패션/의류</b></a></li>
									<li class=""><a class="bt" href="javascript:setCateList('s0004');"><b class="t">기타</b></a></li>
								 </ul> 
				</li>

				<li class="open open_cat" id="tab_category_12565" style="width:200px;display:none;">
					<ul class="sm">
						<li class=""><a class="bt" href="javascript:setCateList('s0005');"><b class="t">냥이사료</b></a></li>
						<li class=""><a class="bt" href="javascript:setCateList('s0006');"><b class="t">간식</b></a></li>
					</ul>
					<ul class="sm_2">
						<li class=""><a class="bt" href="javascript:setCateList('s0007');"><b class="t">패션/의류</b></a></li>
						<li class=""><a class="bt" href="javascript:setCateList('s0008');"><b class="t">기타</b></a></li>
					 </ul> 
	</li>
		</nav>
		
		<nav class="menushop"style="margin-right:20px;margin-top:30px;">
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
		</div>
	</div>
</nav><!-- e : LNB 영역 -->
				<!-- s : 검색 영역 -->
<!-- e : 검색 영역 -->
<!--❤️사이드바 끝-->
<!-- ❤️main -->

<main class="container gnb lnb page shop hm main" id="container" style="margin-left:150px;margin-top:100px;">
	<div class="mnschbox hide_mo">
		<div class="inr">
		<!-- 
			<div class="shop-search input">
				<input id="srchShopWord" name="srchWord" readonly="readonly" type="search" value="" autocomplete="off" >
				<button type="button" class="btnSch" data-content="" data-url="/commonSearch">검색</button>
			</div>
		-->
		</div>
	</div>
	<div class="inr" style="min-height: 571.047px;">
		<!-- 본문 -->
		<div class="contents" id="contents" style="min-height: 653px;">
			<input type="hidden" id="dispClsfNo_" value="300000174">
			<div id="519" name="dispCorn_div" data-index="0"><section class="sect mn visul">
	<div class="mn_visul_sld" id="corner519">
		<div class="pgnav">
			<span class="pagination swiper-pagination-fraction"><span class="swiper-pagination-current">4</span> / <span class="swiper-pagination-total">20</span></span> <a href="javascript:void(0);" class="bt more" onclick="petShopMainResult.goBannerList('/event/shop/petshopEventList', '519');">+</a>
		</div>
		<div class="swiper-container slide swiper-container-initialized swiper-container-horizontal swiper-container-autoheight">
			<div class="sld-nav"><button type="button" class="bt prev" tabindex="0" role="button" aria-label="Previous slide">이전</button><button type="button" class="bt next" tabindex="0" role="button" aria-label="Next slide">다음</button></div>
			<ul class="swiper-wrapper list" style="transition-duration: 0ms; transform: translate3d(-23230px, 0px, 0px); height: 360px;"><li class="swiper-slide swiper-slide-duplicate" id="topbnr_3239" data-index="1" data-bannerid="3239" data-bannername="2022 할로윈 특별전" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="0">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/detail?eventNo=647', 519, 3239, 'topbnr0');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3238/5ea895b9-43bd-4935-b5fc-07c105685dd0.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="2022 할로윈 특별전">
							</a>
				</li><li class="swiper-slide swiper-slide-duplicate" id="topbnr_3147" data-index="2" data-bannerid="3147" data-bannername="10월 주말 카드 행사 배너(요일별)" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="1">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/detail?eventNo=600', 519, 3147, 'topbnr1');">
						<img class="img pc" src="common/images/645689e284c234817e68030c56cba0b2.png" alt="10월 주말 카드 행사 배너(요일별)">
							</a>
				</li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev" id="topbnr_3263" data-index="3" data-bannerid="3263" data-bannername="펫미업 메인배너" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="2">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/detail?eventNo=669', 519, 3263, 'topbnr2');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3263/28375da4-2721-44a9-89e8-e1ff44164286.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="펫미업 메인배너">
							</a>
				</li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" id="topbnr_3277" data-index="4" data-bannerid="3277" data-bannername="고꿈집 출연 특별 기획전💕 골라먹는 공공일스틱" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="3">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexSpecialExhibitionZone?exhbtNo=1035&amp;dispClsfNo=300000174', 519, 3277, 'topbnr3');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3276/31697755-3840-498e-a51a-4292132e684b.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="고꿈집 출연 특별 기획전💕 골라먹는 공공일스틱">
							</a>
				</li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" id="topbnr_3269" data-index="5" data-bannerid="3269" data-bannername="스웩마켓X네츄럴코어" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="4">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexSpecialExhibitionZone?exhbtNo=1032&amp;dispClsfNo=300000174', 519, 3269, 'topbnr4');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3268/ef043c2b-1e8a-4ee3-a27a-577a641e0639.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="스웩마켓X네츄럴코어">
							</a>
				</li><li class="swiper-slide swiper-slide-duplicate" id="topbnr_3241" data-index="6" data-bannerid="3241" data-bannername="모래모래쟁여두기" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="5">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexSpecialExhibitionZone?exhbtNo=1023&amp;dispClsfNo=300000174', 519, 3241, 'topbnr5');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3240/98657a72-b8be-409f-b3e6-f6adb060a673.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="모래모래쟁여두기">
							</a>
				</li>
				<li class="swiper-slide" id="topbnr_3239" data-index="1" data-bannerid="3239" data-bannername="2022 할로윈 특별전" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="0">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/detail?eventNo=647', 519, 3239, 'topbnr0');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3238/5ea895b9-43bd-4935-b5fc-07c105685dd0.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="2022 할로윈 특별전">
							</a>
				</li>
				
				<li class="swiper-slide" id="topbnr_3175" data-index="13" data-bannerid="3175" data-bannername="펫턴 입점 기념 할인전" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="12">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexExhibitionDetail?exhbtNo=1006&amp;dispClsfNo=300000173', 519, 3175, 'topbnr12');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3174/7f475843-5cfc-4aa8-9221-ea81fa9b9260.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="펫턴 입점 기념 할인전">
							</a>
				</li>
				<li class="swiper-slide" id="topbnr_3249" data-index="14" data-bannerid="3249" data-bannername="정수기 기획전" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="13">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexExhibitionDetail?exhbtNo=1025&amp;dispClsfNo=300000174', 519, 3249, 'topbnr13');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3249/8695f354-632e-4c43-94ec-e1273230e12d.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="정수기 기획전">
							</a>
				</li>
				<li class="swiper-slide" id="topbnr_3153" data-index="15" data-bannerid="3153" data-bannername="할로윈(젤리)" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="14">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexExhibitionDetail?exhbtNo=997&amp;dispClsfNo=300000174', 519, 3153, 'topbnr14');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3152/0eec9ae9-40eb-4218-a5e9-49d93dba7731.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="할로윈(젤리)">
							</a>
				</li>
				<li class="swiper-slide" id="topbnr_3197" data-index="16" data-bannerid="3197" data-bannername="에티펫 앵콜전 " data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="15">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexExhibitionDetail?exhbtNo=1011&amp;dispClsfNo=300000173', 519, 3197, 'topbnr15');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3196/f6ac706a-d84d-4975-a45d-00e3df5facfb.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="에티펫 앵콜전 ">
							</a>
				</li>
				<li class="swiper-slide" id="topbnr_3169" data-index="17" data-bannerid="3169" data-bannername="붕어빵굽는고양이" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="16">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexSpecialExhibitionZone?exhbtNo=994&amp;dispClsfNo=300000174', 519, 3169, 'topbnr16');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3168/82be7cef-5a0c-4c1b-89f9-2867f3150562.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="붕어빵굽는고양이">
							</a>
				</li>
				<li class="swiper-slide swiper-slide-duplicate" id="topbnr_3143" data-index="12" data-bannerid="3143" data-bannername="건강관리" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="11">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexExhibitionDetail?exhbtNo=996&amp;dispClsfNo=300000174', 519, 3143, 'topbnr11');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3143/9bd3efab-5e4d-4a3b-b0a7-9fe7776df1c5.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="건강관리">
							</a>
				</li><li class="swiper-slide swiper-slide-duplicate" id="topbnr_3175" data-index="13" data-bannerid="3175" data-bannername="펫턴 입점 기념 할인전" data-bannertype="샵 메인,특별기획전" data-swiper-slide-index="12">
					<a href="javascript:void(0);" class="box" onclick="callAmplitudeMainBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexExhibitionDetail?exhbtNo=1006&amp;dispClsfNo=300000173', 519, 3175, 'topbnr12');">
						<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3174/7f475843-5cfc-4aa8-9221-ea81fa9b9260.jpg?type=m&amp;w=1010&amp;h=360&amp;quality=90&amp;bgcolor=FFFFFF&amp;extopt=3" alt="펫턴 입점 기념 할인전">
							</a>
				</li></ul>
		<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
	</div>
</section>
<script>
var mn_visul_sld = new Array();
$(function() {
if($(".mn_visul_sld .swiper-container li").length <= 1) {
	$(".mn_visul_sld .sld-nav").hide();
	$(".mn_visul_sld .swiper-container").each(function(i,n){
		mn_visul_sld.push(new Swiper($(n), {
			observer: true,
			observeParents: true,
			watchOverflow:true,
			simulateTouch:false,
			autoHeight:true,
			spaceBetween: ui.isMo() ? 10 : 0,
			loop: false,										//2021.05.27추가
			slidesPerView:'auto',							//루프 모드에서 중복 슬라이드 허용 - APETQA-7026 210906 lju02 루프 사용시 index=0 에서 뒤로 버튼 클릭시 화면 반짝임 방지 위해 사용
			centeredSlides: ui.isMo() ? true : false,
			pagination: {
				el: '.mn_visul_sld .pagination',
				type: 'fraction',
			}
		}));
	})
}
else{
	$(".mn_visul_sld .swiper-container").each(function(i,n){
		mn_visul_sld.push(new Swiper($(n), {
			observer: true,
			observeParents: true,
			watchOverflow:true,
			simulateTouch:false,
			autoHeight:true,
			spaceBetween: ui.isMo() ? 10 : 0,
			loop: true,										//2021.05.27추가
			slidesPerView:'auto',							//루프 모드에서 중복 슬라이드 허용 - APETQA-7026 210906 lju02 루프 사용시 index=0 에서 뒤로 버튼 클릭시 화면 반짝임 방지 위해 사용
			centeredSlides: ui.isMo() ? true : false,
			autoplay: {										//자동롤링 - CSR-1948 211028 lju02
				delay: 5000,								//자동롤링 - CSR-1948 211028 lju02
				disableOnInteraction: false,
			},
			navigation: {
				nextEl: '.mn_visul_sld .sld-nav .bt.next',
				prevEl: '.mn_visul_sld .sld-nav .bt.prev',
			},
			pagination: {
				el: '.mn_visul_sld .pagination',
				type: 'fraction',
			}
		}));
	})
}
});
</script></div>
			<div id="1313" name="dispCorn_div" data-index="1">

<section class="sect mn gogos hide_mo">


<!-- 강아지 카테괴리 -->
<div id="quicknavContPc01" class="quickDog mn_gogos_sld shortcuts9 quicknav-cont-pc active" style="text-align: center;" >
<div class="swiper-container slide swiper-container-initialized swiper-container-horizontal" >
	<ul class="swiper-wrapper list" style="transform: translate3d(0px, 0px, 0px);"  >
	<li class="swiper-slide swiper-slide-active" id="shortcut_2362" data-bnrdscrt="사료" data-bnrtext="사료샘플" style="width: 76.5px; margin-right: 36px;">
		<a href="javascript:void(0);" class="box recent" onclick="callAmplitudeShortCut(this);petShopMainResult.goBanner('/shop/indexCategory?cateCdL=12565&amp;cateCdM=12673&amp;dispClsfNo=12697', '1313', '2362', 'shortcut' ,false)">
					<div class="gds">
						<img src="http://localhost/mpnp/3rdDesign/common/images/button-kategorie-third-dog-petfood-dry3x.jpg" alt="사료샘플" class="img">
						<!-- <img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/display/2362/5609de03-c91b-462a-bf66-3822e5e56b2f.jpg?type=f&amp;w=150&amp;h=150&amp;quality=90&amp;align=4" alt="사료샘플" class="img"> -->
					</div>
					<div class="tt">사료</div>
				</a>
			</li>
	
	<li class="swiper-slide" id="shortcut_2367" data-bnrdscrt="간식" data-bnrtext="간식" style="width: 76.5px; margin-right: 36px;">
		<a href="javascript:void(0);" class="box recent" onclick="callAmplitudeShortCut(this);petShopMainResult.goBanner('/shop/indexCategory?cateCdL=12565&amp;cateCdM=12673&amp;dispClsfNo=12686', '1313', '2367', 'shortcut' ,false)">
					<div class="gds">
						<img src="http://localhost/mpnp/3rdDesign/common/images/button-kategorie-third-dog-sanck-handmade3x.jpg" alt="건식" class="img">
					</div>
					<div class="tt">간식</div>
				</a>
			</li>

			<li class="swiper-slide" id="shortcut_2380" data-bnrdscrt="패션/의류" data-bnrtext="패션/의류">
				<a href="javascript:void(0);" class="box recent" onclick="callAmplitudeShortCut(this);petShopMainResult.goBanner('/shop/indexCategory?dispClsfNo=12685&amp;cateCdL=12565&amp;cateCdM=12685', '1313', '2380', 'shortcut' ,false)">
							<div class="gds">
								<img src="http://localhost/mpnp/3rdDesign/common/images/button-kategorie-third-dog-supplies-clothes3x.jpg" alt="패션/의류" class="img">
							</div>
							<div class="tt">패션/의류</div>
						</a>
					</li>
			<li class="swiper-slide" id="shortcut_2376" data-bnrdscrt="기타" data-bnrtext="기타">
				<a href="javascript:void(0);" class="box recent" onclick="callAmplitudeShortCut(this);petShopMainResult.goBanner('/shop/indexCategory?dispClsfNo=100000244&amp;cateCdL=12565&amp;cateCdM=100000244', '1313', '2376', 'shortcut' ,false)">
							<div class="gds">
								<img src="http://localhost/mpnp/3rdDesign/common/images/button-kategorie-third-dog-supplies-toy3x.jpg" alt="펫가전" class="img">
							</div>
							<div class="tt">기타</div>
						</a>
					</li>
	
	</ul>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
</div>

</div>
<!-- // 카테고리 1 콘텐츠 -->

<!--  고양이 카테고리 -->
<div id="quicknavContPc01 " class="quickCat mn_gogos_sld shortcuts9 quicknav-cont-pc " style="text-align: center;" >
	<div class="swiper-container slide swiper-container-initialized swiper-container-horizontal" >
		<ul class="swiper-wrapper list" style="transform: translate3d(0px, 0px, 0px);"  >
		<li class="swiper-slide swiper-slide-active" id="shortcut_2362" data-bnrdscrt="사료" data-bnrtext="사료샘플" style="width: 76.5px; margin-right: 36px;">
			<a href="javascript:void(0);" class="box recent" onclick="callAmplitudeShortCut(this);petShopMainResult.goBanner('/shop/indexCategory?cateCdL=12565&amp;cateCdM=12673&amp;dispClsfNo=12697', '1313', '2362', 'shortcut' ,false)">
						<div class="gds">
							<img src="http://localhost/mpnp/3rdDesign/common/images/button-kategorie-third-cat-petfood-dry3x.jpg" alt="사료샘플" class="img">
							<!-- <img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/display/2362/5609de03-c91b-462a-bf66-3822e5e56b2f.jpg?type=f&amp;w=150&amp;h=150&amp;quality=90&amp;align=4" alt="사료샘플" class="img"> -->
						</div>
						<div class="tt">사료</div>
					</a>
				</li>
		
		<li class="swiper-slide" id="shortcut_2367" data-bnrdscrt="간식" data-bnrtext="간식" style="width: 76.5px; margin-right: 36px;">
			<a href="javascript:void(0);" class="box recent" onclick="callAmplitudeShortCut(this);petShopMainResult.goBanner('/shop/indexCategory?cateCdL=12565&amp;cateCdM=12673&amp;dispClsfNo=12686', '1313', '2367', 'shortcut' ,false)">
						<div class="gds">
							<img src="http://localhost/mpnp/3rdDesign/common/images/button-kategorie-third-cat-sanck-pouch3x.jpg" alt="건식" class="img">
						</div>
						<div class="tt">간식</div>
					</a>
				</li>
	
				<li class="swiper-slide" id="shortcut_2380" data-bnrdscrt="패션/의류" data-bnrtext="패션/의류">
					<a href="javascript:void(0);" class="box recent" onclick="callAmplitudeShortCut(this);petShopMainResult.goBanner('/shop/indexCategory?dispClsfNo=12685&amp;cateCdL=12565&amp;cateCdM=12685', '1313', '2380', 'shortcut' ,false)">
								<div class="gds">
									<img src="http://localhost/mpnp/3rdDesign/common/images/button-kategorie-third-cat-supplies-scratcher3x.jpg" alt="패션/의류" class="img">
								</div>
								<div class="tt">패션/의류</div>
							</a>
						</li>
				<li class="swiper-slide" id="shortcut_2376" data-bnrdscrt="기타" data-bnrtext="기타">
					<a href="javascript:void(0);" class="box recent" onclick="callAmplitudeShortCut(this);petShopMainResult.goBanner('/shop/indexCategory?dispClsfNo=100000244&amp;cateCdL=12565&amp;cateCdM=100000244', '1313', '2376', 'shortcut' ,false)">
								<div class="gds">
									<img src="http://localhost/mpnp/3rdDesign/common/images/button-kategorie-third-cat-petfood-adult3x.jpg" alt="펫가전" class="img">
								</div>
								<div class="tt">기타</div>
							</a>
						</li>
		
		</ul>
	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	</div>
	
	</div>


</section>
<script>

// var gogo9Swiper = (function() {
//gogoSwiper
var gogoSwiper = (function() {
							var $swiperContainer = $('.mn_gogos_sld.shortcuts9');
							function init($this, i) {
								var $el = $this.find('.swiper-container'),
									navNext = $this.find('.bt.next'),
									navPrev = $this.find('.bt.prev');
								var $swiper = new Swiper($el, {
									observer: true,
									observeParents: true,
									watchOverflow:true,
									simulateTouch:false,
									freeMode: false,
									slidesPerView: 8,
									slidesPerGroup:1,
									spaceBetween:36,
									navigation: {
										nextEl: navNext,
										prevEl: navPrev,
									},
									breakpoints: {
										1024: {
											spaceBetween:13,
											slidesPerView: 4,
											//slidesPerView: "auto",
											slidesPerGroup:1,
											freeMode: true,
											simulateTouch:true,
										}
									},
								});
							}
							$(document).ready(function() {
								if ($swiperContainer.length) {
									console.log('$swiperContainer.length: ' + $swiperContainer.length);
									$swiperContainer.each(function(i, Slider) {
										init($(Slider), i);
										console.log('swiper init complete (' + i + ')');
									})
								}
							});
						})();
// 더보기 버튼 생성 메서드
// id : 퀵메뉴 목록 ID
// pos : 더보기 버튼 위치 (1: 8번째 위치, 2: 마지막 위치)

 </script> 
</div>
			<div id="1204" name="dispCorn_div" data-index="2"><!-- AiTEMS -->
<input type="hidden" id="dispCornNo_aitems" value="1204">



<script>

	// 추천상품 새로고침
	function aitemsRefresh() {
		var aitemsGoodsIdsArry = new Array();
		var targetId = "#corner1204";

		$(targetId + " .inner .gd-item").each(function(index, item){
			aitemsGoodsIdsArry.push($(item).data("goodsid"));
		});
		var excptGoodsIds = aitemsGoodsIdsArry.join(',');
		var options = {
			url : "/shop/getAitems"
			, type : "POST"
			, dataType : "html"
			, data : {
				excptGoodsIds : excptGoodsIds,
				dispCornNo : $("#dispCornNo_aitems").val()
			}
			, done :function(html){
				if(html != ""){
					$(targetId).html('');
					$(targetId).html(html);

					// useMainCache 값 true면 세션스토리지 사용함. 세션스토리지 저장. (공통코드 사용자정의1값 != 0)
					if (useMainCache) {
						var cornerId = "#"+'1204';
						var cornerHtml = $(cornerId).html();
						window.sessionStorage.setItem('bfMainDom'+'1204', cornerHtml);
					}
				}
			}
		};
		ajax.call(options);
	}
</script>
</div>
			<div id="1257" name="dispCorn_div" data-index="3"><script type="text/javascript">
	var petshopOnlyApetGoodsArrStr = 'GI251053225,GI251053220,GS251054024,GI251051291,GI251055511,GI251051980,GO251066182,GI251037936,GI251053226,GI251053228,PI000000862,GI251055509,GI251048451,GI251051701,GS251029598,GI251050011,GI251037935,GO251066183,GI251053218,GI251036975,GI251055510,GI251053227,GS251055385,GI251053314,GP251035501,GI251051979,PI000001311,GI251037937,GI251053217,GI251053224,GI251053222,GI251053223,GS251054025,GI251053221,PI000000863,GP251047781,GI251057453,GI251036974,GI251051703';
</script>
<!-- OnlyApet -->
<!-- NaverAitems와 class 공유함 -->
<input type="hidden" id="dispCornNo_onlyApet" value="1257">
<input type="hidden" id="dispCornNm_onlyApet" value="오직 어펫에서만!">
<input type="hidden" id="dispClsfCornNo_onlyApet" value="1342">

	<section class="sect mn">
		<h3>
			<span class="txt">오직 <span style="color:var(--colors-main03)">멍품냥품</span>에서만!</span>
			<button class="btn-more" ><a href="mainList.do?mainid=">전체보기</a></button>
		</h3>
			<div id="corner1257" class="wrap-gd-unit gd-sd gd-col-4 is-cart">
			<div class="gd-unit swiper swiper-container-initialized swiper-container-horizontal swiper-container-multirow">
<div class="inner swiper-wrapper" style="width: 5200px; transform: translate3d(0px, 0px, 0px);">

<c:forEach var="data" items="${prdList }">

	<div class="gd-item amplitudeMainData swiper-slide active" data-idx="0" data-goodsid="GI251053225" data-displayid="1257" data-displayname="오직 어펫에서만!" data-productid="GI251053225" data-productname="그르르 캣크다스 참치맛 200g" data-brandid="58" data-brandname="그르르" data-categorypath="고양이 > 간식 > 간식파우치" data-price="9000" data-discountprice="4000" data-swiper-column="0" data-swiper-row="0" style="order: 0; margin-right: 30px;">
		<!-- NOTE: 랭킹 상품 그룹인 경우 'rank-label' 로 순위 표기 -->
		
				<a class="gd-link" href="prddetail.do?productid=${data.productid}">
						<div class="gd-thumb">
			<img class="thumb-img" src="http://localhost/mpnp/images/${data.thimg }?type=f&amp;w=288&amp;h=288&amp;quality=90&amp;align=4"onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'">
								<div class="gd-flag">
									</div>
								<button class="btn-favorite " data-content="GI251053225" data-url="/goods/insertWish?goodsId=GI251053225" data-disp-clsf-no="300000174" data-action="interest" data-yn="N" data-goods-id="GI251053225" data-target="goods">찜하기</button>
								<button class="btn-cart" data-goodsid="GI251053225" data-itemno="416024" data-reservationtype="" data-reservationstrtdtm="" data-ordmkiyn="" data-minordqty="0" data-goodscstrttpcd="ITEM">장바구니 담기</button>
								</div>
						<div class="gd-info">
								<div class="gd-top">
										<div class="gd-flag">
											</div>
										<button class="btn-cart" data-goodsid="GI251053225" data-itemno="416024" data-reservationtype="" data-reservationstrtdtm="" data-ordmkiyn="" data-minordqty="0" data-goodscstrttpcd="ITEM">장바구니 담기</button>
										</div>
								<div class="gd-body">
										<span class="tit">${data.productname }</span>
										<div class="wrap-price">
						<span class="price"><em><fmt:formatNumber value="${data.price }" pattern="#,###"/></em>원</span>
										</div>
										</div>
						 	<div class="gd-bottom">
										 <div class="rate">

					<span class="star">${data.starScoreAvg }</span>
												<span class="review">후기 ${data.reviewcnt }</span>
												</div>  
										<div class="gd-flag">
											</div> 
								</div>
						</div>
				</a>
		</div>
</c:forEach>	
	
		<div class="gd-item swiper-slide" data-swiper-column="19" data-swiper-row="1" style="-webkit-box-ordinal-group: 39; order: 39; margin-top: 30px; margin-right: 30px;">
		</div>
				</div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
<div class="sld-navigation hide_mo">
<button type="button" class="sld-nav prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전</button>
<button type="button" class="sld-nav next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">다음</button>
</div>
<script type="text/javascript">
$(function() {
var slidesPerColumn = 1, slidesPerGroup = 4;

slidesPerColumn = Number("2");
slidesPerGroup = Number("4");

if (ui.prdSwiper.chkInstance('#' + 'corner1257')) {
ui.prdSwiper.update('#' + 'corner1257');
} else {
ui.prdSwiper.init('#' + 'corner1257', {
	// swiper callback: 초기화 완료
	icb: function() {
		console.log('swiper init! : (#corner1257)');
	},
}, {
	freeMode: ui.isMo() ? true : false,
	slidesPerView: 'auto',
	slidesPerGroup: ui.isMo() ? 1 : slidesPerGroup,
	spaceBetween: ui.isMo() ? 15 : 30,
	slidesPerColumn: slidesPerColumn
});
}// 스크립트 로드 타이밍 이슈 때문에 3초 걸어둠


// 뒤로가기 포커싱 처리
if (petShopMainResult.focus.indexOf('OnlyApet') > -1) {
		let idx = petShopMainResult.focus.replace('OnlyApet', '');
		if(idx != 'undefined') {
				try {
						const cornerId = 'corner1257';
						idx = Number(idx);
						const prdFocus = setInterval(function() {
								if ($('#' + cornerId).length > 0) {
										window.setTimeout(function() {
												const tGap = 200; // 포커스 이동시 상단 여백
												let tabIdx;             // 타임딜, 베스트랭킹용 탭 버튼
												let $focusEl;         // 포커싱 상품 지정용
												let swiperInstance = ui.prdSwiper.chkInstance('#' + cornerId) ? document.querySelector('#' + cornerId + ' .swiper').swiper : null;
												$focusEl = $('#' + cornerId).find('.gd-unit .gd-item').eq(idx);
												// 타임딜
												if ($('#' + cornerId).hasClass('gd-timedeal') && (petShopMainResult.timeDeal == 'NOW' || petShopMainResult.timeDeal == 'SOON')) {
														tabIdx = petShopMainResult.timeDeal == 'NOW' ? 1 : 2;
														$('#' + cornerId).find('.wrap-gd-tab li:nth-child(' + tabIdx + ') .btn-timedeal').trigger('click');
												}
												// 베스트랭킹
												if ($('#' + cornerId).hasClass('gd-rank') && petShopMainResult.bestCate != 'undefined') {
														const bestCateId = petShopMainResult.bestCate;
														tabIdx = $('.wrap-rank-category[data-target=#' + cornerId + ']').find('.gd-rank-cate .swiper-slide[data-dispclsfno=' + bestCateId + ']').index();
														swiperInstance = ui.prdSwiper.chkInstance('#' + cornerId) ? document.querySelector('#' + cornerId + ' .swiper').swiper : null;
														$focusEl = $('#' + cornerId).find('.wrap-gd-rank > .inner > .swiper-slide:nth-child(' + (tabIdx + 1) + ') .gd-unit .gd-item').eq(tabIdx);
												}
												// 스와이퍼 슬라이드 및 스크롤 이동
												if (swiperInstance != null) swiperInstance.slideTo(Math.floor(idx / slidesPerColumn));
												window.scrollTo(0, $focusEl.offset().top - tGap);
												petShopMainResult.focus = "";
										}, 300);
								}
								clearInterval(prdFocus);
						}, 300);
				} catch(e) {}
		}
}
});
</script></div>
	</section>
		
</div>
			<div id="538" name="dispCorn_div" data-index="4"><!-- 배너 -->
<section class="sect mn bannr" id="corner538">
	<div class="uibanners">
		<div class="banner_slide banner01">
			<div class="swiper-container slide swiper-container-initialized swiper-container-horizontal">
				<ul class="swiper-wrapper list" style="transition-duration: 0ms; transform: translate3d(-4040px, 0px, 0px);"><li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="9" style="width: 1010px;">
							<a href="javascript:void(0);" class="box" onclick="callAmplitudeMidBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexSpecialExhibitionZone?exhbtNo=330&amp;dispClsfNo=300000174', 538, 479, 'adbnr9');" data-maintype="스토어" data-bannerindex="538" data-index="10" data-bannerid="479" data-bannername="케어 24 상담 띠배너" data-bannertype="띠 배너">
							<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/479/dbee5b48-7351-4add-a8c3-d2a409ee8788.jpg?type=m&amp;w=1010&amp;h=80&amp;quality=100&amp;bgcolor=FFFFFF&amp;extopt=3" alt="케어 24 상담 띠배너">
								</a>
						</li>
					<li class="swiper-slide" data-swiper-slide-index="0" style="width: 1010px;">
							<a href="javascript:void(0);" class="box" onclick="callAmplitudeMidBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/detail?eventNo=669', 538, 3261, 'adbnr0');" data-maintype="스토어" data-bannerindex="538" data-index="1" data-bannerid="3261" data-bannername="펫미업 띠배너" data-bannertype="띠 배너">
							<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3260/cbda1ebd-32f4-42ce-8db3-10df934bad26.jpg?type=m&amp;w=1010&amp;h=80&amp;quality=100&amp;bgcolor=FFFFFF&amp;extopt=3" alt="펫미업 띠배너">
								</a>
						</li>
					<li class="swiper-slide" data-swiper-slide-index="1" style="width: 1010px;">
							<a href="javascript:void(0);" class="box" onclick="callAmplitudeMidBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/detail?eventNo=636', 538, 3191, 'adbnr1');" data-maintype="스토어" data-bannerindex="538" data-index="2" data-bannerid="3191" data-bannername="삼성화재X어바웃펫 띠배너" data-bannertype="띠 배너">
							<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3190/566eb93d-ab5f-483a-89db-42a8af3b73ee.jpg?type=m&amp;w=1010&amp;h=80&amp;quality=100&amp;bgcolor=FFFFFF&amp;extopt=3" alt="삼성화재X어바웃펫 띠배너">
								</a>
						</li>
					<li class="swiper-slide swiper-slide-prev" data-swiper-slide-index="2" style="width: 1010px;">
							<a href="javascript:void(0);" class="box" onclick="callAmplitudeMidBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/indexSpecialExhibitionZone?exhbtNo=1032&amp;dispClsfNo=300000174', 538, 3267, 'adbnr2');" data-maintype="스토어" data-bannerindex="538" data-index="3" data-bannerid="3267" data-bannername="스웩마켓X네츄럴코어" data-bannertype="띠 배너">
							<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3266/ef760cec-9ac4-4ace-8e70-55337e79de75.jpg?type=m&amp;w=1010&amp;h=80&amp;quality=100&amp;bgcolor=FFFFFF&amp;extopt=3" alt="스웩마켓X네츄럴코어">
								</a>
						</li>
					<li class="swiper-slide swiper-slide-active" data-swiper-slide-index="3" style="width: 1010px;">
							<a href="javascript:void(0);" class="box" onclick="callAmplitudeMidBnr(this);petShopMainResult.goBanner('https://aboutpet.co.kr/event/detail?eventNo=585', 538, 3059, 'adbnr3');" data-maintype="스토어" data-bannerindex="538" data-index="4" data-bannerid="3059" data-bannername="멍개소리야 이벤트 띠배너" data-bannertype="띠 배너">
							<img class="img pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/3058/2b9cdc86-9e3c-4d99-86db-1eb2b0eaa049.jpg?type=m&amp;w=1010&amp;h=80&amp;quality=100&amp;bgcolor=FFFFFF&amp;extopt=3" alt="멍개소리야 이벤트 띠배너">
								</a>
						</li>
				
				</ul>
				<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 3"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 4"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 5"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 6"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 7"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 8"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 9"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 10"></span></div>
				<div class="sld-nav"><button type="button" class="bt prev" tabindex="0" role="button" aria-label="Previous slide">이전</button><button type="button" class="bt next" tabindex="0" role="button" aria-label="Next slide">다음</button></div>
			<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
		</div>
	</div>
</section>
<script>
var num = $(".banner01").find("li").length;

if( num >= 2) {
$(".banner01").find(".swiper-pagination").show();
var banner01 = new Swiper (".banner_slide.banner01 .swiper-container", {
	observer: true,
	observeParents: true,
	watchOverflow:true,
	simulateTouch:false,
	freeMode: false,
	slidesPerView: 1,
	slidesPerGroup:1,
	// autoHeight:true,
	loop: true,
	autoplay: {
		delay: 5000,
		disableOnInteraction: false,
	},
	navigation: {
		nextEl:".sld-nav .bt.next",
		prevEl:".sld-nav .bt.prev",
	},
	pagination: {
		el: ".swiper-pagination",
		clickable: true,
	}
})
}
else {
$(".banner01").find(".sld-nav").hide();
$(".banner01").find(".swiper-pagination").hide();

}

</script></div>
			<div id="1022" name="dispCorn_div" data-index="5"><script type="text/javascript">
$(document).ready(function(){
newSwiperPc();
});

// pc 스와이퍼 설정
function newSwiperPc() {
return new Swiper('.new_product .swiper2line .swiper-container', {
			slidesPerView: 4,
			slidesPerColumn: 2,
			slidesPerGroup: 4,
			spaceBetween: 30,
			simulateTouch:false,
			normalizeSlideIndex:false,
			navigation: {
				nextEl: '.new_product .swiper2line .sld-nav .bt.next',
				prevEl: '.new_product .swiper2line .sld-nav .bt.prev',
			},
			breakpoints: {
				768: {
					slidesPerView: 4.34,
					slidesPerGroup: 4,
					spaceBetween: 10,
				},
		450: {// CSR-2411 220114 lju02
					slidesPerView: 2.05,
					slidesPerGroup: 2,
					spaceBetween: 10,
				}
			}
		});
}

function newGoodsMore(){
cornNewPage++
$("#mainNewGoodsList>.gdset").css("display", "block");
$("#newGoodsMore").hide();
$("#goNewGoodsList").show();
}

// 신상품 go;
function goNewGoods(goodsId, dispCornNo, dispType, itemIdx){
if(petShopMainResult.bestPage != '') {
	petShopMainResult.bestPage = '';
}
petShopMainResult.newPage = cornNewPage;
petShopMainResult.goGoods(goodsId, dispCornNo, dispType, itemIdx);
}

// 신상품 리스트 go;
function goSubNewGoodsList(dispClsfNo, dispCornNo, dispClsfCornNo, moreYn){
if(petShopMainResult.bestPage != '') {
	petShopMainResult.bestPage = '';
}
petShopMainResult.newPage = cornNewPage;
petShopMainResult.goNewGoodsList(dispClsfNo, dispCornNo, dispClsfCornNo, moreYn);
}
</script>
<!-- 메인 신상품 -->		

</div>
			<div id="521" name="dispCorn_div" data-index="6"><!-- 미로그인 배너 -->
<section class="sect mn nlogn">
	<div class="hdts" id="corner521">
		<div class="hdt"><span class="tit"><em class="b" style="color:var( --colors-main03)">멍품냥품</em>이 처음이신가요?</span></div>
	</div>
	<div class="bnbox">
		<div class="tit">회원가입 후 멍품냥품을 즐겨보세요!</div>
		<div class="bts">
			<a href="login.html"  data-content="" data-url="https://aboutpet.co.kr/join/indexTerms?header=Y&amp;goSns=Y" class="bt reg">회원가입하기</a>
			</div>
	</div>
</section>
</div>

	






			</div>
	</div>
</main>

<!-- ❤️main -->
				

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

<script>
// 스토어 토글버튼 제어
const toggleStore = {
  opt: {
    currentStore: 'cat',  // NOTE: 현재 스토어 (dog, cat)
    currentScroll: null,  // 현재 페이지 스크롤 위치 (초기값 : null / init 실행시 현재 스크롤 위치 값 등록됨)
    chkTop: 400,          // 이벤트 발생 top 스크롤 값
    scrollDir: null,      // 페이지 스크롤 방향 (up, down / 초기값 null / 스크롤 이벤트 발생시 값 등록됨)
    _wrapper: $('.float-toggle-store'),
    _btns: $('.float-toggle-store .btn-toggle-store'),
  },
  init: function() {
    const _this = this;
    const _chkTop = this.opt.chkTop;
    const _st = window.pageYOffset || document.documentElement.scrollTop;
    this.opt.currentScroll = _st;
    // 페이지 로드시 스크롤 위치 확인하여 토글버튼 펼침
    if (_chkTop >= _st) this.expand();
    // 스토어 버튼 클릭 이벤트
    $(document).off('click', '.float-toggle-store .btn-toggle-store');
    $(document).on('click', '.float-toggle-store .btn-toggle-store', function() {
      const _store = _this.opt.currentStore;
      const _targetStore = $(this).hasClass('btn-dog') ? 'dog' : 'cat';
      const isExpand =  _this.opt._wrapper.hasClass('expand') ? true : false;
      if (_store == _targetStore ) {
        // 현재 스토어와 클릭한 버튼의 타겟이 동일한 경우 토글버튼 영역 확장 처리
        if (isExpand) {
          if (_chkTop >= _this.opt.currentScroll) {
            _this.expand();
          } else {
            _this.expand(false);
          }
        } else {
          _this.expand();
        }
      } else {
        // 현재 스토어와 클릭한 버튼의 타겟이 다른 경우 스토어 변경 처리
        _this.toggle();
      }
    });
    // 페이지 스크롤 이벤트
    window.addEventListener('scroll', function() {
      let lastScrollTop = _this.opt.currentScroll;
      const _st = window.pageYOffset || document.documentElement.scrollTop;
      _this.opt.scrollDir = _st > lastScrollTop ? 'down' : 'up';  // downscroll / upscroll
      lastScrollTop = _st <= 0 ? 0 : _st;
      _this.opt.currentScroll = lastScrollTop;
      if (_chkTop >= lastScrollTop) {
        _this.expand(true);
      } else {
        _this.expand(false);
      }
    }, false);
  },
  // 토글버튼 펼침 / 접힘
  // opt 값 없는 경우 true(펼침)
  expand: function(opt) {
    const _wrapper = this.opt._wrapper;
    const _collapse = opt != undefined ? opt : true;
    if (_wrapper.length > 0) {
      if (_collapse == true) {
        _wrapper.addClass('expand');
      } else {
        _wrapper.removeClass('expand');
      }
    }
  },
  // 스토어 변경 (펼침상태의 버튼 토글동작 후 스토어 변경)
  toggle: function() {
    const _wrapper = this.opt._wrapper;
    const _store = this.opt.currentStore;
    const _targetStore = _store == 'dog' ? 'cat' : 'dog'; // 변경될 스토어 명칭
    if (_wrapper.hasClass('expand') == false) return;
    _wrapper.removeClass('is-dog is-cat');
    _wrapper.addClass('is-' + _targetStore);
    this.opt.currentStore = _targetStore;
    if (_targetStore == "dog") {
    	sendDispClsfNo("300000173");
    } else {
    	sendDispClsfNo("300000174");
    }
  },
}

$(function() {
  // 스토어 토글버튼 동작
  if ($('.float-toggle-store').length > 0) toggleStore.init();
});
</script><!-- location 영역 포함  -->			


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