<%@page import="kr.co.mpnp.user.service.MainService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>멍품냥품</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=4,  user-scalable=yes">

    
    
    <link href="common/favicon/favicon.ico" rel="shrtcut icon">
    <link href="common/favicon/android-icon-192x192.png" rel="apple-touch-icon-precomposed">

	 <script type="text/javascript"  src="http://localhost/mpnp/3rdDesign/_script/ui.js%22%3E"></script> 
    <link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/common/css/headerFooter.css">
    <link rel="stylesheet" type="text/css" href="http://localhost/mpnp/3rdDesign/_css/main.style.pc.css">
    <link rel="stylesheet" type="text/css" href="http://localhost/mpnp/3rdDesign/css/pupupme.css">
      <link rel="stylesheet" type="text/css" href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
    <!-- <script type="text/javascript" integrity="sha384-MBHPie4YFudCVszzJY9HtVPk9Gw6aDksZxfvfxib8foDhGnE9A0OriRHh3kbhG3q" crossorigin="anonymous" async="" src="https://cdn.amplitude.com/libs/amplitude-8.16.1-min.gz.js"></script><script type="text/javascript" src="/_script/crypto.js"></script> -->
      <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/webHookPolicy.js?v=22110110"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js"></script> 
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.ui.datepicker-ko.js"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.inputmask.bundle.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.number.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.form.min.js"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.countdown.js"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.cookie.js"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/swiper.min.js"></script>
    <script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/clipboard.min.js"></script>
    <script type="text/javascript" src="http://localhost/mpnp/3rdDesign/_script/common.js?modifiedDate=20221013"></script>
    <!-- <script type="text/javascript" src="/_script/popup.js"></script> -->
    <script type="text/javascript" src="http://localhost/mpnp/3rdDesign/_script/ui.js"></script>
    <!-- <script type="text/javascript" src="/_script/ui_shop.js"></script> -->
   
  
      <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=dbtckaqj51&amp;submodules=geocoder"></script><script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-geocoder.js"></script>
    <script type="text/javascript">
    //	const viewJsonData = JSON.parse(decodeURIComponent('%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D'));
    </script>
  <!--google icons-->
	<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<!--google fonts-->
	<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
    
  
    <!--라이브 앱과 연동을위한 JS -->
    <script src="https://sgr.aboutpet.co.kr/web/runInit/v1.js"></script>

     </head>
<body class="body isCartNavs shop view isPc gnb_ac isFoot" style="">

  <!-- 기본 컨텐츠 -->
    <div class="wrap" id="wrap">
      <input type="hidden" id="viewJsonData" value="%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D">


 <script>
	//검색
	$(function(){
		$("#srchWord").keydown( function(evt) {
			if( evt.which ==13 ){// 눌린키의 키코드를 which 속성으로 받을 수 있다.
				search();
			}//end if
 
		});
	});
//검색
			
	function search(){
		var keyword=$("#srchWord").val();
		if(keyword.trim()==""){
			alert("검색어를 입력해주세요.");
			return;
		}
		
		location.href="search_prd_list.do?name="+keyword
	}//search



	
</script>
	<%
	 MainService ms = new MainService();
	 String id= (String)session.getAttribute("id");
	 int cnt =0;
	 if(id!=null){
		 cnt = ms.CartTotalCnt(id);
	 }
	%>
 <header class="header pc cu mode0" data-header="set0" id="header_pc">
	<input type="password" style="display:none;"/><!-- 크롬 패스워드 자동완성 방지 -->
	<div class="hdr">
		<div class="inr">
			<div class="tdt">
			<c:if test="${empty sessionScope.id }">
				<ul class="menu">					
					<li><a href="join_terms.do" class="bt">회원가입</a></li>
		                <li><a href="login_form.do" class="bt">로그인</a></li>
		                <!-- <li><a href="javascript:;" class="bt">로그인/회원가입</a></li> -->
				
					</ul>
					</c:if>
					<c:if test="${not empty sessionScope.id }">
						    <div class="usr" style="width:200px;">
              <a class="rank_icon" href="javascript:rankBox();"><em class="lv welcome">웰컴</em></a>
                <a href="javascript:;" class="name"><b class="t">${sessionScope.id }</b><i class="i">님</i></a>
              <div class="sbm">
                <ul class="sm">
                <li><a href="pass_confirm_process.do" data-content="1319879" data-url="pass_confirm_process.do" class="bt">비밀번호 설정</a></li>
                    <li><a href="pass_confirm_process.do" data-content="1319879" data-url="/mypage/info/indexManageDetail" class="bt">회원정보 수정</a></li>
                    <li><a href="logout_process.do" data-content="1319879" data-url="/logout" class="bt">로그아웃</a></li>
                  </ul>
              </div>
            </div>
		</c:if>
					
			</div>
			<div class="hdt">
				<!-- mobile -->
				<button class="mo-header-btnType02">취소</button><!-- on 클래스 추가 시 활성화 -->
				<!-- // mobile -->
				<button class="btnGnb" type="button">메뉴</button>
