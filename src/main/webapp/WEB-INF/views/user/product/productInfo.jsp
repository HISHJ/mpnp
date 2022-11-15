<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>멍품냥품</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=4,  user-scalable=yes">

    
    
    <link href="common/favicon/favicon.ico" rel="shrtcut icon">
    <link href="common/favicon/android-icon-192x192.png" rel="apple-touch-icon-precomposed">

    <link rel="stylesheet" href="http://localhost/mfnf/3rdDesign/common/css/headerFooter.css">
    <link rel="stylesheet" type="text/css" href="http://localhost/mfnf/3rdDesign/_css/main.style.pc.css">
    <link rel="stylesheet" type="text/css" href="http://localhost/mfnf/3rdDesign/css/pupupme.css">
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
    <script type="text/javascript" src="http://localhost/mfnf/3rdDesign/_script/common.js?modifiedDate=20221013"></script>
    <!-- <script type="text/javascript" src="/_script/popup.js"></script> -->
    <script type="text/javascript" src="http://localhost/mfnf/3rdDesign/_script/ui.js"></script>
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
    <script type="text/javascript">
      //검색API 클릭 이벤트(사용자 액션 로그 수집)
      function userActionLog(contId, action, url, targetUrl){	
        var mbrNo = "1319879";
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
     </head>
<body class="body isCartNavs shop view isPc gnb_ac isFoot" style="">

  <!-- 기본 컨텐츠 -->
    <div class="wrap" id="wrap">
      <input type="hidden" id="viewJsonData" value="%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D">

  <header class="header pc cu mode0 noneAc" data-header="set0" id="header_pc">
    <input type="password" style="display:none;"><!-- 크롬 패스워드 자동완성 방지 -->
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
                        <a href="javascript:" class="box"><span class="pic"><img class="img" src="http://localhost/mfnf/images/${data.thimg}.jpg?type=f&amp;w=178&amp;h=178&amp;quality=90&amp;align=4"></span></a>
                      </li>
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
                          <img class="img" onclick="detailGoodsImgPop(this)" src="http://localhost/mfnf/images/${data.thimg}.jpg?type=f&amp;w=500&amp;h=500&amp;quality=90&amp;align=4">
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
  
              
  
              
                <!-- 상품명 -->
                <div class="names">${data.productname }</div>
  
                <!-- 후기 평점 -->
                <div class="starpoint">
                    <span class="stars sm p_4_5"></span>
                    <span class="point">${data.staravg }</span>
                    <span class="revew"><a href="javascript:;" class="lk" onclick="$('i[name=pdRevCnt]').trigger('click'); return false;" name="pdRevCnt">(${data.reviewcnt })</a></span>
                  </div>
                <!-- 가격 -->
                    <div class="prices">
                      <div class="price">
                        <span class="prcs">${data.price }<i class="w">원</i></span>
                        </div>
                      <!--APET-1512 첫구매 쿠폰은 다운로드 쿠폰 안보임-->
                      <!-- 쿠폰받기 -->
                      
                        <style>
    li.disabled button {
      cursor: default;
    }
  </style>

  

  
  <script>
    var isScrBot = true ;
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
    });
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
    <div class="deliguides">
      <ul class="gdlist">
                <li class="dl1" style="">
                  <div class="ht">당일배송</div>
                  <div class="dt">
                    <div class="tt"><em class="b">내일(11/2) 오후 6~10시</em> 도착</div>
                    <div class="ss">오전 11시30분 전 결제완료 시 (13시 04분 남음)</div>
                  </div>
                </li>
                
              </ul>
            </div>
  
    <!-- 사전예약상품일 때 ends -->
  
    <input type="hidden" id="areaType" value="">
    <input type="hidden" id="tempDlvrSelectId" value="">
    <input type="hidden" id="tempDlvrStartId" value="">
    <input type="hidden" id="tempMbrDlvraNo" value=""></div>
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
                      <a class="bt" href="javascript:;"><span class="tt"><span class="tt">후기</span> <i class="nm" name="pdRevCnt" id="pdRevCnt">19</i></span></a>
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
    
    <!-- 묶음 상품 정보 -->
    <div class="html_editor mo" id="contentMobile">
      <p><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/goods_desc/202206/d5fd38ad-1670-4c50-ace5-2114f29b3d52.jpg" alt="img"><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/goods_desc/202206/47d31548-19d6-4078-8f25-965c6c9d4063.jpg" alt="img"><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/goods_desc/202206/5ea03ed5-325c-4bc2-9e7b-78b09482a42b.jpg" alt="img"><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/goods_desc/202206/69a7d19f-c301-4ee4-aff4-c7b5bbbd2452.jpg" alt="img"><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/goods_desc/202206/8d117040-a633-4f9c-99f7-9cfc11b680e3.jpg" alt="img"><img src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/editor/goods_desc/202206/b07ec8cd-cd0c-434e-88a5-18b6997727e8.jpg" alt="img">&nbsp;</p><script type="text/javascript">
    /* console.log("성분 정보 변동 여부 : " + goods.igdtInfoLnkYn); */
    function sendAbUserProperty(abTestResult) {
      try {
        if ('PC' == 'APP') { // 앱인경우 앱 인터페이스 호출
          var onAnalysisUserInfo = {
            func : "onAnalysisUserInfo",
            "A/B_Test_Goods_Description" : abTestResult
          }
          if (navigator.userAgent.indexOf('Android') > -1) {
            window.AppJSInterface.onAnalysisUserInfo(JSON.stringify(onAnalysisUserInfo));
          } else {
            window.webkit.messageHandlers.AppJSInterface.postMessage(onAnalysisUserInfo);
          }
        } else {
          var amplitudeInitData = new amplitude.Identify().set("A/B Test : Goods Description", abTestResult);
          amplitude.getInstance().identify(amplitudeInitData);
        }
      } catch (error) {
        console.log("Amplitude Send Err");
      }
    }
    
    var ranNum = Math.floor(Math.random() * (100));
    if (document.cookie.indexOf("abTest=A") > -1) {
      ranNum = 0;
    }
  
    if (document.cookie.indexOf("abTest=B") > -1) {
      ranNum = 100;
    }
  
    
    if (ranNum < 50) {
      $(".abtest_b").remove();
      sendAbUserProperty('abtest_a');
      $.cookie('abTest', 'A', {path : '/'});
    } else {
      $(".abtest_a").remove();
      sendAbUserProperty('abtest_b');
      $.cookie('abTest', 'B', {path : '/'});
    }
  
  </script>
  
  <div class="gdtblset"><!-- @@ 03.03 .gdtblset 영양정보,상세정보 감싸기 -->
  </div>
  
  
  <div class="gdtbl c">
    <div class="gdthdt">상품 필수 정보</div>
    <table class="tblist c" cellpadding="0" cellspacing="0" summary="품명 및 모델명, 제조사,제조국,A/S책임자,인증허가,안정인증여부 테이블">
      <caption>상품 필수 정보</caption>
      <colgroup>
        <col>
        <col>
      </colgroup>
      <tbody>
      <tr>
          <th>품명 및 모델명</th>
          <td>바른 제주 숲내음 탈취제</td>
        </tr>
      <tr>
          <th>법에 의한 인증,허가 등을 받았음을 확인할수 있는 경우 그에 대한 사항</th>
          <td>상품상세설명 참조</td>
        </tr>
      <tr>
          <th>제조국 또는 원산지</th>
          <td>대한민국</td>
        </tr>
      <tr>
          <th>제조자,수입품의 경우 수입자를 함께 표기</th>
          <td>㈜숲에서</td>
        </tr>
      <tr>
          <th>AS책임자와 전화번호 또는 소비자상담 관련 전화번호</th>
          <td>어바웃펫 // 1644-9601</td>
        </tr>
      </tbody>
    </table>
  </div>
  </div>
  
    <div class="html_editor pc template_area" id="contentPc">
      <p><img src="http://localhost/mfnf/images/${data.infoimg}.jpg" alt="img" class="full_img_area">
      &nbsp;</p>
      <script type="text/javascript">
    /* console.log("성분 정보 변동 여부 : " + goods.igdtInfoLnkYn); */
    function sendAbUserProperty(abTestResult) {
      try {
        if ('PC' == 'APP') { // 앱인경우 앱 인터페이스 호출
          var onAnalysisUserInfo = {
            func : "onAnalysisUserInfo",
            "A/B_Test_Goods_Description" : abTestResult
          }
          if (navigator.userAgent.indexOf('Android') > -1) {
            window.AppJSInterface.onAnalysisUserInfo(JSON.stringify(onAnalysisUserInfo));
          } else {
            window.webkit.messageHandlers.AppJSInterface.postMessage(onAnalysisUserInfo);
          }
        } else {
          var amplitudeInitData = new amplitude.Identify().set("A/B Test : Goods Description", abTestResult);
          amplitude.getInstance().identify(amplitudeInitData);
        }
      } catch (error) {
        console.log("Amplitude Send Err");
      }
    }
    
    var ranNum = Math.floor(Math.random() * (100));
    if (document.cookie.indexOf("abTest=A") > -1) {
      ranNum = 0;
    }
  
    if (document.cookie.indexOf("abTest=B") > -1) {
      ranNum = 100;
    }
  
    
    if (ranNum < 50) {
      $(".abtest_b").remove();
      sendAbUserProperty('abtest_a');
      $.cookie('abTest', 'A', {path : '/'});
    } else {
      $(".abtest_a").remove();
      sendAbUserProperty('abtest_b');
      $.cookie('abTest', 'B', {path : '/'});
    }
  
  </script>
  
  <div class="gdtblset"><!-- @@ 03.03 .gdtblset 영양정보,상세정보 감싸기 -->
  </div>
  
  
 
  
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
    <span class="tit"><em class="t">후기</em> <i class="i totalCntArea">19</i></span>
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
    <div class="inr">
      <div class="ptbox">
        <div class="pnt">4.5</div>
        <div class="sta starpoint"><span class="stars p_4_5"></span></div>
      </div>
      <div class="ptlit">
        <ul class="plist">
          <li class="act">
            <span class="pnt"><b class="p">5</b><i class="w">점</i></span>
            <span class="gage"><em class="bar" style="width: 78.94736842105263%;"></em></span>
            <span class="pct"><b class="p">79</b><i class="w">%</i></span>
          </li>
          <li class="">
            <span class="pnt"><b class="p">4</b><i class="w">점</i></span>
            <span class="gage"><em class="bar" style="width: 5.263157894736842%;"></em></span>
            <span class="pct"><b class="p">5</b><i class="w">%</i></span>
          </li>
          <li class="">
            <span class="pnt"><b class="p">3</b><i class="w">점</i></span>
            <span class="gage"><em class="bar" style="width: 10.526315789473683%;"></em></span>
            <span class="pct"><b class="p">11</b><i class="w">%</i></span>
          </li>
          <li class="">
            <span class="pnt"><b class="p">2</b><i class="w">점</i></span>
            <span class="gage"><em class="bar" style="width: 0.0%;"></em></span>
            <span class="pct"><b class="p">0</b><i class="w">%</i></span>
          </li>
          <li class="">
            <span class="pnt"><b class="p">1</b><i class="w">점</i></span>
            <span class="gage"><em class="bar" style="width: 5.263157894736842%;"></em></span>
            <span class="pct"><b class="p">5</b><i class="w">%</i></span>
          </li>
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
            <span class="tit">전체후기</span><span class="num" name="commentAllCnt"><span class="entireCntArea">19</span>건</span>
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
          <ul class="revlists revall-list" id="entireCommentListUl"><!-- [CSR-2623] 상품후기 개선 : 전체 후기 목록 추가 -->

  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="591871" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/C83A5D51FB?mbrNo=956687&amp;logFilter=Y';">
              <img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/956687/profile/f0c25e61-9d55-4d51-af2d-f958fde11f7f.jpg?type=f&amp;w=720&amp;h=720&amp;quality=70&amp;align=4" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/C83A5D51FB?mbrNo=956687&amp;logFilter=Y';">자이리</em>
                  <em class="dd date">2022.10.25</em>
              </div>
              <!-- // 작성자 기본정보  -->
              <!-- 수정/삭제 메뉴 -->
              <!-- 로그 후기 -->
                  <form id="updateForm377692">
                    <input type="hidden" name="goodsId" value="GI251050011">
                    <input type="hidden" name="ordNo" value="">
                    <input type="hidden" name="ordDtlSeq" value="">
                    <input type="hidden" name="goodsEstmTp" value="PLG">
                    <input type="hidden" name="goodsEstmNo" value="591871">
                     <input type="hidden" name="petLogNo" value="377692">
                  </form>
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" >신고</button></li>	
                        </ul>
                    </div>
                  </nav>
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
            </div>
            
            	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
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
                      <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImgList" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/956687/0becb354-3bc8-4c11-a548-95c2830eea6b.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
                      <li class="swiper-slide swiper-slide-next" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImgList" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/956687/9666f3fd-3f6f-48d6-b061-6e1b237a4e60.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
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
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG">탈취제가 필요해서 급하게 주문했어요.
  용량 무엇~ㅎㅎ
  피톤치드가 느껴지는 향이네요.
  상쾌한 느낌입니다.
   
          <!-- // 후기 내용 -->
          <!-- 만족도 (평가문항$답변|평가문항$답변) -->
          <!-- // 만족도 -->
          <!-- 도움이 되요 -->
          
          <!-- // 도움이 되요 -->
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="567638" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/logUrl?mbrNo=1106424&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/logUrl?mbrNo=1106424&amp;logFilter=Y';">선영먼지</em>
                  <em class="dd date">2022.09.19</em>
              </div>
              <!-- // 작성자 기본정보  -->
             	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
					</div>
              <!-- 일반 후기 -->
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                      <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="goodsComment.commentReportPop(this)" data-goods-estm-no="567638" data-rpt-yn="N">신고</button></li>
                        </ul>
                    </div>
                  </nav>
                <!-- //일반 후기 -->
                <!-- // 수정/삭제 메뉴 -->
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
              <!-- 일반후기 일 경우 -->
                <!-- // 일반후기 일 경우 -->
              <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
            <div class="sld-nav">
              <button type="button" class="bt prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전</button>
              <button type="button" class="bt next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음</button>
            </div>
          </div>
          <!-- // 사용자 추가 이미지 -->
          <!-- 후기 내용 -->
          <!-- 일반후기 일 경우 -->
              <!-- // 일반후기 일 경우 -->
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="NOR">향 좋아요 은은하구 ㅋㅋㅋ</div>
          <!-- // 후기 내용 -->
          <!-- 만족도 (평가문항$답변|평가문항$답변) -->
          <!-- // 만족도 -->
          <!-- 도움이 되요 -->
        
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="559679" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/229322ABEE?mbrNo=1212162&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/229322ABEE?mbrNo=1212162&amp;logFilter=Y';">용맹까미</em>
                  <em class="dd date">2022.09.05</em>
              </div>
              <!-- // 작성자 기본정보  -->
              <!-- 수정/삭제 메뉴 -->
              <!-- 로그 후기 -->
                  <form id="updateForm336767">
                    <input type="hidden" name="goodsId" value="GI251050011">
                    <input type="hidden" name="ordNo" value="">
                    <input type="hidden" name="ordDtlSeq" value="">
                    <input type="hidden" name="goodsEstmTp" value="PLG">
                    <input type="hidden" name="goodsEstmNo" value="559679">
                     <input type="hidden" name="petLogNo" value="336767">
                  </form>
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="layerPetLogReport(336767 , 'Y' , this);" data-pet-log-no="336767" data-rpt-yn="N">신고</button></li>	
                        </ul>
                    </div>
                  </nav>
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
            </div>
            
           	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
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
                  <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImg" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/1212162/79d9e1b0-cf5e-4977-8ad6-119fede21c32.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
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
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG">한번 사서 써봤는데 너무 괜찮아서 하나 또 샀어요!
   
          <!-- // 후기 내용 -->
          <!-- 만족도 (평가문항$답변|평가문항$답변) -->
          <!-- // 만족도 -->
          <!-- 도움이 되요 -->
         
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="544058" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/74206A7CED?mbrNo=1209039&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/74206A7CED?mbrNo=1209039&amp;logFilter=Y';">나폴레오옹</em>
                  <em class="dd date">2022.08.13</em>
              </div>
              <!-- // 작성자 기본정보  -->
              <!-- 수정/삭제 메뉴 -->
              <!-- 로그 후기 -->
                  <form id="updateForm322999">
                    <input type="hidden" name="goodsId" value="GI251050011">
                    <input type="hidden" name="ordNo" value="">
                    <input type="hidden" name="ordDtlSeq" value="">
                    <input type="hidden" name="goodsEstmTp" value="PLG">
                    <input type="hidden" name="goodsEstmNo" value="544058">
                     <input type="hidden" name="petLogNo" value="322999">
                  </form>
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="layerPetLogReport(322999 , 'Y' , this);" data-pet-log-no="322999" data-rpt-yn="N">신고</button></li>	
                        </ul>
                    </div>
                  </nav>
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
            </div>
            
            	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
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
                  <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImg" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/1209039/44efd840-0d8d-4ed7-b429-fcae67c2413b.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
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
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG"><a href="/log/indexPetLogTagList?tag=%ED%83%88%EC%B7%A8%EC%A0%9C" style="color:#669aff;">#탈취제</a> <a href="/log/indexPetLogTagList?tag=%ED%99%94%EC%9E%A5%EC%8B%A4" style="color:#669aff;">#화장실</a> 
  
  양도 많고 냄새도 향긋해요
   
          <!-- // 후기 내용 -->
          <!-- 만족도 (평가문항$답변|평가문항$답변) -->
          <!-- // 만족도 -->
          <!-- 도움이 되요 -->
       
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="543184" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/D5C56BABF2?mbrNo=1216079&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/D5C56BABF2?mbrNo=1216079&amp;logFilter=Y';">바우언니</em>
                  <em class="dd date">2022.08.11</em>
              </div>
              <!-- // 작성자 기본정보  -->
              <!-- 수정/삭제 메뉴 -->
              <!-- 로그 후기 -->
                  <form id="updateForm322276">
                    <input type="hidden" name="goodsId" value="GI251050011">
                    <input type="hidden" name="ordNo" value="">
                    <input type="hidden" name="ordDtlSeq" value="">
                    <input type="hidden" name="goodsEstmTp" value="PLG">
                    <input type="hidden" name="goodsEstmNo" value="543184">
                     <input type="hidden" name="petLogNo" value="322276">
                  </form>
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="layerPetLogReport(322276 , 'Y' , this);" data-pet-log-no="322276" data-rpt-yn="N">신고</button></li>	
                        </ul>
                    </div>
                  </nav>
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
            </div>
            
           	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
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
                      <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImgList" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/1216079/516f94bf-cf97-46cb-bb8b-038f45b30034.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
                      <li class="swiper-slide swiper-slide-next" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImgList" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/1216079/3e396e11-4d33-4676-acf8-697ca08a1577.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
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
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG">아이가 나이가 들어감에 따라 몸에서 냄새가 나기 시작하더라구요..그러다보니 방석이니 쇼파등 여기저기 냄새가 덩달아 나서 사용해보니 편백나무 냄새가 은은하니 좋습니다~
   
          <!-- // 후기 내용 -->
          <!-- 만족도 (평가문항$답변|평가문항$답변) -->
          <!-- // 만족도 -->
          <!-- 도움이 되요 -->
        
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="537290" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/229322ABEE?mbrNo=1212162&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/229322ABEE?mbrNo=1212162&amp;logFilter=Y';">용맹까미</em>
                  <em class="dd date">2022.08.04</em>
              </div>
              <!-- // 작성자 기본정보  -->
              <!-- 수정/삭제 메뉴 -->
              <!-- 로그 후기 -->
                  <form id="updateForm317321">
                    <input type="hidden" name="goodsId" value="GI251050011">
                    <input type="hidden" name="ordNo" value="">
                    <input type="hidden" name="ordDtlSeq" value="">
                    <input type="hidden" name="goodsEstmTp" value="PLG">
                    <input type="hidden" name="goodsEstmNo" value="537290">
                     <input type="hidden" name="petLogNo" value="317321">
                  </form>
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="layerPetLogReport(317321 , 'Y' , this);" data-pet-log-no="317321" data-rpt-yn="N">신고</button></li>	
                        </ul>
                    </div>
                  </nav>
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
            </div>
            
            	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
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
                  <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImg" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/1212162/aa0a536b-0e58-4b75-b9b7-bdcfba8e990e.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
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
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG">박스를 열자마자 나는 향이 정말 상쾌하니 좋네요ㅎㅎ
  와 이거 진짜 좋다. 침대에 뿌려놨는데 마르기도 금방 마르고 무엇보다 방 전체에서 시원하고 깔끔한 느낌의 공기가 느껴짐.
  마르고 나면 냄새는 느낌만 남기고 사라지기 때문에 코 아프지도 않음. 갠적으로 증류수 탈취제는 이런 느낌 안 났던거 같은데 진짜 오일이여서 다른건지 그냥 내 기분탓인건지는 모르겠지만 아주 맘에 듦dddd
   
          <!-- // 후기 내용 -->
          <!-- 만족도 (평가문항$답변|평가문항$답변) -->
          <!-- // 만족도 -->
          <!-- 도움이 되요 -->
         
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="524161" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/587FC1ECB1?mbrNo=971147&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/587FC1ECB1?mbrNo=971147&amp;logFilter=Y';">55555</em>
                  <em class="dd date">2022.07.19</em>
              </div>

             	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
					</div>
              <!-- 로그 후기 -->
                  <form id="updateForm306159">
                    <input type="hidden" name="goodsId" value="GI251050011">
                    <input type="hidden" name="ordNo" value="">
                    <input type="hidden" name="ordDtlSeq" value="">
                    <input type="hidden" name="goodsEstmTp" value="PLG">
                    <input type="hidden" name="goodsEstmNo" value="524161">
                     <input type="hidden" name="petLogNo" value="306159">
                  </form>
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="layerPetLogReport(306159 , 'Y' , this);" data-pet-log-no="306159" data-rpt-yn="N">신고</button></li>	
                        </ul>
                    </div>
                  </nav>
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
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
                  <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImg" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/971147/8fc7e044-4ccc-464e-ae45-4c3734c6dbd5.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
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
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG">안써봤지만 좋겠죠??
   
         
          
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="468205" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/B69D05E84B?mbrNo=1015907&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/B69D05E84B?mbrNo=1015907&amp;logFilter=Y';">백동동</em>
                  <em class="dd date">2022.05.05</em>
              </div>
              <!-- // 작성자 기본정보  -->
            	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
					</div>
              <!-- 일반 후기 -->
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                      <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="goodsComment.commentReportPop(this)" data-goods-estm-no="468205" data-rpt-yn="N">신고</button></li>
                        </ul>
                    </div>
                  </nav>
                <!-- //일반 후기 -->
                <!-- // 수정/삭제 메뉴 -->
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
              <!-- 일반후기 일 경우 -->
                <!-- // 일반후기 일 경우 -->
              <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
            <div class="sld-nav">
              <button type="button" class="bt prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전</button>
              <button type="button" class="bt next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음</button>
            </div>
          </div>
          <!-- // 사용자 추가 이미지 -->
          <!-- 후기 내용 -->
          <!-- 일반후기 일 경우 -->
              <!-- // 일반후기 일 경우 -->
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="NOR">좋아요.
  집에 안좋은 냄새 날때마다 뿌릴려고 피톤치드오일 사서 썼는데, 이 제품 향도 좋고 냄새도 잘 잡아주네요.</div>
     
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="448244" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/D275A08C9D?mbrNo=1008361&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/D275A08C9D?mbrNo=1008361&amp;logFilter=Y';">메쫑사탕</em>
                  <em class="dd date">2022.04.12</em>
              </div>
              <!-- // 작성자 기본정보  -->
              <!-- 수정/삭제 메뉴 -->
              <!-- 로그 후기 -->
                  <form id="updateForm240594">
                    <input type="hidden" name="goodsId" value="GI251050011">
                    <input type="hidden" name="ordNo" value="">
                    <input type="hidden" name="ordDtlSeq" value="">
                    <input type="hidden" name="goodsEstmTp" value="PLG">
                    <input type="hidden" name="goodsEstmNo" value="448244">
                     <input type="hidden" name="petLogNo" value="240594">
                  </form>
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	<span class="material-symbols-outlined">
									expand_more
									</span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="layerPetLogReport(240594 , 'Y' , this);" data-pet-log-no="240594" data-rpt-yn="N">신고</button></li>	
                        </ul>
                    </div>
                  </nav>
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
            </div>
            
            <!-- 견종/묘종 정보 -->
             	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
					</div>
              <!-- // 견종/묘종 정보 -->
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
                  <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                          <a href="javascript:;" class="pic"><img class="img" name="plgImg" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/1008361/aa9fff8d-789d-4453-950b-b2cb0595d4aa.jpg?type=f&amp;w=600&amp;h=799&amp;quality=90&amp;align=4" alt="첨부이미지" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'"></a>
                        </li>
                    </ul>
              <!-- // 로그후기 일 경우 -->
              <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
            <div class="sld-nav">
              <button type="button" class="bt prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전</button>
              <button type="button" class="bt next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음</button>
            </div>
          </div>
       
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG">의외로 향이 섞여도 괜찮아요 😊 
   
         
        
        </div>
      </div>
    </li>
  <li>
      <div class="box" name="estmDataArea" data-goods-id="GI251050011" data-goods-estm-no="447511" data-mig-sno="" data-ord-no="" data-ord-dtl-seq="">
        <div class="rhdt">
          <div class="tinfo">
            <span class="pic" onclick="location.href='/log/indexMyPetLog/D0E09F329E?mbrNo=1083474&amp;logFilter=Y';">
              <img src="common/images/img_default_profile.svg" alt="사진" class="img" onerror="this.src='common/images/img_default_profile.svg'">
            </span>
            <div class="def">
              <!-- 작성자 기본정보 -->
              <div class="writer-info">
                <em class="dd ids" style="cursor: pointer" onclick="location.href='/log/indexMyPetLog/D0E09F329E?mbrNo=1083474&amp;logFilter=Y';">윤콕2</em>
                  <em class="dd date">2022.04.11</em>
              </div>
              <!-- // 작성자 기본정보  -->
              <!-- 수정/삭제 메뉴 -->
              <!-- 로그 후기 -->
                  <form id="updateForm240324">
                    <input type="hidden" name="goodsId" value="GI251050011">
                    <input type="hidden" name="ordNo" value="">
                    <input type="hidden" name="ordDtlSeq" value="">
                    <input type="hidden" name="goodsEstmTp" value="PLG">
                    <input type="hidden" name="goodsEstmNo" value="447511">
                     <input type="hidden" name="petLogNo" value="240324">
                  </form>
                  <nav class="uidropmu dmenu">
                    <button type="button" class="bt st gb" name="menuBtn">	
                      <span class="material-symbols-outlined">
                      expand_more
                      </span></button>
                    <div class="list">
                        <ul class="menu">
                        <li><button type="button" class="bt bt_warn" onclick="layerPetLogReport(240324 , 'Y' , this);" data-pet-log-no="240324" data-rpt-yn="N">신고</button></li>	
                        </ul>
                    </div>
                  </nav>
                  <!-- // 로그 후기 -->
                <!-- // 수정/삭제 메뉴 -->
            </div>
            
            <!-- 견종/묘종 정보 -->
              	<!-- 사용자 아이디 -->
				<div class="spec">
					<em class="b">sssss</em>
					
					</div>
              <!-- // 견종/묘종 정보 -->
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
                  <!-- 영상일 경우 -->
                      <li class="swiper-slide swiper-slide-active" style="margin-right: 8px;">
                        <a href="javascript:;" class="pic">
                          <img class="img" name="plgVdThum" src="https://cnlqblphcryy6381644.cdn.ntruss.com/vod/emBg474213372/video/video_000003.png" alt="첨부이미지_영상썸네일" onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'" data-video_id="emBg474213372" data-mbr_no="1083474">
                          <span class="tag-play"></span>
                        </a>
                      </li>
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
            <div class="msgs" style="white-space: pre-wrap;" data-goods-estm-tp="PLG">오 숲 향 대박이에요!!
  저희 강아지는 소리에 예민해서
  창문을 잘 못열어서 환기가 잘안됩니다ㅠ
  그래서 각종 냄새가 많이나서
  여러가지 제품을 사용해봤는데
  너무 독하거나 탈취가 안되거나 했었는데
  
  ‘제주 숲내음 탈취제’👍👍
  향 너무 좋아요ㅠㅠ
  이제 친구들도 당당하게 초대 할 수 있을꺼 같아여
  
  그리고 보통 탈취제 같은거 뿌리면
  저희 콕이는 계속 재채기하고 엄청 싫어했는데
  이건 그냥 자연스럽게 받아들이는 것 같아여
  
  앞으로도 계속 이용할것같습니다 구욷☺️🤭💜
  
  *제품을 제공받아 작성한 후기입니다
   
          <!-- // 후기 내용 -->
          <!-- 만족도 (평가문항$답변|평가문항$답변) -->
          <!-- // 만족도 -->
          <!-- 도움이 되요 -->
          
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
  </script></ul>
           <!-- 😎등록된 후기가 없는 경우 -->
          <div class="nodata" id="commentNodata" style="display: none;">등록된 후기가 없습니다.</div>
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
  
 
  
  
                <!-- 함께 많이 보는 상품 -->
                <script type="text/javascript">
                  var thisParam = "goodsId=GI251050011";
                  $.get("/goods/listGoodsRecentDetail?"+thisParam,function (html) {$("#qnaArea").after(html);ui.shop.recomd.using();});
                </script>
  
                <!-- 사용자 맞춤 추천상품 -->
                <script type="text/javascript">
                  var thisParam = "goodsId=GI251050011&cateCdL=12565&bndNo=1834";
                  $.get("/goods/listGoodsCustomDetail?"+thisParam,function (html) {$("#goodsCommentArea").before(html);ui.shop.custm.using();});
                </script>
  

             
              </div>
            </div>
          </div>
        </div>
      </main>
  
      <article class="uiPdOrdPan" id="uiPdOrdPan">
        <input type="hidden" name="goodsItemTotalAmt" id="goodsItemTotalAmt" value="7400">
        <button type="button" class="btDrag">열기/닫기</button>
        <div class="hdts">
          <div class="inr">
            <div class="bts"><button type="button" class="bt close">닫기</button></div>
            <span class="tit">상품선택</span>
          </div>
        </div>
        <script type="text/javascript">
      var termsList = null;
      var kRst = {};
  
      //디폴트 kcb 콜백
      var defaultOkCertOption = {
          callBack : function(data){
              kRst = data;
          }
      };
  
      // default 콜백 set kcb 콜백 SET
      function setOkCeretCallBack(callBack){
          if(callBack != undefined){
              defaultOkCertOption.callBack = callBack;
          }
      }
  
      //GSR 약관 동의 후, KCB 콜백 호출 전 , 유효성 검증
      function setGsInsertAndOkCertCallBack(callBack){
          defaultOkCertOption.callBack = function(data){
              var resultCode = data['RSLT_CD'];
              if(resultCode == "B000"){
                  //기존에 인증한 값이 있는지 확인
                  var options = {
                      url :"/mypage/info/ci-check"
                      ,	data : { ciCtfVal : data['CI'], mobile: data['TEL_NO'], mbrNm : data['RSLT_NAME'], }
                      ,	done : function(result){
                              //유효성 통과시
                              if(result.resultCode == "S"){
                                  var mbrNm = data['RSLT_NAME'];
                                  var mobile = data['TEL_NO'];
                                  var birth = data['RSLT_BIRTHDAY'];
                                  var ciCtfVal = data['CI'];
                                  var diCtfVal = data['DI'];
                                  var mobileCd = data['TEL_COM_CD'];
                                  var ntnGbCd = "10";
                                  var gdGbCd = "20";
                                  var reJoinYn = data['RE_JOIN_YN'];
  
                                  //본인 인증 후, 마케팅 수신여부 체크 -> 080
                                  var mkngRcvYn = result.mkngRcvYn;
  
                                  //내,외국인 확인
                                  if(data.RSLT_NTV_FRNR_CD == "F"){
                                      ntnGbCd = "20";
                                  }
                                  //성별 확인
                                  if(data.RSLT_SEX_CD == "M"){
                                      gdGbCd = "10";
                                  }
  
                                  //내 정보 관리
                                  $("#mobile , [name='mobile']").val(mobile);
                                  $("#mbrNm , [name='mbrNm']").val(mbrNm);
                                  $("[name='ciCtfVal']").val(ciCtfVal);
                                  $("[name='ntnGbCd']").val(ntnGbCd);
                                  
                                  // APDO-799 회원정보 수정 본인인증 후 ci 값이 있을시 본인인증 영역 제거
                                  if ( location.pathname.indexOf("indexManageDetail") > -1 && $("[name='ciCtfVal']").val() !='' ) {
                                     $("#identityLi").hide();
                                  }
                                  var newData = {
                                          ciCtfVal : ciCtfVal
                                      ,   diCtfVal : diCtfVal
                                      ,   ntnGbCd : ntnGbCd
                                      ,   mobileCd : mobileCd
                                      ,   gdGbCd : gdGbCd
                                      ,   birth : birth
                                      ,   mbrNm : mbrNm
                                      ,   mobile : mobile
                                      ,   mkngRcvYn : mkngRcvYn
                                      ,   reJoinYn : reJoinYn
                                  };
  
                                  var options = {
                                      url : "/gsr/updateGsrConnectInfo"
                                      ,   data : newData
                                      ,   done : function(result){
                                              if(result.resultCode == "LGN0000"){
                                                  location.href = "/logout";
                                              }
                                              var gsptNo = result.gsptNo;
                                              if($("#gsptNo").length > 0){
                                                  $("#gsptNo").val(gsptNo);
                                              }
                                              newData.custNo = gsptNo;
                                              callBack(newData);
                                      }
                                  };
                                  waiting.start();
                                  ajax.call(options);
                              }else{
                                  var txt = result.resultMsg;
                                  var config = {
                                          txt : txt
                                      ,	ybt : "확인"
                                  };
                                  if(result.resultCode == "MBR0017"){
                                      config.ycb = function(){
                                          window.location.href = "/logout?returnUrl=/indexLogin";
                                      };
                                  }
                                  ui.alert(config.txt,{
                                          ycb : config.ycb
                                      ,   ybt : "확인"
                                  });
                              }
                      }
                  };
                  ajax.call(options);
              }else{
                  if(resultCode != "B123"){
                      ui.alert("<div id='alertContentDiv'>본인인증에 실패했습니다.</div>");
                  }
              }
          }
      }
  
      //CI 인증 후, kcb 콜백 처리
      function okCertCallback(result){
          var data = JSON.parse(result);
          defaultOkCertOption.callBack(data);
      }
  
 
  </script><script type="text/javascript">
    var indexOrdpan = 1;
  
    function toastSelector(type, ordQty, stkQty){
      if(type == 'MAX') {
        if(ordQty!=null){
          if(stkQty > 0 && stkQty<ordQty){
            fnGoodsUiToast("재고 부족으로 "+ stkQty+"개까지 구매할 수 있어요");
          }else{
            fnGoodsUiToast("최대 " + ordQty + "개까지 구매할 수 있어요", "maxOrdQty");
          }
        }else{
          fnGoodsUiToast("최대 " + stkQty + "개까지 구매할 수 있어요", "maxOrdQty");
        }
      } else if(type == 'MIN') {
        //type == 'MIN'
        fnGoodsUiToast("최소 " + ordQty + "개이상 구매할 수 있어요", "minOrdQty");
      }
    }
  
    $(document).ready(function(){
      var goodsCstrtTpCd = "ITEM";
      // 수량 직접 변경시 가격 및 총수량 계산
      if(goodsCstrtTpCd == "ITEM" || goodsCstrtTpCd == "SET") {
        var maxOrdQty = $("input[name=buyQty]").attr("data-max-ord-qty") == 0 ?  null :  parseInt($("input[name=buyQty]").attr("data-max-ord-qty"))
        var firstStk =getStkQty("GI251050011");
        $("input[name=buyQty]").attr("data-stk",firstStk);
        $(document).off("click", ".uispiner .bt");
        $(document).off("click", ".uispiner .plus");
        $(document).on("click",".uispiner .plus",function(e) {
          e.preventDefault();
          var stkQty =getStkQty("GI251050011");
          $("input[name=buyQty]").attr("data-stk",stkQty);
          var $qtyObj = $(this).siblings(".amt");
  
          //최대 구매 갯수
          var maxQty = 0;
          if(stkQty == 0) {
            //재고가 0일 때
            if(maxOrdQty == 0 || maxOrdQty == null) {
              maxQty = 9999;
            } else {
              maxQty = parseInt(maxOrdQty != null ? maxOrdQty : 0);
            }
          } else if(stkQty != 0) {
            //재고가 0이 아닐 경우
            if(maxOrdQty == 0 || maxOrdQty == null) {
              //최대 구매 갯수가 없을 경우
              maxQty = parseInt(stkQty != null ? stkQty : 0);
            } else {
              //최대 구매 갯수가 있을 경우
              maxQty = parseInt(maxOrdQty != null ? maxOrdQty : stkQty);
            }
          } else {
            // what is this case ?
            maxQty = 9999;
          }
  
          //최소 구매 갯수
          var minOrdQty = $qtyObj.data("minOrdQty") ? $qtyObj.data("minOrdQty") : 1;
          var cartQty = parseInt($qtyObj.val());
          var ordmkiYn = $qtyObj.data("ordmkiYn") ? $qtyObj.data("ordmkiYn") : "N";
          stkQty = (stkQty > maxQty) ? stkQty : maxQty;
  
          if (!maxQty || parseInt($qtyObj.val()) < maxQty) {
            cartQty++;
            var itemNo = $qtyObj.data("itemNo");
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty);
            var goodsCstrtTpCd = "ITEM";
            if(ordmkiYn == "Y"){	// 각인여부
              indexOrdpan++;
              if(!document.getElementById('spanOrdmki_'+ itemNo + '_' + cartQty)){
                var spanText = "";
                var n2Class = "";
                if(9 < cartQty){
                  n2Class = "n2";
                }
                spanText += "<span class='input nms "+n2Class+"' id='spanOrdmki_"+itemNo+"_"+cartQty+"'>";
                spanText += "	<i class='n'>"+cartQty+".</i><input type='text' name='inputOrdmki' id='inputOrdmki_"+itemNo+"_"+cartQty+"' placeholder='각인문구를 입력해주세요' title='각인문구' value='' maxlength='40' onkeydown='javascript:fnCheckOrdmkiTextLength(this);' >";
                spanText += "</span>";
                var gudText = "<div class='gud'>상품을 담기전에 입력하신 내용을 한번 더 확인해주세요.</div>";
                $("#divOrdmki_"+itemNo + " .gud").remove();
                $("#divOrdmki_"+itemNo).append(spanText + gudText);
              }
            }
  
            if(goodsCstrtTpCd == "ITEM" || goodsCstrtTpCd == "SET"){
              fnClickItemTotalCnt(itemNo, cartQty);
            }else if(goodsCstrtTpCd == "PAK" || goodsCstrtTpCd == "ATTR"){
              var originSaleAmt = $qtyObj.data("saleAmt");
              fnClickPaksTotalCnt(itemNo, cartQty, originSaleAmt);
            }
          }else{
              cartQty = maxQty;
              var itemNo = $qtyObj.data("itemNo");
              $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty);
              toastSelector('MAX', maxOrdQty,stkQty)
          }
        });
  
        $(document).off("click", ".uispiner .bt");
        $(document).off("click", ".uispiner .minus");
        $(".uispiner .minus").prop("disabled", "");
        $(document).on("click",".uispiner .minus",function(e){
          e.preventDefault();
          var stkQty = getStkQty("GI251050011");
          $("input[name=buyQty]").attr("data-stk",stkQty);
          var $qtyObj = $(this).siblings(".amt");
          //최대 구매 갯수
          var maxQty = 0;
          if(stkQty == 0) {
          //재고가 0일 때
            if(maxOrdQty == 0 || maxOrdQty == null) {
              maxQty = 9999;
            } else {
              maxQty = parseInt(maxOrdQty != null ? maxOrdQty : 0);
            }
          } else if(stkQty != 0) {
            //재고가 0이 아닐 경우
            if(maxOrdQty == 0 || maxOrdQty == null) {
              //최대 구매 갯수가 없을 경우
              maxQty = parseInt(stkQty != null ? stkQty : 0);
            } else {
              //최대 구매 갯수가 있을 경우
              maxQty = parseInt(maxOrdQty != null ? maxOrdQty : stkQty);
            }
          } else {
            // what is this case ?
            maxQty = 9999;
          }
  
          //최소 구매 갯수
          var minOrdQty = $qtyObj.data("minOrdQty") ? $qtyObj.data("minOrdQty") : 1;
          var cartQty = parseInt($qtyObj.val());
          var ordmkiYn = $qtyObj.data("ordmkiYn") ? $qtyObj.data("ordmkiYn") : "N";
          if(cartQty>maxQty){
            cartQty=maxQty
            var itemNo = $qtyObj.data("itemNo");
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty);
            toastSelector('MIN', maxOrdQty,stkQty)
            return;
          }
          if(cartQty > minOrdQty) {
            cartQty--
            var itemNo = $qtyObj.data("itemNo");
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty);
            if(indexOrdpan <= 0){
              indexOrdpan = 1;
            }else{
              indexOrdpan--;
            }
  
            var goodsCstrtTpCd = "ITEM";
  
            if(ordmkiYn == "Y"){
              $("[id^=spanOrdmki_" + itemNo + "_]").each(function(index){
                var idx = index + 1;
                if(cartQty < idx){
                  $(this).remove();
                }
              });
            }
  
            if(goodsCstrtTpCd == "ITEM" || goodsCstrtTpCd == "SET"){
              fnClickItemTotalCnt(itemNo, cartQty);
  
            }else if(goodsCstrtTpCd == "PAK" || goodsCstrtTpCd == "ATTR"){
              var originSaleAmt = $qtyObj.data("saleAmt");
              fnClickPaksTotalCnt(itemNo, cartQty, originSaleAmt);
            }
          }else{
            if(cartQty == minOrdQty){
              cartQty = parseInt($qtyObj.val());
            }else {
              cartQty = minOrdQty;
            }
            var itemNo = $qtyObj.data("itemNo");
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty);
            toastSelector('MIN', minOrdQty, stkQty);
          }
        });
      }
    });
  
  
    // ITEM, SET
    function fnClickItemTotalCnt(itemNo, cartQty){
      var priceCnt = Number(cartQty);
      var originPrice = Number("7400");
      var priceAmt = valid.numberWithCommas(originPrice * priceCnt);
      $("#emPriceTotalCnt").html(priceCnt);
      $("#emPriceTotalAmtItem").html(priceAmt);
      $("#emPriceTotalAmt").html(priceAmt);
    }
  
    // PAK, ATTR
    function fnClickPaksTotalCnt(itemNo, cartQty, originSaleAmt){
  
      var totalPriceAmt = 0;
      var toalCartQtyCnt = 0;
      $("[id^=selected_itemNo_]").each(function(index){
        var itemNoSelected = $("[id^=selected_itemNo_]").eq(index).val();
        var cartQtyNumber = Number($("#buyQty"+itemNoSelected).val());
        //console.log("cartPriceNumber : " + Number(originSaleAmt) + ", cartQtyNumber : " + cartQtyNumber);
        if(itemNoSelected == itemNo){
          cartQtyNumber = Number(cartQty);
          var priceAmt = valid.numberWithCommas(Number(originSaleAmt * Number(cartQty)));
          $("#buyPriceRight"+itemNoSelected).html(priceAmt);
          $("#inputBuyPriceRight"+itemNoSelected).val(priceAmt);
        }
        totalPriceAmt += Number(removeComma($("#inputBuyPriceRight"+itemNoSelected).val()));
        toalCartQtyCnt = (toalCartQtyCnt + cartQtyNumber);
      });
  
      $("#emPriceTotalCnt").html(toalCartQtyCnt);
      $("#emPriceTotalAmt").html(valid.numberWithCommas(totalPriceAmt));
  
    }
  
    function fnChangebuyQty(obj, goodsId){
      var $qtyObj = $("#"+obj.id);
      var itemNo = $qtyObj.data("itemNo");
      var goodsCstrtTpCd = "ITEM";
      //재고
      var stkQty = getStkQty(goodsId);
      var maxOrdQty =  $qtyObj.attr("data-max-ord-qty") == 0 ?  null :  parseInt($qtyObj.attr("data-max-ord-qty"))
      var minOrdQty = $qtyObj.data("minOrdQty") ? $qtyObj.data("minOrdQty") : 1;
      var ordmkiYn = $qtyObj.data("ordmkiYn") ? $qtyObj.data("ordmkiYn") : "N";
  
      var maxQty = 0;
      if(stkQty == 0) {
        //재고가 0일 때
        if(maxOrdQty == 0 || maxOrdQty == null) {
          maxQty = 9999;
        } else {
          maxQty = parseInt(maxOrdQty != null ? maxOrdQty : 0);
        }
      } else if(stkQty != 0) {
        //재고가 0이 아닐 경우
        if(maxOrdQty == 0 || maxOrdQty == null) {
          //최대 구매 갯수가 없을 경우
          maxQty = parseInt(stkQty != null ? stkQty : 0);
        } else {
          //최대 구매 갯수가 있을 경우
          maxQty = parseInt(maxOrdQty != null ? maxOrdQty : stkQty);
        }
      } else {
        // what is this case ?
        maxQty = 9999;
      }
  
      var cartQty = $qtyObj.val();
      cartQty = parseInt(cartQty.replace(/[^0-9]/g, ''))
      // MAX 구매수량 제한
      if(cartQty > maxQty){
        cartQty = maxQty;
        //최대 구매 갯수보다 재고가 작을 때
        stkQty = (stkQty > maxQty) ? stkQty : maxQty;
        toastSelector('MAX', maxOrdQty, stkQty)
      }
  
      // MIN 구매수량 제한
      if(cartQty < minOrdQty){
        toastSelector('MIN', minOrdQty, stkQty);
        cartQty = minOrdQty;
      }
  
      $qtyObj.val(cartQty).attr("value",cartQty);
  
      var goodsCstrtTpCd = "ITEM";
  
      // 수량 직접 변경시 가격 및 총수량 계산
      if(goodsCstrtTpCd == "ITEM" || goodsCstrtTpCd == "SET"){
        fnClickItemTotalCnt(itemNo, cartQty);
  
      }else if(goodsCstrtTpCd == "PAK" || goodsCstrtTpCd == "ATTR"){
        var originSaleAmt = $qtyObj.data("saleAmt");
        fnClickPaksTotalCnt(itemNo, cartQty, originSaleAmt);
      }
  
      // 제작상품 시 입력폼 수정
      if(ordmkiYn == "Y"){
        var inputOrmkiLen = $("[id^=inputOrdmki_"+itemNo+"_]").length;
  
        if(inputOrmkiLen < cartQty){	// 변경된 값이 기존값 보다 클때 ( + 기능 )
  
  
          var spanText = "";
          $("#divOrdmki_"+itemNo + " .gud").remove();
          for(var i = 1; i <= cartQty; i++){
            if(!document.getElementById('spanOrdmki_'+ itemNo + '_' + i)){
              spanText += "<span class='input nms' id='spanOrdmki_"+itemNo+"_"+i+"'>";
              spanText += "	<i class='n'>"+i+".</i><input type='text' name='inputOrdmki' id='inputOrdmki_"+itemNo+"_"+i+"' placeholder='각인문구를 입력해주세요' title='각인문구' value='' maxlength='40' onkeydown='javascript:fnCheckOrdmkiTextLength(this);'>";
              spanText += "</span>";
            }
          }
          var gudText = "<div class='gud'>상품을 담기전에 입력하신 내용을 한번 더 확인해주세요.</div>";
          $("#divOrdmki_"+itemNo).append(spanText + gudText);
  
        }else {	// 변경된 값이 기존값 작을 때 ( - 기능 )
          for(var i = 1; i <= inputOrmkiLen; i++){
            if(cartQty < i){
              $("#divOrdmki_"+itemNo + " #spanOrdmki_" + itemNo + "_" + i).remove();	// 항목 삭제
            }
          }
        }
      }
    }
  
    function fnCartItems(nowBuyYn){
      var isLogin = "true";
      // 요약정보에서 호출시 check 		
      var uiPdOrdPanClass = $("#uiPdOrdPan").attr("class");
      var productOptionClass = $("#productOption").attr("class");
  
      var setCartItemsCheck = false;
      // 비로그인 상태에서 장바구니기능이 가능하도록 처리.21.03.05
  
      if(uiPdOrdPanClass == undefined){
        // 상품 요약일때
        if(productOptionClass.indexOf("none") > -1){
          setCartItemsCheck = true;
        }
      }else if("00" === "20" ){
        // 스탬프 상품일때 로그인시 장바구니 추가 가능
        if(!funcLoginCheck(isLogin)){
          return;
        }
        setCartItemsCheck = true;
      }else{
        // 상품 상세일때				
        if(uiPdOrdPanClass.indexOf("open") > -1){
          setCartItemsCheck = true;
        }
      }
  
      if(setCartItemsCheck){
        var goodsCstrtTpCd = 'ITEM';
        var goodsId = 'GI251050011';
        var itemNo = '412810';
        var dispTpcd = '00';
        var fstPurchBeneTgYn = 'N';
        var userAuthenticationYn = 'Y';
        var fstPurchRejoinYn = 'N';
        var totalCnt = $("#emPriceTotalCnt").text().trim();
        var compGbCd = '10';
        // alert("compGbCd=["+compGbCd+"]");
        if(goodsCstrtTpCd == "ITEM" || goodsCstrtTpCd == "SET"){
  
          if(totalCnt < 1){
            ui.alert("상품 수량을 선택해주세요.");
            return;
          }
  
          if("" === "SOON"){
            return;
          }
          
          var ordmkiYn = "N";
          var inputOrdmki = "";
          if(ordmkiYn == "Y" && goodsCstrtTpCd == "ITEM"){
  
            var inputOrmkiLen = $("[id^=inputOrdmki_"+itemNo+"_]").length;
  
            for(var i=1; i <= inputOrmkiLen; i++){
              var tempText = $("#inputOrdmki_"+itemNo+"_"+i).val().trim();
              if(tempText == ""){
                ui.alert("각인문구를 입력해주세요");
                $("#inputOrdmki_"+itemNo+"_"+i).val("");
                $("#inputOrdmki_"+itemNo+"_"+i).focus();
                return;
              }else{
                if(i == 1){
                  inputOrdmki = tempText;
                }else{
                  inputOrdmki = inputOrdmki + "|" + tempText;
                }
              }
            }
          }
          // APET-1512 첫구매 상품의 구매하기 장바구니 버튼 클릭시 스크립트
          console.log("fstPurchBeneTgYn=["+fstPurchBeneTgYn+"]");
          if(dispTpcd=='10'){
  
            if(!funcLoginCheck(isLogin)){
              return;
            }
  
            if(!funcUserAuthenticationYn(userAuthenticationYn)){
              return;
            }
  
            // APET-1627: 첫구매상품 구매 프로세스 순서 변경
            if(!funcFstPurchGoodsCart(fstPurchBeneTgYn, fstPurchRejoinYn)){
              return;
            }
  
            if(!funcNowBuy(nowBuyYn,inputOrdmki,goodsId,itemNo,totalCnt)){
              return;
            }
  
            if(!funcAddCartCnt(totalCnt)){
              return;
            }
  
            fnAddCart(goodsId, itemNo, totalCnt, nowBuyYn, '', inputOrdmki);
          }else{
            // 장바구니 이동
            if(nowBuyYn == "N" || isLogin == "true"){
              //로그인 화면이동
              fnAddCart(goodsId, itemNo, totalCnt, nowBuyYn, '', inputOrdmki);
            }else{
              ui.confirm('로그인 후 서비스를 이용할 수 있어요.<br>로그인 할까요?', { // 컨펌 창 옵션들
                ycb: function () {
                  var url = encodeURIComponent(document.location.href);
                  if("false" == "true" && document.location.href.indexOf("/tv/series/indexTvDetail") > -1){
                    fncAppCloseMoveLogin(url);
                  }else{
                    document.location.href = '/indexLogin?returnUrl=' + url;
                  }
                },
                ncb: function () {
                  return false;
                },
                ybt: "로그인", // 기본값 "확인"
                nbt: "취소"  // 기본값 "취소"
              });
            }
          }
        }else if(goodsCstrtTpCd == "PAK" || goodsCstrtTpCd == "ATTR"){
          if(nowBuyYn == "N" || isLogin == "true"){
            //로그인 화면이동
            fnAddPaksCart(nowBuyYn);
          }else{
            ui.confirm('로그인 후 서비스를 이용할 수 있어요.<br>로그인 할까요?', { // 컨펌 창 옵션들
              ycb: function () {
                var url = encodeURIComponent(document.location.href);
                if("false" == "true" && document.location.href.indexOf("/tv/series/indexTvDetail") > -1){
                  fncAppCloseMoveLogin(url);
                }else{
                  document.location.href = '/indexLogin?returnUrl=' + url;
                }
              },
              ncb: function () {
                return false;
              },
              ybt: "로그인", // 기본값 "확인"
              nbt: "취소"  // 기본값 "취소"
            });
          }
        }
      }
    }
  
    //APET-1545 첫구매 상품 구매시 실명인증여부 확인
    function funcUserAuthenticationYn(userAuthenticationYn){
      if(userAuthenticationYn!="Y"){
        ui.confirm('앗, 본인인증을 먼저 진행해주세요! <br>첫구매 상품을 구매하려면 본인확인이 필요해요', { // 컨펌 창 옵션들
          ycb: function () {
            //document.location.href = '/mypage/info/indexManageDetail';
            fnGetGsrPoint();
          },
          ncb: function () {
            return false;
          },
          ybt: "본인인증하기", // 기본값 "확인"
          nbt: "취소"  // 기본값 "취소"
        });
        return false;
      }else{
        return true;
      }
    }
  
    function funcLoginCheck(isLogin){
      if(isLogin == "false"){
        ui.confirm('로그인 후 서비스를 이용할 수 있어요.<br> 로그인 할까요?', { // 컨펌 창 옵션들
          ycb: function () {
            var url = encodeURIComponent(document.location.href);
            if("false" == "true" && document.location.href.indexOf("/tv/series/indexTvDetail") > -1){
              fncAppCloseMoveLogin(url);
            }else{
              document.location.href = '/indexLogin?returnUrl=' + url;
            }
            return false;
          },
          ncb: function () {
            return false;
          },
          ybt: "로그인", // 기본값 "확인"
          nbt: "취소"  // 기본값 "취소"
        });
        return false;
      }else{
        return true;
      }
  
    }
    function funcAddCartCnt(totalCnt){
      if(totalCnt!=1){
        ui.alert('첫구매딜 상품은 1개만 구매할 수 있어요.');
        return false;
      }else{
        return true;
      }
  
    }
    function funcFstPurchGoodsCart(fstPurchBeneTgYn, fstPurchRejoinYn){
      if(fstPurchBeneTgYn=="N"){
        // APET-1627 구매 이력이 있는 계정 탈퇴 후 재가입 고객 alert 분기
        if (fstPurchRejoinYn=="Y") {
          ui.alert('혹시 첫 방문이 아니신가요?<br> 아쉽지만 첫구매딜은 신규 가입 회원만 구매할 수 있어요 TT');
        } else {
          ui.alert('아쉽지만 첫 구매딜 대상 고객이 아니에요.<br>상품 구매 내역이 있는지 확인해 주세요 :)<br><br> ※ 어바웃펫 최초 주문 시 구매 가능 ');
        }
        return false;
      }else{
        return true;
      }
  
    }
    function funcNowBuy(nowBuyYn,inputOrdmki,goodsId,itemNo,totalCnt){
      if(nowBuyYn=="Y"){
        ui.confirm('첫구매딜 상품은 장바구니에 담은 후 구매할 수 있습니다.<br> 장바구니에 담을까요?', { // 컨펌 창 옵션들
          ycb: function () {
  
            if(funcAddCartCnt(totalCnt)){
              fnAddCart(goodsId, itemNo, totalCnt, "N", '', inputOrdmki);
            }
            return false;
          },
          ncb: function () {
            return false;
          },
          ybt: "담기", // 기본값 "담기"
          nbt: "취소"  // 기본값 "취소"
        });
        return false;
      }else{
        return true;
      }
  
    }
  
    //App일때 영상상세에서 로그인 화면으로 화면 닫고 이동해야해서 추가된 함수
    function fncAppCloseMoveLogin(url){
      //데이터 세팅
      toNativeData.func = "onCloseMovePage";
      toNativeData.moveUrl = "https://aboutpet.co.kr/indexLogin?returnUrl="+url;
      //APP 호출
      toNative(toNativeData);
    }
  
    // 텍스트 인코딩
    function fnTextEncode(str){
      if (window.TextEncoder) {
        return new TextEncoder('utf-8').encode(str);
      }
      var utf8 = unescape(encodeURIComponent(str));
      var result = new Uint8Array(utf8.length);
      for (var i = 0; i < utf8.length; i++) {
        result[i] = utf8.charCodeAt(i);
      }
      return result;
    }
  
    // 비로그인 함수처리.
    function fnIsLogin(){
      ui.confirm("로그인 후 서비스를 이용할 수 있어요.<br>로그인 할까요?",{
        ycb : function(){
          //로그인 화면이동
          location.href = "/indexLogin";
        }
      });
    }
  
    /*
     * commonFunc.insertCart
    * */
    function fnAddAttrsCart(){
      var listPaks = [];
      var listQtys = [];
      var goodsId = "GI251050011";
      $("[id^=selected_attrNo_]").each(function(index){
        var attrNo = $("[id^=selected_attrNo_]").eq(index).val();
        var subGoodsId = $("#selected_subGoodsId_"+attrNo).val();
        var cartQtyNumber = Number($("#buyQty"+attrNo).val());
        var goodsIdStr = subGoodsId + ":" + attrNo + ":" + (goodsId ? goodsId : "");
        // listPaks.push(goodsIdStr);
        // listQtys.push(cartQtyNumber);
      });
      // fnGoodsInsertCart(listPaks, listQtys, 'N');
    }
  
    function fnAddPaksCart(nowBuyYn){
      var listPaks = [];
      var listQtys = [];
      var pakGoodsId = "GI251050011";
  
      var mkiGoodsContChk = false;
  
      $("[id^=selected_itemNo_]").each(function(index){
  
        var itemNo = $("[id^=selected_itemNo_]").eq(index).val();
        var $qtyObj = $("#buyQty"+itemNo);
        var mkiGoodsYn = $qtyObj.data("ordmkiYn") ? $qtyObj.data("ordmkiYn") : "N";	//  주문제작 여부
        var inputOrdmki = "";
  
        if(mkiGoodsYn == "Y"){
          $("[id^=inputOrdmki_"+itemNo+"_]").each(function(ordmkiIdx){
  
            var idx = Number(ordmkiIdx)+1;
            var tempText = $("#inputOrdmki_"+itemNo+"_"+idx).val().trim();
  
            if(tempText == ""){
              ui.alert("각인문구를 입력해주세요");
              $("#inputOrdmki_"+itemNo+"_"+idx).val("");
              $("#inputOrdmki_"+itemNo+"_"+idx).focus();
              mkiGoodsContChk = true;
            }else{
              if(idx == 1){
                inputOrdmki = tempText;
              }else{
                inputOrdmki = inputOrdmki + "|" + tempText;
              }
            }
          });
        }
  
        var subGoodsId = $("#selected_subGoodsId_"+itemNo).val();
        var cartQtyNumber = Number($("#buyQty"+itemNo).val());
        var goodsIdStr = subGoodsId + ":" + itemNo + ":" + (pakGoodsId ? pakGoodsId : "") + ":" + (mkiGoodsYn ? mkiGoodsYn : "") + ":" + (inputOrdmki ? inputOrdmki : "");
  
        listPaks.push(goodsIdStr);
        listQtys.push(cartQtyNumber);
        
        // Amplitude Send : 바로 구매하기 버튼 클릭
        if(nowBuyYn =='Y'){
          var thisDiscountRate = 0;
          var amplitudeAttr = $("#liOrdpanRight"+itemNo).find(".amplitudeAttr").text().replace(/\n|\r|\s*/g, "");
          var thisPrice = "14900";
          var thisDiscountPrice = "7400";
          var thisDiscountRate;
          if(thisPrice != "" && thisDiscountPrice !=""){
            thisDiscountRate = Math.floor(100-((parseInt(thisDiscountPrice) * 100)/parseInt(thisPrice)));
          }
          var amplitudeOrderPdData = {
              productId : $qtyObj.data("subgoodsid"),
              productName : "바른 제주 숲내음 탈취제 ",
              quantity : cartQtyNumber,
              options : amplitudeAttr,
              brandId : "1834",
              brandName : "바른",
              categoryName1depth : '고양이',
              categoryName2depth : '화장실/위생',
              categoryName3depth : '탈취/소독/배변봉투',
              discountRate : thisDiscountRate,
              keyword : (typeof goodsDetailSrchWord != "undefined")?goodsDetailSrchWord:((typeof searchResult != "undefined")? searchResult.srchWord:"")
            }
          sendAmplitude("click_product_order_button", amplitudeOrderPdData);
        }
      });
  
      // 제작 내용 체크.
      if(mkiGoodsContChk){
        return;
      }
  
  
      // 상품 미선택시
      if(listPaks.length < 1){ // 상품 미선택시
        ui.toast("상품을 선택해주세요");
        return;
      }else{
        for(var i = 0; i < listQtys.length; i++){
          if(Number(listQtys[i]) < 1){
            ui.alert("상품 수량을 선택해주세요.");
            return;
          }
        }
      }
  
      var salePsbCdLen = $("[id^=selected_salePsbCd_]").length;
  
      if(nowBuyYn == "Y"){
        for(var i = 0; i < salePsbCdLen; i++){
          var salePsbCd = $("[id^=selected_salePsbCd_]").eq(i).val();
          if(salePsbCd == "10"){ // 판매중지
            ui.alert("판매 중지되어 구매하실 수 없는 상품이에요");
            return;
          }else if(salePsbCd == "20"){ // 판매종료
            ui.alert("판매 종료되어 구매할 수 없는 상품이에요");
            return;
          }else if(salePsbCd == "30"){ // 품절
            ui.alert("품절되어 구매하실 수 없는 상품이에요");
            return;
          }
        }
      }
  
      fnGoodsInsertCart(listPaks, listQtys, nowBuyYn);
    }
  
    function fnAddAttrCart(nowBuyYn){
      var goodsId = "GI251050011";
      $("[id^=selected_attrNo_]").each(function(index){
        var attrNo = $("[id^=selected_attrNo_]").eq(index).val();
        var attrGoodsId = $("#selected_subGoodsId_"+attrNo).val();
        var cartQtyNumber = Number($("#buyQty"+attrNo).val());
        var goodsIdStr = attrGoodsId + ":" + attrNo + ":" + (goodsId ? goodsId : "");
      });
      // fnGoodsInsertCart(listPaks, listQtys, nowBuyYn);
    }
  
  
    function fnAddCart(goodsId, itemNo, cartQty, nowBuyYn, pakGoodsId, mkiGoodsOptContent){
      var mkiGoodsYn = "N";	// 제작 여부
      var goodsIdStr = goodsId + ":" + itemNo + ":" + (pakGoodsId ? pakGoodsId : "") + ":"+(mkiGoodsYn ? mkiGoodsYn : "")+":"+(mkiGoodsOptContent ? mkiGoodsOptContent : "");
  
      // Amplitude Send : 바로 구매하기 버튼 클릭
      if(nowBuyYn =='Y'){
        var thisDiscountRate = 0;
        var amplitudeAttr = $("#liOrdpanRight"+itemNo).find(".amplitudeAttr").text().replace(/\n|\r|\s*/g, "");
        var thisPrice = "14900";
        var thisDiscountPrice = "7400";
        var thisDiscountRate;
        if(thisPrice != "" && thisDiscountPrice !=""){
          thisDiscountRate = Math.floor(100-((parseInt(thisDiscountPrice) * 100)/parseInt(thisPrice)));
        }
        var amplitudeOrderPdData = {
            productId : "GI251050011 ",
            productName : "바른 제주 숲내음 탈취제 ",
            quantity : cartQty,
            options : "",
            brandId : "1834",
            brandName : "바른",
            categoryName1depth : '고양이',
            categoryName2depth : '화장실/위생',
            categoryName3depth : '탈취/소독/배변봉투',
            discountRate : thisDiscountRate,
            keyword : (typeof goodsDetailSrchWord != "undefined")?goodsDetailSrchWord:((typeof searchResult != "undefined")? searchResult.srchWord:"")
          }
        sendAmplitude("click_product_order_button", amplitudeOrderPdData);
      }
      fnGoodsInsertCart(goodsIdStr, cartQty, nowBuyYn);
    }
  
    function fnGoodsInsertCart(goodsIdStr, cartQty, nowBuyYn){
      var goodsCompGbCd = "10"
      var areaType = $("#areaType").val()
      var mbrDlvraNoCheck = "".length > 0 ? true : false
      if(goodsCompGbCd=="10"&& nowBuyYn == 'Y'&& areaType!="Z" && mbrDlvraNoCheck){
        $("#goodsIdStrInput").val(goodsIdStr)
        $("#cartQtyInput").val(cartQty)
        goodsDetailCheck = false;
        popupSelDlvr("O")
      }else{
        commonFunc.insertCart(goodsIdStr, cartQty, nowBuyYn, function(data){
          // FRONT_WEB_VIEW_ORDER_CART_MSG_INSERT_CART_SUCCESS
          if(nowBuyYn == 'N'){
            fnGoodsUiToast("장바구니에 상품이 담겼습니다.", "nowbuy");
          }else{
            //console.log("insertCart response");
            //location.reload();
          }
        });
      }
    }
    
  
    //CSR-2238 LIVE 접속 후 opener callBack 오류 수정
    window.addEventListener('message', function(e) {
        console.log('child message');
        console.log(e.data); // { parentData : 'test parent data' }
        console.log("e.origin : " + e.origin); //http://abc.com(부모창 도메인)
  
        if(e.data.type === 'orderAreaCart'){
          orderAreaCart.callBackPopupSelDeliveryFromCart(e.data.selectId, e.data.startId, e.data.address, e.data.cartData)
        }
      
        if(e.data.type === 'orderArea'){
          orderArea.callBackPopupSelDelivery(e.data.selectId, e.data.startId, e.data.address, e.data.cartData)
        }
    });
    
    var orderArea = {
      callBackPopupSelDelivery : function(selectId, startId, data, cartData){
        orderArea.isCallBackIng = true;
        $("#tempDlvrSelectId").val(selectId);
        $("#tempDlvrStartId").val(startId);
        if(data){
          $("#tempMbrDlvraNo").val(data.mbrDlvraNo);
        }else{
          $("#tempMbrDlvraNo").val('');
        }
        var goodsIdStr = $("#goodsIdStrInput").val()
        var cartQty = $("#cartQtyInput").val()
        var nowBuyYn = "Y"
        commonFunc.insertCart(goodsIdStr, cartQty, nowBuyYn);
      }
      , isCallBackIng : false	
      /* , appCallBack : function(jsonStr){
        var data = JSON.parse(jsonStr);
        orderArea.callBackPopupSelDelivery(data.selectId, data.startId, data.address, data.cartData);
      } */
    }
    
    function fnAddGoodsWish(obj, goodsId){
      var isLogin = "true";
      if(isLogin == "true"){
        var options = {
          url : "/goods/insertWish",
          data : {goodsId : goodsId, search : "", returnUrl : document.URL+"?searchQuery=" },
          done : function(data) {
            var action = '';
            if(data != null) {
              if(data.actGubun == 'add'){
                $(obj).addClass("on");
                fnGoodsUiToast("찜리스트에 추가되었어요", "wish");
                action = 'interest';
              }else if(data.actGubun == 'remove'){
                $(obj).removeClass("on");
                fnGoodsUiToast("찜리스트에서 삭제되었어요", "wished");
                action = 'interest_d';
              }
              userActionLog(goodsId, action);
              
              // SHOP 메인 html 세션스토리지 일괄 삭제
              removeMainAllCache();
            }
          }
        };
        ajax.call(options);
      }else{
        fnGoodsUiToast("로그인이 필요합니다.", "login");
      }
    }
  
    // 입고 알림
    function fnAlimItems(obj){
      var isLogin = "true";
      if(isLogin == "true"){
        var options = {
          url : "/goods/addIoAlarm",
          data : {goodsId : "GI251050011", almYn : "N"},
          done : function(data) {
            // console.log("data : " + JSON.stringify(data));
            // 알림신청시 기존에 등록에 대한 처리는 없음.
            if(data.message == "add"){
              fnGoodsUiToast("재입고 알림이 신청되었어요", "add");
            }else if(data.message == "added"){
              fnGoodsUiToast("이미 재입고 알림을 신청했어요", "added");
            }
          }
        };
        ajax.call(options);
      }else{
        fnIsLogin();
      }
      // insertWishS(obj, goodsId, searchGoodsId);
    }
    function fnRegAlim(e, obj){
      e.stopPropagation();//입고알람 상위 a태그의 이벤트가 실행되어 e.stopPropagation() 실행
      var $btn = $(obj);
      var goodsId = $btn.data("goods-id") || $btn.data("content");
      var options = {
        url : "/goods/addIoAlarm",
        data : {goodsId : goodsId, almYn : "N"},
        done : function(data) {
          if(data.message == "login") {
            ui.confirm('로그인 후 서비스를 이용할 수 있어요.<br>로그인 할까요?', { // 컨펌 창 옵션들
              ycb: function () {
                document.location.href = '/indexLogin?returnUrl=' + encodeURIComponent(document.location.href);
              },
              ncb: function () {
                return false;
              },
              ybt: "로그인", // 기본값 "확인"
              nbt: "취소"  // 기본값 "취소"
            });
          }else if(data.message == "changed") {
            ui.toast("상품정보가 변경되어 입고알림을 신청할 수 없어요",{
              bot: 74, //바닥에서 띄울 간격
              sec:  3000 //사라지는 시간
            });
          }else if(data.message == "add"){
            ui.toast("재입고 알림이 신청되었어요");
          }else if(data.message == "added"){
            ui.toast("이미 재입고 알림을 신청했어요",{
              cls : "added" ,
              bot: 74, //바닥에서 띄울 간격
              sec:  3000 //사라지는 시간
            });
          }
        }
      };
      ajax.call(options);
  
  
    }
  
    function fnCheckOrdmkiTextLength(obj){
      var curValue = obj.value;
  
      if(curValue.indexOf("|") > -1){
        curValue = curValue.substr(0, curValue.indexOf("|"));
      }
  
      if( 40 < curValue.length ){
        curValue = curValue.substr(0, 40);
      }
  
      $("#"+obj.id).val(curValue) ;
    }
  
    function getStkQty(goodsId){ //수량 증가감소✔️✔️✔️
      var stk;
      $.ajax({
        type:"POST",
        async: false,
        url:"/goods/getStkQty",
        data: {goodsId: goodsId
          },
        success : function(data){
          stk = data.stkQty	
        }	
        })
          return stk
      }
  

  </script>
  
  <div class="optpan">
    <div class="inr" id="artUiPdOrdPan">
  
      <div class="cdtwrap" style="max-height: 548.8px;">
        <!-- 묶음/옵션 상품 -->
        <script type="text/javascript">
    $(document).ready(function(){
      //console.log("goodsId : GI251050011, goodsCstrtTp : ITEM");
      
      var goodsCstrtTpCd = "ITEM";
  
      if(goodsCstrtTpCd == "PAK"){
        fnSelectPakGoodsList("N");
      }
      
    });
  
    var fnOption = {
      choose : function (attrNo, obj, attrVal, itemNo){
        var attrValNo = $(obj).val();
  
        $("#selected_attrValNo_"+attrNo).val(attrValNo);
        $("#selected_attrVal_"+attrNo).val(attrVal);
  
      },
      check : function (){
        var addFlag = true;
  
        // 옵션이 모두 선택되었는지 확인
        $("[id^=selected_attrValNo_]").each(function(index){
          if($(this).val() == ""){
            addFlag = false;
            ui.alert("옵션을 선택하세요.");
  
          }
        });
  
        if(addFlag){
          if ("" == "order") {
            fnOption.update();
          } else {
            fnOption.exChange();
          }
        }
      }
      , exPaksAdd : function (type, rownum, itemNo, saleAmt, imgPath, cstrtShowNm, subGoodsId, minOrdQty, maxOrdQty, ordmkiYn, cnt, salePsbCd, openFlag, ioAlmYn, orgSaleAmt, detailSelAttrVals){
        var optionSelAttrVals = $("#optionSelAttrVals").val();
        
        // 상세에서 상품선택시.
        if(openFlag == "DETAILSEL"){
          $("#uiPdOrdPan").addClass("open");
          $("#cartNavs").addClass("open");
          
          optionSelAttrVals = detailSelAttrVals;
        }
        
        var addType = type;
        if(type == 'btn'){
          var btnPakSelected = $("#btnPakSelected"+itemNo).hasClass("a sm");
          if(btnPakSelected === true) {
            addType = "remove"; // 버튼 2번 클릭시 삭제 처리.
          }else{
            addType = "add";
          }
        }else{
          if(salePsbCd != "00" && addType == "add"){	// 판매가능상품 일때만 장바구니 담기
            if(salePsbCd == '10'){
              ui.alert("판매중지되어 구매할 수 없는 상품이에요.");
            }else if(salePsbCd == '30'){
              ui.alert("품절되어 구매할 수 없는 상품이에요.");
            }else{
              ui.alert("판매종료되어 구매할 수 없는 상품이에요.");
            }
            return;
          }
        }
        var dataObj = {};
        dataObj.rownum 			= rownum;
        dataObj.itemNo 			= itemNo;
        dataObj.imgPath 		= imgPath;
        dataObj.cstrtShowNm 	= cstrtShowNm;
        dataObj.subGoodsId 		= subGoodsId;
        dataObj.saleAmt 		= saleAmt;
        dataObj.orgSaleAmt		= orgSaleAmt;
        dataObj.minOrdQty 		= minOrdQty ? minOrdQty : 1;
        dataObj.maxOrdQty		= (maxOrdQty == 0 ?  0 :  maxOrdQty)
        dataObj.stk				= getStkQty(subGoodsId)
        //dataObj.unit 			= $("#uispinerUnitLeft" + itemNo).val(); // 개수
        dataObj.unit 			= 1; // 개수
        dataObj.ordmkiYn		= ordmkiYn;
        dataObj.salePsbCd		= salePsbCd;
        dataObj.ioAlmYn			= ioAlmYn;
        dataObj.goodsCstrtTpCd	= "ITEM";
        dataObj.optionSelAttrVals = optionSelAttrVals;
        //dataObj.ordmkiContent	= $("#inputOrdmki_"+cnt).val(); 
        // console.log("itemNo : " + itemNo + ", dataObj : " + JSON.stringify(dataObj));
        fnPaksRight(dataObj, addType);
        // 선택옵션 text 초기화
        $("#optionSelAttrVals").val("");
        $(document).off("click", ".uispiner .bt");
        $(document).off("click", ".uispiner .plus");
        $(document).on("click",".uispiner .plus",function(e){
          e.preventDefault();
          var $qtyObj = $(this).siblings(".amt");
          var maxOrdQty = $qtyObj.attr("data-max-ord-qty") == 0 ? null : parseInt($qtyObj.attr("data-max-ord-qty"))
          var stkQty = getStkQty($(this).parents("li").find("input[name=goodsIds]").val());
          $qtyObj.attr("data-stk", stkQty)
  
          /*
          var maxQty = 0;
          if(stkQty != 0 && maxOrdQty != 0 && maxOrdQty != null){
            maxQty = parseInt(maxOrdQty != null ? (maxOrdQty > stkQty ? stkQty :maxOrdQty) : stkQty);
          } else if(stkQty == 0 && maxOrdQty != 0 && maxOrdQty != null){
            maxQty = parseInt(maxOrdQty != null ? maxOrdQty : 0);
          } else if(stkQty != 0 && (maxOrdQty == 0 || maxOrdQty == null)){
            maxQty = parseInt(stkQty != null ? stkQty : 0);
          } else if(stkQty == 0 && (maxOrdQty == 0 || maxOrdQty == null)){
            maxQty = 9999;
          } else {
            maxQty = 9999;
          }
          */
  
          //최대 구매 갯수
          var maxQty = 0;
          if(stkQty == 0) {
            //재고가 0일 때
            if(maxOrdQty == 0 || maxOrdQty == null) {
              maxQty = 9999;
            } else {
              maxQty = parseInt(maxOrdQty != null ? maxOrdQty : 0);
            }
          } else if(stkQty != 0) {
            //재고가 0이 아닐 경우
            if(maxOrdQty == 0 || maxOrdQty == null) {
              //최대 구매 갯수가 없을 경우
              maxQty = parseInt(stkQty != null ? stkQty : 0);
            } else {
              //최대 구매 갯수가 있을 경우
              //maxQty = parseInt(maxOrdQty != null ? (maxOrdQty > stkQty ? stkQty :maxOrdQty) : stkQty);
              maxQty = parseInt(maxOrdQty != null ? maxOrdQty : stkQty);
            }
          } else {
            // what is this case ?
            maxQty = 9999;
          }
  
          //최소 구매 갯수
          var minOrdQty = $qtyObj.data("minOrdQty") ? $qtyObj.data("minOrdQty") : 1;
          var cartQty = parseInt($qtyObj.val());
          var ordmkiYn = $qtyObj.data("ordmkiYn") ? $qtyObj.data("ordmkiYn") : "N";
          //todo 최대 구매 갯수보다 재고가 작을 때, 현재 기획 확인 중으로
          stkQty = (stkQty > maxQty) ? stkQty : maxQty;
  
          if (!maxQty || parseInt($qtyObj.val()) < maxQty) {
            cartQty++
            var itemNo = $qtyObj.data("itemNo");
             //$("#buyQty" + itemNo).attr("value", cartQty);
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty); // 사용하지말것.
            var goodsCstrtTpCd = "ITEM";
            //console.log("goodsCstrtTpCd : " + goodsCstrtTpCd + ", itemNo : " + itemNo + ", cartQty : " + cartQty);
            if(ordmkiYn == "Y"){	// 각인여부
              indexOrdpan++;
              if(!document.getElementById('spanOrdmki_'+ itemNo + '_' + cartQty)){
                var spanText = "";
                var n2Class = "";
                if(9 < cartQty){
                  n2Class = "n2";
                }
                spanText += "<span class='input nms"+n2Class+"' id='spanOrdmki_"+itemNo+"_"+cartQty+"'>";
                spanText += "	<i class='n'>"+cartQty+".</i><input type='text' name='inputOrdmki' id='inputOrdmki_"+itemNo+"_"+cartQty+"' placeholder='각인문구를 입력해주세요' title='각인문구' value='' maxlength='40' onkeydown='javascript:fnCheckOrdmkiTextLength(this);'>";
                spanText += "</span>";
                //$("#divOrdmki_"+cartQty-1).html($("#divOrdmki_"+cartQty).html() + spanText);
                var gudText = "<div class='gud'>상품을 담기전에 입력하신 내용을 한번 더 확인해주세요.</div>";
                $("#divOrdmki_"+itemNo + " .gud").remove();
                $("#divOrdmki_"+itemNo).append(spanText + gudText);
              }
            }
            
            if(goodsCstrtTpCd == "ITEM" || goodsCstrtTpCd == "SET"){
              fnClickItemTotalCnt(itemNo, cartQty);
            }else if(goodsCstrtTpCd == "PAK" || goodsCstrtTpCd == "ATTR"){
              var originSaleAmt = $qtyObj.data("saleAmt");
              fnClickPaksTotalCnt(itemNo, cartQty, originSaleAmt);
            }
          }else{
            cartQty = maxQty;
            var itemNo = $qtyObj.data("itemNo");
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty);
            //toastSelector(maxOrdQty,stkQty)
            toastSelector('MAX', maxOrdQty,stkQty)
          }
        });
        
        $(document).off("click", ".uispiner .bt");
        $(document).off("click", ".uispiner .minus");
        $(document).on("click",".uispiner .minus",function(e){
          e.preventDefault();
          var $qtyObj = $(this).siblings(".amt");
          var maxOrdQty = $qtyObj.attr("data-max-ord-qty") == 0 ? null : parseInt($qtyObj.attr("data-max-ord-qty"))
          var stkQty = getStkQty($(this).parents("li").find("input[name=goodsIds]").val());
          $qtyObj.attr("data-stk", stkQty);
  
          /*
          var maxQty = 0;
          if(stkQty != 0 && maxOrdQty != 0 && maxOrdQty != null){
            maxQty = parseInt(maxOrdQty != null ? (maxOrdQty > stkQty ? stkQty :maxOrdQty) : stkQty);
          } else if(stkQty == 0 && maxOrdQty != 0 && maxOrdQty != null){
            maxQty = parseInt(maxOrdQty != null ? maxOrdQty : 0);
          } else if(stkQty != 0 && (maxOrdQty == 0 || maxOrdQty == null)){
            maxQty = parseInt(stkQty != null ? stkQty : 0);
          } else if(stkQty == 0 && (maxOrdQty == 0 || maxOrdQty == null)){
            maxQty = 9999;
          } else {
            maxQty = 9999;
          }
          */
  
          //최대 구매 갯수
          var maxQty = 0;
          if(stkQty == 0) {
            //재고가 0일 때
            if(maxOrdQty == 0 || maxOrdQty == null) {
              maxQty = 9999;
            } else {
              maxQty = parseInt(maxOrdQty != null ? maxOrdQty : 0);
            }
          } else if(stkQty != 0) {
            //재고가 0이 아닐 경우
            if(maxOrdQty == 0 || maxOrdQty == null) {
              //최대 구매 갯수가 없을 경우
              maxQty = parseInt(stkQty != null ? stkQty : 0);
            } else {
              //최대 구매 갯수가 있을 경우
              //maxQty = parseInt(maxOrdQty != null ? (maxOrdQty > stkQty ? stkQty :maxOrdQty) : stkQty);
              maxQty = parseInt(maxOrdQty != null ? maxOrdQty : stkQty);
            }
          } else {
            // what is this case ?
            maxQty = 9999;
          }
  
          //최소 구매 갯수
          var minOrdQty = $qtyObj.data("minOrdQty") ? $qtyObj.data("minOrdQty") : 1;
          var cartQty = parseInt($qtyObj.val());
          var ordmkiYn = $qtyObj.data("ordmkiYn") ? $qtyObj.data("ordmkiYn") : "N";
  
          if(cartQty>maxQty){
            cartQty=maxQty
            var itemNo = $qtyObj.data("itemNo");
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty);
            //toastSelector(maxOrdQty,stkQty)
            toastSelector('MIN', maxOrdQty,stkQty)
            return;
          }
          if (parseInt($qtyObj.val()) > minOrdQty) {
            cartQty--
            //var cartQty = parseInt($qtyObj.val());
            var itemNo = $qtyObj.data("itemNo");
             //$("#buyQty" + itemNo).attr("value",cartQty);
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty); // 사용하지말것.
            if(indexOrdpan <= 0){
              indexOrdpan = 1;
            }else{
              indexOrdpan--;
            }
  
            var goodsCstrtTpCd = "ITEM";
            //console.log("goodsCstrtTpCd : " + goodsCstrtTpCd + ", itemNo : " + itemNo + ", cartQty : " + cartQty);
  
            if(ordmkiYn == "Y"){
              $("[id^=spanOrdmki_" + itemNo + "_]").each(function(index){
                var idx = index + 1;
                if(cartQty < idx){
                  $(this).remove();
                }
              });
            }
            
            if(goodsCstrtTpCd == "ITEM" || goodsCstrtTpCd == "SET"){
              fnClickItemTotalCnt(itemNo, cartQty);
              
            }else if(goodsCstrtTpCd == "PAK" || goodsCstrtTpCd == "ATTR"){
              var originSaleAmt = $qtyObj.data("saleAmt");
              fnClickPaksTotalCnt(itemNo, cartQty, originSaleAmt);
            }
          }else{
            if(cartQty == minOrdQty){
              cartQty = parseInt($qtyObj.val());
            }else {
              cartQty=minOrdQty;
            }
            var itemNo = $qtyObj.data("itemNo");
            $("#buyQty" + itemNo).val(cartQty).attr("value",cartQty);
            toastSelector('MIN', minOrdQty, stkQty);
            //fnGoodsUiToast("최소" + minOrdQty + "개이상 구매할 수 있어요", "minOrdQty");
          }
        });
        
      }
      , exChange : function (itemNo, type){
  
        var data = [];
        $("[id^=selected_attrValNo_]").each(function(index){
  
          var dataObj = {};
          //console.log("index : " + index + ", listPaks obj ; " + JSON.stringify(obj));
          dataObj.attrNo 		= $("[id^=selected_attrNo_]").eq(index).val();
          dataObj.attrValNo 	= $(this).val();
          dataObj.attrVal 	= $("[id^=selected_attrVal_]").eq(index).val();
          dataObj.itemNo 		= itemNo;
          dataObj.unit 		= 1;
          dataObj.obj 		= obj;
          data.push(dataObj);
        });
  
      }
    };
    
    function fnCheckSoldOutYn(obj){
    
      var goodsCstrtTpCd = "ITEM";
      var soldOutExceptYn = "N";
      
      if(obj.checked){
        soldOutExceptYn = "Y";
      }
      
      if(goodsCstrtTpCd == "PAK"){
        fnSelectPakGoodsList(soldOutExceptYn);
      }else if(goodsCstrtTpCd == "ATTR"){
        var optionCnt = $("#optionCnt").val();
        
        $("#soldOutExceptYn").val(soldOutExceptYn);
        // 옵션목록 초기화.
        $("#attrNo").val($("#attr1No").val());
        $("#attrIdx").val("");
        
        for(var i=1; i <= optionCnt; i++){
        
          $("#attr"+i+"ValNo").val("");
          
          // 옵션상품은 '옵션을 선택해주세요'가 아닌 옵션명을 셋팅한다. 
          $("#optsetsVal"+i).text( $("#cstrTpAttrNm"+i).val());
          
          if(i == 1 ){
            $("#divOptsets"+i).addClass("open");
          }else{
            $("#divOptsets"+i).removeClass("open");
            $("#optionSetList"+i).empty();
          }
        }
        ajax.load("optionSetList1", "/goods/getOptionSetList", $("#optionGoodsForm").serializeJson());
      }
    }
    
    function fnOptionselect(attrNo, attrValNo, target ,subGoodsId){
      $("#subGoodsId").val(subGoodsId);
      var idx = $("#listAttrsCount"+attrNo).val();
      var soldOutExceptYn = "N";
      
      if($("#chkSoldOutExceptYn").is(":checked")){
        soldOutExceptYn = "Y";
      }
      
      $("#soldOutExceptYn").val(soldOutExceptYn);
      var optionCnt = $("#optionCnt").val();
      var nextidx = Number(idx) + 1;
  
      if(attrValNo != "" && idx != ""){
        $("#attrNo").val($("#attr"+nextidx+"No").val());
        $("#attr"+idx+"ValNo").val(attrValNo);
        $("#optsetsVal"+idx).text($(target).find('.lk').text());
        $("#attrIdx").val(idx);
      }
  
      var resultCallCheck = true;
      var optionSelAttrVals = "";
      var goodsCstrtTpCd = "ITEM";
  
      for(var i = 1; i <= optionCnt; i++){
        // 옵션값이 다 설정 되지 않으면 조회 하지 않음.
        if($("#attr"+i+"ValNo").val() == ""){
          resultCallCheck = false;
        }
        
        if(idx < i){
          $("#attr"+i+"ValNo").val("");
  
          if( goodsCstrtTpCd == "ATTR") {
            // 옵션상품은 '옵션을 선택해주세요'가 아닌 옵션명을 셋팅한다. 
              $("#optsetsVal"+i).text( $("#cstrTpAttrNm"+i).val());
          } else {
            $("#optsetsVal"+i).text("옵션을 선택해 주세요");
          }
        }
        
        if(i != 1){
          optionSelAttrVals += " / "; 
        }
        optionSelAttrVals += $("#optsetsVal"+i).text();
      }
  
      if(idx < optionCnt){
        ajax.load("optionSetList"+nextidx, "/goods/getOptionSetList", $("#optionGoodsForm").serializeJson());	
        // next 옵션목록 자동 open
        $("#divOptsets"+nextidx).addClass("open");
      }
  
        
      if(resultCallCheck){
        $("#optionSelAttrVals").val(optionSelAttrVals);
        fnOptionSelectResult(optionCnt);
      }
    }
    
    function fnOptionSelectResult(optionCnt){
  
      ajax.load("optionGoodsList", "/goods/getOptionGoodsList", $("#optionGoodsForm").serializeJson());
      
      var goodsCstrtTpCd = "ITEM";
      
      // 옵션값으로 조회후 초기화.
      for(var i = 1; i <= optionCnt; i++){
        $("#attr"+i+"ValNo").val("");
         
        if( goodsCstrtTpCd == "ATTR") {
          // 옵션상품은 '옵션을 선택해주세요'가 아닌 옵션명을 셋팅한다. 
            $("#optsetsVal"+i).text( $("#cstrTpAttrNm"+i).val());
        } else {
          $("#optsetsVal"+i).text("옵션을 선택해 주세요");
        }
        
        $("#divOptsets"+i).removeClass("open");
        if(i != 1){
          $("#optionSetList"+i).empty();
        }
      }
    }; 
    
    function fnSelectPakGoodsList(soldOutExceptYn){
      $("#soldOutExceptYn").val(soldOutExceptYn);
      $("#cstrtPakGoodsList").load("/goods/getPakGoodsList",$("#pakGoodsForm").serializeJson());
    }
  
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
                  <span class="lk wb_bAll_k0426">바른 제주 숲내음 탈취제</span>
                </div>	
              </a>
              <div class="cots">
                <div class="uispiner">
              <input type="text" value="1" class="amt" id="buyQty412810" name="buyQty" onblur="fnChangebuyQty(this, 'GI251050011')" onkeyup="this.value=this.value.replace(/[^0-9]/g, '');" data-item-no="412810" data-min-ord-qty="1" data-max-ord-qty="100" data-ordmki-yn="N" data-stk="2500">
              <button type="button" class="bt minus">s</button>
                  <button type="button" class="bt plus">수량더하기</button>
                </div>
                <div class="price">
                  <em class="p" id="emPriceTotalAmtItem">7,400</em><i class="w">원</i>
                </div>
              </div>
              </div>
          </li>
        </ul>
      </div>
    </div>
    
  <!-- 묶음/옵션 상품 Right -->
        <script type="text/javascript">
    $(document).ready(function(){
    });
  
    // 묶음, 옵션 처리.
    function fnPaksRight(data, type){
      
      var artUiPdOrdPanRight = $("#artUiPdOrdPanRight").html();
      var buyQtyRight = data.minOrdQty;
      
      if(type == "add"){
        if(!document.getElementById('selected_itemNo_'+data.itemNo)){
          $("#artUiPdOrdPanRight").html(artUiPdOrdPanRight + fnOrdpanRight(data));
          $("#btnPakSelected"+data.itemNo).removeClass("c sm");
          $("#btnPakSelected"+data.itemNo).addClass("a sm");
        }else{  // 동일한 상품인 경우 +1 처리.
          var maxOrdQty = data.maxOrdQty == 0 ?  null :  data.maxOrdQty
          var maxQty = maxOrdQty != null ? (maxOrdQty > data.stk ? data.stk :maxOrdQty) : data.stk;
              
          if(maxQty == $("#buyQty" + data.itemNo).val()){
            toastSelector('MAX', maxOrdQty, data.stk)
            return;
          }
          
          buyQtyRight = Number($("#buyQty" + data.itemNo).val()) + 1;
          $("#buyQty" + data.itemNo).val(buyQtyRight).attr("value",buyQtyRight);
          
          if(data.ordmkiYn == "Y"){
  
            var spanText = "";
            $("#divOrdmki_" + data.itemNo + " .gud").remove();
            //$("[id^=inputOrdmki_"+itemNo+"_]").remove();
            for(var i = 1; i <= buyQtyRight; i++){
              if(!document.getElementById('spanOrdmki_'+ data.itemNo + '_' + i)){
                var n2Class = "";
                if(9 < i ){
                  n2Class = "n2";
                }
                spanText += "<span class='input nms "+n2Class+"' id='spanOrdmki_" + data.itemNo + "_"+i+"'>";
                spanText += "	<i class='n'>" + i + ".</i><input type='text' name='inputOrdmki' id='inputOrdmki_" + data.itemNo + "_" + i + "' placeholder='각인문구를 입력해주세요' title='각인문구' value='' maxlength='40' onchange='javascript:fnCheckOrdmkiTextLength(this);'>";
                spanText += "</span>";
              }
            }
            var gudText = "<div class='gud'>상품을 담기전에 입력하신 내용을 한번 더 확인해주세요.</div>";
            $("#divOrdmki_"+data.itemNo).append(spanText + gudText);
          }
        }
  
        // 전체 동기화.
        
        fnClickPaksTotalCnt(data.itemNo, buyQtyRight, data.saleAmt);
      }else{
        $("#liOrdpanRight" + data.itemNo).remove();
        $("#btnPakSelected"+data.itemNo).removeClass("a sm");
        $("#btnPakSelected"+data.itemNo).addClass("c sm");
        fnClickPaksTotalCnt(data.itemNo, 1, data.saleAmt);
      }
    }
    
    function comma(num){
        var len, point, str; 
           
        num = num + ""; 
        point = num.length % 3 ;
        len = num.length; 
       
        str = num.substring(0, point); 
        while (point < len) { 
            if (str != "") str += ","; 
            str += num.substring(point, point + 3); 
            point += 3; 
        } 
         
        return str;
     
    }
  
    function fnOrdpanRight(data){
      var rn = $("#artUiPdOrdPanRight li").length + 1;
      
      var dataImgPath = data.imgPath;
      // 직사각형을 정사각형으로 변경함. frontConstants.IMG_OPT_QRY_340 >>>> frontConstants.IMG_OPT_QRY_500
      var imgPath = "https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images" + dataImgPath + "?type=f&w=259&h=259&quality=90&align=4";
      var noImgPath = "/_images/mall/common/default_image.jpg";
      var imgClass = "";
      if(data.goodsCstrtTpCd == "PAK"){
        imgClass = "gpic";	
      }
      
      var diffAmt = "";
      var saleAmt = Number(data.saleAmt);
      var orgSaleAmt = Number(data.orgSaleAmt);
      if(saleAmt > orgSaleAmt){
        diffAmt = "(+" + comma(saleAmt-orgSaleAmt) + "원)";
      }else if(saleAmt < orgSaleAmt){
        diffAmt = "(-" + comma(orgSaleAmt-saleAmt) + "원)";
      }
      
      if(data.goodsCstrtTpCd == "ATTR"){
        var options = data.optionSelAttrVals;
      }
      
      var text = "";
      text += "<li id='liOrdpanRight"+data.itemNo+"'>                                                                		";
      text += "<input type='hidden' id='selected_itemNo_"+data.itemNo+"' name='itemNos' value='"+data.itemNo+"' />  		";
      text += "<input type='hidden' id='selected_subGoodsId_"+data.itemNo+"' name='goodsIds' value='"+data.subGoodsId+"' />";
      text += "	<div class='unitRes "+imgClass+"'>                                                                       ";
      text += "		<div class='box'>                                                                                	";
      text += "			<button type='button' class='bt del' onclick='fnOption.exPaksAdd(\"remove\", \""+data.rownum+"\", \""+data.itemNo+"\",\""+data.saleAmt+"\")'>삭제</button>	";
      if(data.goodsCstrtTpCd == "PAK"){
        text += "			<div class='thum'>                                                                           	";
        text += "				<div class='pic'><img class='img' src='"+imgPath+"' onerror='this.src=\""+noImgPath+"\"' alt='상품'></div>  						";
        text += "			</div>                                                                                        	";
      }
      text += "			<div class='infs'>                                                                           	";
      /*  text += "				<div class='cate'>상품"+data.rownum+"</div>                                             	"; */   
      if(data.goodsCstrtTpCd == "PAK"){
        text += "				<a href='javascript:;' class='lk amplitudeAttr'>"+ data.cstrtShowNm + diffAmt +"</a> 									";
      } else {
        text += "				<a href='javascript:;' class='lk amplitudeAttr'>" + options + "</a> 									";
      }	
      text += "			</div>                                                                                       	";
      text += "		</div>                                                                                           	";
      text += "		<div class='cots'>                                                                               	";
      text += "			<div class='uispiner'>                                                                          ";
      /* text += "				<input type='text' value='1' name='buyQty' id='buyQty"+data.itemNo+"' class='amt'  disabled='disabled' onchange='javascript:fnChangebuyQty(this);'"; */
      text += "				<input type='text' value='"+data.minOrdQty+"' name='buyQty' id='buyQty"+data.itemNo+"' class='amt' onblur='fnChangebuyQty(this, \""+data.subGoodsId+"\")'";
      text += " 					onkeyup='this.value=this.value.replace(/[^0-9]/g, \"\");'";
      text += "					   data-item-no='"+data.itemNo+"' 							";
      text += "					   data-min-ord-qty='"+data.minOrdQty+"' data-max-ord-qty='"+data.maxOrdQty+"'         	";
      text += "					   data-sale-amt='"+data.saleAmt+"' data-subgoodsid='"+data.subGoodsId+"' data-ordmki-yn='"+data.ordmkiYn+"' data-stk ='"+data.stk+ "'>         ";
      text += "				<button type='button' class='bt minus'>수량더하기</button>                                  	";
      text += "				<button type='button' class='bt plus'>수량빼기</button>                                     	";
      text += "			</div>                                                                                       	";
      text += "			<div class='price'>                                                                          	";
  
      if(data.salePsbCd == "00"){
        text += "				<em class='p' id='buyPriceRight"+data.itemNo+"'>"+data.saleAmt+"</em><i class='w'>원</i>	";
      }
      if(data.salePsbCd == "10"){
        text += "<span class='bt sold'>판매중지</span>";
      }
      if(data.salePsbCd == "20"){
        text += "<span class='bt sold'>판매종료</span>";
      }
      if(data.salePsbCd == "30"){
        if(data.ioAlmYn == "Y"){
          text += "<button type='button' class='bt alim'>입고알림</button>";
        }else{
          text += "<span class='bt sold'>입고예정</span>";
        }
      }
      text += "				<input type='hidden' id='inputBuyPriceRight"+data.itemNo+"' name='itemNos' value='"+data.saleAmt+"' />  		";
      text += "			</div>                                                                                       	";
      text += "		</div>                                                                                           	";
      if(data.ordmkiYn == "Y"){
        text += "		<div class='msgs' id='divOrdmki_"+data.itemNo+"'>                                                                               	";
        for(var i = 1; i<= data.minOrdQty; i++){
          var n2Class = "";
          if(9 < i ){
            n2Class = "n2";
          }
          text += "			<span class='input nms "+n2Class+"' id='spanOrdmki_"+data.itemNo+"_" + i + "'><i class='n'>" + i + ".</i><input type='text' name='inputOrdmki' id='inputOrdmki_"+data.itemNo+"_" + i + "' placeholder='각인문구를 입력해주세요' title='각인문구' value='' maxlength='40' onkeydown='javascript:fnCheckOrdmkiTextLength(this);'></span>";
          if(i == data.minOrdQty){
            text += "			<div class='gud'>상품을 담기전에 입력하신 내용을 한번 더 확인해주세요.</div>                          	";	
          }
        }
  
        text += "		</div>                                                                                           	";
      }
      text += "	</div>                                                                                               	";
      text += "</li>";
      
      return text;
    }
  </script>
  </div>
  
      <div class="tots">
        <div class="inr">
          <div class="amts">
            <i class="t">총 수량</i>
            <em class="amt">
              <i class="i" id="emPriceTotalCnt">1</i>
                <i class="s">개</i>
            </em>
          </div>
          <div class="price">
            <i class="t">합계</i>
            <em class="prc"><i class="i" id="emPriceTotalAmt">7,400</i><i class="s">원</i></em>
          </div>
        </div>
      </div>
    </div>
    <input type="hidden" value="" id="goodsIdStrInput">
    <input type="hidden" value="" id="cartQtyInput">
  </div>
  </article>
      <input type="hidden" name="dispTpcd" value="00">
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
          <span class="pic"><img class="img" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/goods/GI251050011/b37b36c4-c01c-4b8c-8935-10ad59e2ec53.jpg?type=f&amp;w=500&amp;h=500&amp;quality=90&amp;align=4" onerror="this.src='/_images/mall/common/default_image.jpg'" alt=""></span>
          <div class="disc">
            <div class="names">바른 제주 숲내음 탈취제</div>
            <div class="price">
                  <em class="p">7,400</em><i class="w">원</i>
                </div>
              </div>
        </div>
      </div>
  
      <div class="btns">
        <!-- 스탬프 상품은 찜하기 불가 -->
        <div class="zims">
            <button type="button" class="bt btZZim " id="goodsWish" data-disp-tpcd="00" data-content="GI251050011" data-url="/goods/insertWish?goodsId=GI251050011" data-action="interest" data-yn="N" data-goods-id="GI251050011" data-target="goods"><span class="t"><span class="material-symbols-outlined">
              bookmark
              </span></span></button><!-- .on class명 있으면 찜한 상태임 -->
          </div>
        <!-- soldOutYn 품절 여부 0보다 크면 Y -->
        <div class="obts">
          <!-- 사전예약 상품이 아니면 -->
              <!-- 스탬프 상품은 장바구니 없음 -->
                <button type="button" class="bt btCart" onclick="fnCartItems('N')"><span class="t">장바구니</span></button>
              <!-- 판매가능 -->
                <!-- 판매가능 -->
                    <button type="button" class="bt btOrde" onclick="fnCartItems('Y')"><span class="t">구매하기</span></button>
                    </div>
      </div>
    </div>
  </nav>
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
  <script>
    	//신고 팝업창 
		$(function() {
			$(".bt_warn").click(function() {
				$('.popLayers').bPopup();
			})

			// $(".close").click(function() {
			// 	window.location.reload();
			// })

		})
  </script>

            
            
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