<!-- -->
				<h1 class="logo shop">
					<a class="bt" href="index.do">AboutPet</a>
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
			
						<li id="liTag_10" class="active"><a href="index.do" class="bt">스토어</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_00" class=""><a href="mypage_form.do" class="bt">MY</a></li>
					</ul>
				</nav>
			</div>
			<div class="cdt" >
						<div class="schs">
						<form action="search_prd_list.do" method="get">
								<div class="form ">
									<div class="input del kwd">
									<input id="srchWord" name="name"  type="search" maxlength="50" value="" autocomplete="off" placeholder="검색어를 입력해주세요." >
									</div>
									<button type="button" class="btnSch" onclick="search()">검색</button>
								</div>
									</form>
							</div>
						<div class="menu">
							<a href="cart_list.do">
							<button class="bt cart" type="button"  >
								<em class="n"><%= cnt %></em>
							
									</button></a>
							<button id="srchClsBtn" class="bt close" type="button" style="display: none;" onclick="searchCommon.srchClsBtn();">닫기</button>
							<div class="alims" id ="alertDiv">
							</div>
						</div>
						</div>
</div>
	</div>
</header>

    


  
  <div class="layers tv seriesHome" id="gnbSrisListPopup"></div>
 
          
      <!-- s : 본문영역 -->			
      <!-- 상품 메인 이미지 preload -->
      <img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/goods/GI251050011/b37b36c4-c01c-4b8c-8935-10ad59e2ec53.jpg?type=f&amp;w=500&amp;h=500&amp;quality=90&amp;align=4" style="display: none">
        <main class="container page shop view" id="container" style="margin-top:150px;">
        <div class="inr" style="min-height: 429px;">
          <div class="contents" id="contents">
            <!-- 카테고리 -->

  
<div class="pdTops">
  
              <!-- 상품 이미지 영역 START -->
              <section class="pdPhoto">
                <!-- 이미지 왼쪽 상단 -->
                <div class="pdThumbSlide">
                  <div class="swiper-container swiper-container-initialized swiper-container-vertical">
                    <ul class="swiper-wrapper slide" style="transform: translate3d(0px, 0px, 0px);">
                      <li class="swiper-slide active swiper-slide-active" style="margin-bottom: 10px;">
                        <a href="javascript:" class="box"><span class="pic">
                        <img class="img" src="http://localhost/mpnp/upload/product/${data.thimg}?type=f&amp;w=178&amp;h=178&amp;quality=90&amp;align=4"></span></a>
                      </li>
                      <c:if test="${not empty prdImg }">
                     
                      <c:forEach var="Img" items="${prdImg }">
                      <li class="swiper-slide active swiper-slide-active" style="margin-bottom: 10px;">
                        <a href="javascript:" class="box"><span class="pic">
                        <img class="img" src="http://localhost/mpnp/upload/product/${Img.prdimg}?type=f&amp;w=178&amp;h=178&amp;quality=90&amp;align=4"></span></a>
                      </li>
                     </c:forEach>
                    </c:if> 
                      </ul>
                  <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                </div>
                <!-- 메인 이미지 영역 START -->
                <div class="pdPhotoSlide">
                  <!-- 타임딜 / 재고임박 / 유통기한 임박 -->
                  
                  <!-- 메인 이미지 슬라이드 -->
                  <div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-autoheight">
                    <div class="swiper-pagination swiper-pagination-fraction swiper-pagination-lock"><span class="swiper-pagination-current">1</span> / <span class="swiper-pagination-total">1</span></div>
                    <ul class="swiper-wrapper slide" name="detailImg" style="height: 500px; transform: translate3d(0px, 0px, 0px);">
                      <li class="swiper-slide swiper-slide-active" style="width: 500px;">
                        <a href="javascript:" class="box">
                          <span class="pic">
                          <img class="img" onclick="detailGoodsImgPop(this)" src="http://localhost/mpnp/upload/product/${data.thimg}?type=f&amp;w=500&amp;h=500&amp;quality=90&amp;align=4">
                          </span>
                        </a>
                      </li>
                      </ul>
                  <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                </div>
                <!-- 메인 이미지 영역 END -->
              </section>
              <!-- 상품 이미지 영역 END -->
              <!-- sameDay Class  -->
              <section class="pdInfos p1 sameDay">

							<!-- 유설빈영역  상품 값 넘기기 2022-11-23-->
			<!-- 		<button id="tempBtn" class="tempBtn">임시버튼 구매하기</button> -->
							<script type="text/javascript">
							 $(function(){
								 $("#tempBtn").dblclick(function(){
									 var number=$("#buyQty").val()*1;
							
								   $("#orderFrm").find("input[name='orders[0].prdCnt']").val(number);
								
								   $("#orderFrm").submit();
								 })
								
							 })//end ready
							</script>
							
							<form action="orderPayment_form.do" method="post" id="orderFrm" name="orderFrm">
								<input type="hidden" name="orders[0].prdId" value="${data.productid}" />
								<input type="hidden" name="orders[0].prdCnt" />
							</form>
							<!-- 유설빈영역  상품 값 넘기기 2022-11-23끝-->


							<!-- 상품명 -->
                <div class="names">${data.productname }</div>
  				<input type="hidden" id="productid" value="${data.productid }"/>
  				<!--로그인 했을때 id  -->
  				<c:if test="${not empty id }">
  				<input type="hidden" id="id" value="${id }"/>
  				</c:if>
                <!-- 후기 평점 -->
                <div class="starpoint">
                    <span class="stars sm p_4_5"></span>
                    <span class="point">${data.staravg }</span>
                    <span class="revew"><a href="javascript:;" class="lk" onclick="$('i[name=pdRevCnt]').trigger('click'); return false;" name="pdRevCnt">(${data.reviewcnt })</a></span>
                  </div>
                <!-- 가격 -->
                    <div class="prices">
                      <div class="price">
                        <span class="prcs"><fmt:formatNumber value="${data.price }" pattern="#,###"/><i class="w">원</i></span>
                        </div>
                      <!--APET-1512 첫구매 쿠폰은 다운로드 쿠폰 안보임-->
                      <!-- 쿠폰받기 -->
                      
                        <style>
    li.disabled button {
      cursor: default;
    }
  </style>

  

  
  <script>
 /*    var isScrBot = true ;
    var page = 1;
    $("#popCpnGet .pct").on("scroll resize",function(){
      var scTop = $(this).scrollTop();
      var scBox = $(this).outerHeight();
      var scCtn = $(this).prop("scrollHeight");
      if (scCtn <= scTop + scBox && isScrBot == true) {
        isScrBot = false;
        setTimeout(function(){
          fnCouponList(page ++);
          isScrBot = true;
        },500);
      }
    }); */
  </script><!-- 쿠폰다운 -->
                      </div>
                  <!-- APET-1520 - 스탬프 안내 영역 -->
                <!-- MD PICK 노출/비노출 -->
                <!-- 연관태그 -->
   
  
                <hr class="hbar">
  
                <!-- 배송정보 (스탬프 상품 제외) -->
                <div class="deliys" style="">

  <div class="box">
    <div class="tit">
      배송정보</div>
    <div class="ctn">
      <p>
        <span class="dawn">배송비 2,500원</span>
        <span class="free">(30,000원 이상 무료배송)</span>
      </p>
    </div>

            </div>
  <!-- 배송 추가 정보 -->
<!--     <div class="deliguides">
      <ul class="gdlist">
                <li class="dl1" style="">
                  <div class="ht">당일배송</div>
                  <div class="dt">
                    <div class="tt"><em class="b">내일(11/2) 오후 6~10시</em> 도착</div>
                    <div class="ss">오전 11시30분 전 결제완료 시 (13시 04분 남음)</div>
                  </div>
                </li>
                
              </ul>
            </div> -->
  
    <!-- 사전예약상품일 때 ends -->
</div>
                <!-- APETQA-7511 일반정책 미등록 시 취소/교환/환불 영역 비노출 -->
                <div class="gifts return_info" style="">
                  <div class="tit">주문 취소 안내</div>
                  <a href="javascript:;" class="bt more" onclick="ui.popBot.open('popReturnInfo',{'pop':true});">더보기</a>
                  <article class="popBot popReturnInfo k0421" id="popReturnInfo">
                    <div class="pbd">
                      <div class="phd">
                        <div class="in">
                          <h1 class="tit">주문 취소 안내</h1>
                          <button type="button" class="btnPopClose">닫기</button>
                        </div>
                      </div>
                      <div class="pct">
                        <main class="poptents bbs_content">
                          <section class="sect">
                            <div class="cdt" id="rtnExcInfo"><p><b><span style="font-family: 돋움, dotum;">주문 취소 안내</span></b>&nbsp;</p><p><font color="#acacac"><span style="color: rgb(125, 125, 125);">• 취소/반품/교환 접수는 [ MY &gt; 나의 쇼핑정보 &gt; 주문/배송 ] 페이지에서 신청이 가능합니다.&nbsp;</span></font></p><p>&nbsp;</p><p><b><span style="font-family: 돋움, dotum;">배송</span></b></p><p><font color="#acacac"><span style="color: rgb(125, 125, 125);">•&nbsp;배송기간은 주문일(결제완료)로부터 2~7일 정도 소요될 수 있습니다. (영업일 및 일반택배 기준)&nbsp;&nbsp;</span></font></p><p><font color="#acacac"><span style="color: rgb(125, 125, 125);">• 배송비는 판매자 기준에 따라 무료배송 또는 배송비가 부과됩니다.&nbsp;</span><br></font></p><p><font color="#acacac"><span style="color: rgb(125, 125, 125);">• 도서, 산간지역의 경우 추가 배송비가 부과하지 않습니다. (업체배송일 경우 추가 배송비가 부과될 수 있습니다.)</span></font><span style="color: rgb(125, 125, 125);">&nbsp;</span></p><p><font color="#acacac"><span style="color: rgb(125, 125, 125);">• 국내배송만 가능하며, 해외배송은 불가합니다.</span><br></font></p><p><b><span style="font-family: 돋움, dotum;"><br></span></b></p><p><b><span style="font-family: 돋움, dotum;">취소</span></b></p><p><font color="#acacac"><span style="color: rgb(125, 125, 125);">• 고객의 주문취소는 '입금대기', '결제완료', '배송준비중' 상태에서만 가능합니다. 단, 출고요청이 진행된 '배송준비중' 상태에서는 주문취소가 불가능 할 수 있습니다.</span></font><span style="color: rgb(125, 125, 125);">&nbsp;</span>&nbsp;&nbsp;</p><p>&nbsp;</p><p><b><span style="font-family: 돋움, dotum;">반품/교환/AS</span></b>&nbsp;</p><p><span style="color: rgb(125, 125, 125);">•&nbsp;반품/교환은 배송완료 후 7일 이내 가능하며, 배송비는 반품원인 제공자가 부담합니다.</span></p><p><span style="color: rgb(125, 125, 125);"><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/policy/202104/4681c876-0cdc-4d04-9b66-f0dc7d930732.png" alt="img">&nbsp;</span></p><p><span style="color: rgb(125, 125, 125);">•&nbsp;</span><font color="#acacac"><span style="color: rgb(125, 125, 125);">반품/교환이 불가한 경우</span></font>&nbsp;</p><p><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/policy/202104/8542ad34-0232-4c9f-a99c-5a4e266208c7.png" alt="img">&nbsp;</p><p><span style="font-family: 굴림, gulim;"></span></p><p><span style="color: rgb(125, 125, 125);">•&nbsp;</span><font color="#acacac"><span style="color: rgb(125, 125, 125);">반품/교환 접수 없이 임의로 반품/교환하는 경우, 고객 주문건과의 연결이 늦어 처리가 지연될 수 있습니다.</span></font><br><span style="color: rgb(125, 125, 125);">•&nbsp;</span><font color="#acacac"><span style="color: rgb(125, 125, 125);">교환 신청하였으나 재고가 부족한 경우 환불 처리 될 수 있습니다.</span></font><span style="color: rgb(125, 125, 125);">&nbsp;</span></p><p><span style="color: rgb(125, 125, 125);">•&nbsp;</span><font color="#acacac"><span style="color: rgb(125, 125, 125);">교환은 동일 상품으로만 교환이 가능합니다.</span></font><span style="color: rgb(125, 125, 125);">&nbsp;</span></p><p><span style="color: rgb(125, 125, 125);">•&nbsp;</span><font color="#acacac"><span style="color: rgb(125, 125, 125);">AS의 경우 상품 페이지에 있는 경우 판매자의 AS정책이 우선 적용됩니다.</span></font><span style="color: rgb(125, 125, 125);">&nbsp;</span></p><p>&nbsp;</p><p><b><span style="font-family: 돋움, dotum;">환불</span></b>&nbsp;</p><p><span style="color: rgb(125, 125, 125);">• 환불 소요 기한은 결제 수단에 따라 상이합니다.</span></p><div><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/policy/202206/52a273ef-4884-4abf-9a03-8346fb624cd1.png" alt="img"><br></div></div>
                          </section>
                        </main>
                      </div>
                    </div>
                  </article>
                </div>
             
                </section>
            </div>
  
            <!-- 상품 상세 텝 메뉴 -->
            <div class="pdCtns">
              <div class="tabMenu">
                <div class="inr">
                  <ul class="uiTab a menu">
                    <li data-btn-sid="pd-inf" class="active">
                      <a class="bt" href="javascript:;"><span class="tt">상품정보</span></a>
                    </li>
                    <li data-btn-sid="pd-mov" style="display:none;">
                      <a class="bt" href="javascript:;"><span class="tt">관련영상</span> <i class="nm" id="contentsTabCnt"></i></a>
                    </li>
                    <li data-btn-sid="pd-rev">
                      <a class="bt" href="javascript:;"><span class="tt"><span class="tt">후기</span> <i class="nm" name="pdRevCnt" id="pdRevCnt">${data.reviewcnt}</i></span></a>
                    </li>
                   
                  </ul>
                </div>
              </div>
  
              <!-- 상품정보 -->
              <div class="tabCtns">
                <section class="sec inf" data-sid="pd-inf" id="getGoodsDetailArea" data-index="0">

  
  <div class="cdts">
  
    <!--  공통 상품 배너 정보 -->
    <div class="html_editor mo" id="bannerMobile"></div>
    <div class="html_editor pc" id="bannerPc"></div> 
    
  
    <div class="html_editor pc template_area" id="contentPc">
      <p><img src="http://localhost/mpnp/upload/product/${data.infoimg}" alt="img" class="full_img_area">
      &nbsp;</p>

 
  
    <div class="btsmore" style="display: block;">
      <button type="button" class="bt more" data-ui-btsmore="more" onclick="amplitudeProductInfoClick();"><em class="t">상품정보 더보기</em></button>
    </div>
  </div>
  </section>
                
                <!-- 관련영상 (스탬프 상품 제외) -->
                <section class="sec mov" data-sid="pd-mov" id="contentsMov" data-index="1" style="display: none;">

  
  <div class="hdts">
    <span class="tit"><em class="t">관련영상</em> <i class="i" id="contentsCnt">0</i></span>
  </div>
  <div class="cdts">
    <div class="ui_fitmove_slide">
      <div class="swiper-container slide swiper-container-initialized swiper-container-horizontal">
        <ul class="swiper-wrapper list" id="contentList" data-page="0">
          
        </ul>
      <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
      <div class="sld-nav">
        <button type="button" class="bt prev swiper-button-disabled swiper-button-lock" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전</button>
        <button type="button" class="bt next swiper-button-disabled swiper-button-lock" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음</button>
      </div>
    </div>
  </div>
  </section>
                <!-- 후기 -->
                <script type="text/javascript">
  
  </script>

  <section class="sec rev" data-sid="pd-rev" id="goodsCommentArea" data-index="2"><script type="text/javascript">var thumbApi;</script>
  <script src="https://sgr.aboutpet.co.kr/player/thumb_api/v1.js"></script>
  
  
  
  <div class="hdts"> 
    <span class="tit"><em class="t">후기</em> <i class="i totalCntArea">${data.reviewcnt}</i></span>
    <div class="bts">
      <!-- <a href="javascript:;" class="btn b btnRev" onclick="ui.popBot.open('popRevSel');">후기작성</a> -->
      <div style="display:none;">
        <form id="writePopDataForm">
          <input type="text" name="goodsId">
          <input type="text" name="goodsEstmTp">
        </form>
      </div>
    </div>
  </div>
  <div class="cdts" id="totalCmntsArea">
    <!-- 구매만족도 -->
    <div class="uisatis" id="estmArea" style="">
      <div class="starpan">
    <div class="inr" style="margin-left:350px;margin-top:20px">
      <div class="ptbox"  >
        <div class="pnt">${data.staravg }</div>
        <div class="sta starpoint"><span class="stars p_4_5"></span></div>
      </div>
     
      <div class="ptlit">
        <ul class="plist">
          <li class="act">

          </ul>
      </div>
        
      </div>
    </div>
  <script type="text/javascript">
    if($('.iflist').find('li').length != null && $('.iflist').find('li').length != 0){
      var estm = $('.iflist').find('li').length;
      for(var i = 0; i < estm; i++){
        var percent = $($('.prlist')[i]).find('li.act span.pct b.p').text();
        var orgstr = $($('.iflist').find('li')[i]).find('div.dd span.ss').text();
        var newstr = percent + orgstr.substring(orgstr.indexOf('%'), orgstr.length);
        $($('.iflist').find('li')[i]).find('div.dd span.ss').text(newstr);
      }
    }
    
    /* 후기 평가 항목 별점 최대값 act class추가 */
    var starSetting = $('.plist').find('.pct>.p');
    if(starSetting != null && starSetting.length != 0){
      var list = new Array();
      for(var i = 0; i < starSetting.length; i++){
        list.push($(starSetting[i]).text());
      }
      var max = Math.max.apply(null, list);
      $(starSetting[list.indexOf(max+'')]).parents('li').addClass('act');
    }
    
    /* var estmUl = $('.prlist');
    if(estmUl != null && estmUl.length != 0){
      for(var i = 0; i < estmUl.length; i++){
        var estmDtlList = estmUl[i].find('.pct>.p');
        var list = new Array();
        
        
      }
    } */
    
  </script></div>
    <!-- 2022.05.12 [CSR-2623] 상품후기 개선 -->
    <!-- 상품후기 개선으로 탭 제거  -->
    
    
    <!-- 2022.05.26 [CSR-2856] 베스트 후기 -->
    
    <!-- // 베스트 후기 -->
  
    <div data-ui-tab-ctn="tab_rvt" data-ui-tab-val="tab_rvt_a" class="tabrev rev_a active">
      <div class="uireviews">
        
        
        <div class="rvhdt all" id="commentSoltArea">
          <div class="rht">
            <span class="tit">전체후기</span><span class="num" name="commentAllCnt"><span class="entireCntArea">${data.reviewcnt}</span>건</span>
          </div>
          <div class="rdt">
            <div class="wrap-filter">
            
            </div>
          </div>
        </div>
        <!-- 2022.08.25 [APET-1593] 마이펫 필터 -->
     
         <!-- //마이펫 필터 -->
         
        <div class="revalls" name="commentArea">
          <input type="hidden" id="entireCommentCnt" value="19">
  <c:forEach var="rev" items="${review}">
          <ul class="revlists revall-list" id="entireCommentListUl"><!-- [CSR-2623] 상품후기 개선 : 전체 후기 목록 추가 -->

  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="591871" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/C83A5D51FB?mbrNo=956687&amp;logFilter=Y';">
              <img src="http://localhost/mpnp/upload/pfImg/${rev.pfimg}?type=f&amp;w=720&amp;h=720&amp;quality=70&amp;align=4" alt="사진" class="img" onerror="http://localhost/mpnp/upload/pfImg/${rev.pfimg}?">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" >${rev.nick }</em>
                  <em class="dd date">${rev.reviewdate}</em>
              </div>
              <!-- // 작성자 기본정보  -->
              <!-- 수정/삭제 메뉴 -->
              <!-- 로그 후기 -->
              
                <!--   <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" >신고</button></li>	
                        </ul>
                    </div>
                  </nav> -->
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
            </div>
            
            	<!-- 사용자 아이디 -->
				<div class="spec">
				<!-- 아이디 fn:replace substring로 생략하기 -->
				<input type="hidden" value="<c:set var='userId' value='${rev.id }'/>">
				<input type="hidden" value="<c:set var='userId' value='${rev.id }'/>">
					<em class="b">${rev.id }</em>
               
					
					</div>
            </div>
        </div>
        <div class="rcdt">
          <!-- 별점 -->
          <div class="stpnt starpoint">
            <span class="stars sm p_5_0"></span>
          </div>
          <!-- // 별점 -->
          <!-- 옵션 -->
          <div class="opts">
            </div>
          <!-- // 옵션 -->
          <!-- 사용자 추가 이미지 -->
          <div class="addpic">
            <div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
              <!-- 로그후기 일 경우 -->
                <ul class="swiper-wrapper pics" style="transform: translate3d(0px, 0px, 0px);">
                  <!-- 이미지가 여러개일 경우 -->
                 <c:if test="${not empty rev.review_img }"> 
              <c:forTokens items="${rev.review_img }" delims = "," var="Img">
       
                      <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic">
                          <img class="img" name="plgImgList" src="http://localhost/mpnp/upload/review/${Img}?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror=" http://localhost/mpnp/upload/review/${img.review_img }?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4"></a>
                        </li>
                           </c:forTokens>
                      </c:if>
                      </ul>
              <!-- // 로그후기 일 경우 -->
              <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
            <div class="sld-nav">
              <button type="button" class="bt prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전</button>
              <button type="button" class="bt next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음</button>
            </div>
          </div>
          <!-- // 사용자 추가 이미지 -->
          <!-- 후기 내용 -->
          <!-- 로그후기 일 경우 -->
              <!-- // 로그후기 일 경우 -->
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG">
 			${rev.contents }
        </div>
      </div>
    </li>

  <script>
  $(document).ready(function(){
    // 사용자 추가 사진 swiper
    // - 사용자 추가 사진 스와이퍼 로드를 위해 중복 호출할 필요 없이 한번만 호출
    var addPicSwiper = (function() {
      // Variables
      var $swiperContainer = $(".revall-list>li .box .rcdt .addpic");
      function init($this) {
      // Swiper elements
        var $el = $this.find('.swiper-container'),
          navPrev = $this.find('.sld-nav .bt.prev'),
          navNext = $this.find('.sld-nav .bt.next');
        var $swiper = new Swiper($el, {
          slidesPerView: 'auto',
          freeMode: true,
          spaceBetween: 8,
          loop: false,
          navigation: {
            prevEl: navPrev,
            nextEl: navNext,
          }
        });
      }
      // Events
      if ($swiperContainer.length) {
        $swiperContainer.each(function(i, Slider) {
          init($(Slider));
        })
      }
    })();
  });
  </script>
  </ul>
 </c:forEach>   
 <c:if test="${empty review }">
           <!-- 😎등록된 후기가 없는 경우 -->
          <div class="nodata" id="commentNodata" >등록된 후기가 없습니다.</div>
      </c:if>  
        </div>
      </div>
    </div> 
    <div style="display:none;">
      <ui id="commentPhotoAndLogDetailData">
      </ui>
    </div>
  </div>
  
  <script>
  
    $(document).on("click",".swiper-slide .bt.sound",function(e){
      $(this).toggleClass("on");
    });
    
  </script>
  </section>
  
 
  
  
       

             
              </div>
            </div>
          </div>
        </div>
      </main>
  
      <article class="uiPdOrdPan" id="buycart"><!-- uiPdOrdPan -->
        <input type="hidden" name="goodsItemTotalAmt" id="goodsItemTotalAmt" value="7400">
        <button type="button" class="btDrag">열기/닫기</button>
        <div class="hdts">
          <div class="inr">
            <div class="bts"><button type="button" class="bt close">닫기</button></div>
            <span class="tit">상품선택</span>
          </div>
        </div>

  
  <div class="optpan">
    <div class="inr" id="artuiPdOrdPan">
  
      <div class="cdtwrap" style="max-height: 548.8px;">
<script>
$(function(){
	
	 //구매하기버튼
		 $("#tempBtn").dblclick(function(){
			 var number=$("#buyQty").val()*1;
	
		   $("#orderFrm").find("input[name='orders[0].prdCnt']").val(number);
		
		   $("#orderFrm").submit();
		 })
		

	
	//장바구니
$("#addCart_btn").dblclick(function(){
	 
		addCart();

})//click

//찜
$("#goodsWish").click(function(){
		addWish();
});//

});//ready
//로그인 여부
function loginChk(){
	var login =true;
	var userid=$("#id").val();

	if(userid==null){
		alert("로그인 후에 시도해주세요.")
		login=false;
	}
		
	return login;	
}

//장바구니 버튼 클릭시




//상품수량변경
function count(type)  {

  // 현재 화면에 표시된 값
 var number=$("#buyQty").val();

  // 더하기/빼기
  if(type === 'plus') {
    	++number

  }else if(type === 'minus' )  {
     --number

  }
  var sum ="${data.price}"*number
  sum = sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');

  // 결과 출력
 	$("#TotalCnt").html(number);
  	$("#TotalPrice").html(sum);
  	$("#emPriceTotalAmt").html(sum);
}


//상품 수량



//장바구니 추가-> 1번클릭했을때는 창을 띄우고 2번째 클릭했을때 장바구니 추가 되어야함(수정)


function addCart(){

	if(!loginChk()){
		 	return;
	}

	 var cartcnt = $("#buyQty").val();
	 var id = $("#id").val();
	 var data={
			  cartcnt : cartcnt,
			  productid : "${data.productid}",
			  id:id
	 	};

console.log(data);
 
	  $.ajax({
		  url :"cart_insert.do",
		  type:"post",
		  data : data,
		  success : function(result){
			  if(result==0){
					 alert("result 0 : 잠시후에 다시 시도해주세요") ;
				  }else if(result==1){
					  alert("장바구니에 추가되었습니다.");
				  }else if(result==2){
					  alert("장바구니에 이미 추가되었습니다.");
				  }else{
					  alert("로그인 후에 시도해주세요.")
				  }
			 console.log(result);
		  },
		  error : function(){
			  alert(" error : 잠시후 다시 시도해주세요.");
		  }
		  
		  
	  }); //ajax
	  

	  
	  
}//addCart
	





function addWish(){
	if(!loginChk()){
	 	return;
}

	  var productid=$("#productid").val();
	  var id=$("#id").val();
	  
	var data={
			id : id,
			productid : productid
	
	};//data
	
	
$.ajax({
			url : "addWish.do",
			type:"post",
			data : data,
			success : function(result){
				 if(result==1){
	  					alert("찜리스트에 추가되었습니다.");
	  					$(".btZZim").addClass("on");
				  }else if(result==-1){
					  alert("로그인 후에 사용해주세요.");
				  }else if(result==0){
					  alert("찜에서 삭제되었습니다.") ;
					  $(".btZZim").removeClass("on");
				  }
				  
				 console.log(result);
			},
			error : function(result){
				
				alert("잠시후에 다시 시도해주세요.")
			
			}
			

	});//jax

	};
	  

</script>

 
  
  <!-- 단품/세트 상품 -->
    <div class="cdt cdt_l">
      <div class="optresul" style="min-width: 50%">
        <ul class="list">
          <li>
            <div class="unitRes">
              <a href="javascript:" class="box">
                <!-- <button type="button" class="bt del">삭제</button> -->
                <div class="infs">
                  <span class="lk wb_bAll_k0426">${data.productname }</span>
                </div>	
              </a>
              <div class="cots">
                <div class="uispiner">
               <input type="text" value="1" class="amt" id="buyQty" name="buyQty" >
            <!--  onblur="fnChangebuyQty(this, 'GI251050011')" onkeyup="this.value=this.value.replace(/[^0-9]/g, '');" data-item-no="412810" data-min-ord-qty="1" data-max-ord-qty="100" data-ordmki-yn="N" data-stk="2500" -->
              <button type="button" class="bt minus" onclick='count("minus")'>-</button>
                  <button type="button" class="bt plus" onclick='count("plus")'>+</button>
                </div>
                <div class="price">
                  <em class="p" id="TotalPrice"> <fmt:formatNumber value="${data.price}" pattern="#,###"/></em><i class="w">원</i>
                </div>
              </div>
              </div>
          </li>
        </ul>
      </div>
    </div>
    
   

    
 
  </div>
  

  
      <div class="tots">
        <div class="inr">
          <div class="amts">
            <i class="t">총 수량</i>
            <em class="amt" >
              <i class="i" id="TotalCnt" >1</i>
                <i class="s">개</i>
            </em>
          </div>
          <div class="price">
            <i class="t">합계</i>
            <em class="prc"><i class="i" id="emPriceTotalAmt"><fmt:formatNumber value="${data.price }" pattern="#,###"/></i><i class="s">원</i></em>
          </div>
        </div>
      </div>
    </div>
    <input type="hidden" value="" id="goodsIdStrInput">
    <input type="hidden" value="" id="cartQtyInput">
  </div>
  </article>
      <input type="hidden" name="" value="00">
      <input type="hidden" name="fstPurchBeneTgYn" value="N">
      <input type="hidden" name="userAuthenticationYn" value="Y">
      <input type="hidden" id="dlvyAreaLoadYn" value="Y">
      <script type="text/javascript">
  </script>
  <nav class="cartNavs" id="cartNavs">
    <div class="inr">
      <div class="pdinfo">
        <div class="box">
  <!-- 				직사각형을 정사각형으로 변경함. frontConstants.IMG_OPT_QRY_210 >>>> frontConstants.IMG_OPT_QRY_756 -->
          <span class="pic"><img class="img" src="http://localhost/mpnp/upload/product/${data.thimg }?type=f&amp;w=500&amp;h=500&amp;quality=90&amp;align=4" onerror="this.src='/_images/mall/common/default_image.jpg'" alt=""></span>
          <div class="disc">
            <div class="names">${data.productname }</div>
            <div class="price">
                  <em class="p"><fmt:formatNumber value="${data.price }" pattern="#,###"/></em><i class="w">원</i>
                </div>
              </div>
        </div>
      </div>
  
      <div class="btns">
        <!-- 스탬프 상품은 찜하기 불가 -->
        <div class="zims">
        <c:choose>
   		<c:when test="${wishFlag eq 0 }">
            <button type="button" class="bt btZZim " id="goodsWish" >
            <span class="t">
            <span class="material-symbols-outlined">
              bookmark
              </span></span></button>
              </c:when> 
              
           <c:when test="${wishFlag eq 1 }">
                 <button type="button" class="bt btZZim on" id="goodsWish" >
            <span class="t">
            <span class="material-symbols-outlined">
              bookmark
              </span></span></button>
              </c:when> 
              
              <c:when test="${ empty sessionScope.id  }">
             	<a href="javascript:loginChk()">	
            <button type="button" class="bt btZZim" id="goodsWish" >
            <span class="t">
            <span class="material-symbols-outlined">
              bookmark
              </span></span></button>
              </a>
              
          
       </c:when>  
      </c:choose>
      
      
          </div>
          <form name="hidFrm" id="hidFrm">
          <c:if test="${not empty sessionScope.id }">
          	<input type="hidden" id="id" name="id" value="${sessionScope.id }">
          </c:if>
          </form>
        <!-- soldOutYn 품절 여부 0보다 크면 Y -->
        <div class="obts">
          <!-- 사전예약 상품이 아니면 -->
              <!-- 스탬프 상품은 장바구니 없음 -->
                <button type="button" class="bt btCart" id="addCart_btn"><span class="t">장바구니</span></button>
              <!-- 판매가능 -->
                <!-- 판매가능 -->
                    <button type="button" class="bt btOrde" id="tempBtn"><span class="t">구매하기</span></button>
                    </div>
      </div>
    </div>
  </nav>
  
  <script>
  
 
  

  </script>
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
 
  
  <script>
  // 스토어 토글버튼 제어
  const toggleStore = {
    opt: {
      currentStore: '',  // NOTE: 현재 스토어 (dog, cat)
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
  </script><!-- popup 내용 부분입니다. -->
  <style>
    .radio .txt{
      margin-left: 31px !important;
    }

    .log_btnWrap{
        margin-bottom:-100px !important;

    }

    .lay-gray-box + .member-input {
    margin-top: 30px !important;
    margin-bottom:30px !important;
}

    .member-input{
      margin-top:100px !important;
    }

    

  
  </style>


            
            
            <!-- 하단 고정 버튼 있을때 쓰세요
            <div class="pbt">
              <div class="bts">
                <button type="button" class="btn xl d" onclick="ui.popLayer.close('popReport');">취소</button>
                <button type="button" class="btn xl a" onclick="insertPetLogRptp('popReport');">등록</button>
              </div>
            </div>	-->	
            
          </div>
        </article></div>
      <script>
            window.onload = function() {
                   // 상품 상세페이지 핀치 줌 되도록 수정.
                   $("meta[name=viewport]").attr("content",  "width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=4,  user-scalable=yes");
                  
                //상품 상세 - 상품 후기 유형 param 있는 경우 후기 탭 클릭 이벤트
          var gd_goodsEstmTpCd = $.cookie("gd_goodsEstmTpCd");
          if(gd_goodsEstmTpCd){
            $("li[data-btn-sid=pd-rev] > .bt").trigger('click');
            // 안드로이드에서 한번 더 깜빡이면서(새로고침?) 동작하지 않아서 추가 
            if(gd_goodsEstmTpCd == "PLG"){
              $("#logCmntsBtn").trigger('click');
            }
            
            $.removeCookie("gd_goodsEstmTpCd" , {path:"/"}); //focus 후 삭제
          }
          
          //APET-1520 - 스탬프안내배너
          var stampCnt =  $(".stamp_info_banner_box .swiper-slide").length;
          if(stampCnt > 1 ){
            var stampInfoBanner = new Swiper(".stamp_info_banner_box", {
              spaceBetween: 30,
              autoHeight: true,
              loop : true,
              autoplay: {
                delay: 3000,
                disableOnInteraction: false,
              },
              pagination: {
                el: ".swiper-pagination",
              },
            });
          }
            }
            function getDeliveryInfo(compNo, dlvrcPlcNo) {
              $.ajax({
                  url: '/goods/getGoodsDeliveryInfo'
                , data: {compNo:compNo, dlvrcPlcNo: dlvrcPlcNo}
                , type:'POST'
                , success: function (result) {
                  if(result.deliveryChargePolicy) {
                    var deliveryChargePolicy = result.deliveryChargePolicy;
                    var dlvrFree = '';
                    if(deliveryChargePolicy.dlvrcCdtStdCd == '20') {
                      dlvrFree = numberWithCommas(deliveryChargePolicy.buyPrc) + '원 이상 무료배송' ;
                    } else if(deliveryChargePolicy.dlvrcCdtStdCd == '30') {
                      dlvrFree = numberWithCommas(deliveryChargePolicy.buyQty) + '개 이상 무료배송' ;
                    } else {
                      
                    }
                    
                    
                    if(('ITEM' == 'ITEM' || 'ITEM' == 'SET') && 'N' == 'Y'){
                      $('.free').text("무료배송");
                    }else if(('ITEM' == 'ATTR' || 'ITEM' == 'PAK') && 'N' == 'Y'){
                       $('.free').text("무료배송");
                    }else{
                      
                      // 배송료
                      if(deliveryChargePolicy.dlvrAmt>0 && 'N' != 'Y') {
                        $('.dawn').text(numberWithCommas("배송비 "+deliveryChargePolicy.dlvrAmt)+"원");
                      }else{
                        dlvrFree = '무료배송';
                      }
            
                      if(dlvrFree) {
                        $('.free').text(dlvrFree == '무료배송' ? dlvrFree : '('+dlvrFree+')');
                      }
                    }
                    var deliveryChargePolicy = result.deliveryChargePolicy;
                    // 교환/환불 정책
                    //APETQA-7511 일반정책 미등록 시 취소/교환/환불 영역 비노출
                    if(deliveryChargePolicy.rtnExcInfo !=null){
                    $('#rtnExcInfo').html(deliveryChargePolicy.rtnExcInfo);
                      $(".return_info").show();
                    }
                // 업체 배송 소요일
                var requiredMinDate =  deliveryChargePolicy && deliveryChargePolicy.dlvrMinSmldd ? deliveryChargePolicy.dlvrMinSmldd : 2;
                var requiredMaxDate = deliveryChargePolicy && deliveryChargePolicy.dlvrMaxSmldd ? deliveryChargePolicy.dlvrMaxSmldd : 7;
  
                $("#compDeliveryRequiredDate").text('결제완료 기준 ' + requiredMinDate + ' ~ ' + requiredMaxDate + '일 소요 예정');
                  }
                  
                  // 2022.09.01 APETQA-8429 배송완료영역 로딩여부 설정
                  $("#dlvyAreaLoadYn").val("Y").trigger("change");
                  
                }
              });
            }
          </script><!-- location 영역 포함  -->			
      <!-- e : 본문영역 -->
          
      <!-- s : layerPop 영역 -->
      <!-- e : layerPop 영역 -->
      
      <!-- s : menubar 영역 -->
      <script type="text/javascript">
    $(document).ready(function(){
      $("li[id^=liTag_]").one('click', function(){
        $(this).find("button").addClass("active");
        });
      
    });
    
    // Amplitude Send : 하단 네비게이터 바 클릭
    function callAmplitudeMenuBar(type) {
      var thisUrl = location.href;
      var startRef = thisUrl.indexOf("/", thisUrl.indexOf(window.location.hostname));
      var endRef = thisUrl.indexOf("?", startRef+1);
      var thisSourceType = thisUrl.substring(startRef+1, (endRef != -1)? endRef:thisUrl.legnth);  
      var amplitudeMenuBarData = {
          clickSource : location.href,
          clickSourceType : thisSourceType,
          buttonType : type,
        }
      sendAmplitude("click_tab_bar", amplitudeMenuBarData);
    };
  </script>
  <!-- e : menubar 영역 -->
      

  
  <!-- footer -->	
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
  
  <div id="layers">
  </div><!-- e : footer 영역 -->
    </div>
  
  </body>
</html>