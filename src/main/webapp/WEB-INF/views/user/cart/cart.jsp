<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>멍품냥품</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="format-detection" content="telephone=no">
<meta name="theme-color" content="#ffffff">

<link href="common/favicon/favicon.ico" rel="shrtcut icon">
<link href="common/favicon/android-icon-192x192.png"
	rel="apple-touch-icon-precomposed">

<link rel="stylesheet"
	href="http://localhost/mpnp/3rdDesign/common/css/headerFooter.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/mpnp/3rdDesign/_css/main.style.pc.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost/mpnp/3rdDesign/css/order.css">
<link rel="stylesheet" type="text/css"
	href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<script type="text/javascript"
	src="http://localhost/mpnp/3rdDesign/_script/crypto.js"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/webHookPolicy.js?v=22102810"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810"
	userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D"
	webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.blockUI.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.inputmask.bundle.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.number.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.form.min.js"></script>

<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/swiper.min.js"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/clipboard.min.js"></script>
<script type="text/javascript"
	src="http://localhost/mpnp/3rdDesign/_script/common.js?modifiedDate=20221013"></script>
<script type="text/javascript"
	src="http://localhost/mpnp/3rdDesign/_script/popup.js"></script>
<script type="text/javascript"
	src="http://localhost/mpnp/3rdDesign/_script/ui.js"></script>
<script type="text/javascript"
	src="http://localhost/mpnp/3rdDesign/_script/ui_shop.js"></script>

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

<style>
.itemCntChk input{float:left;}
</style>

</head>

<body class="body">

	<!-- 기본 컨텐츠 -->
	<div class="wrap" id="wrap">
		<input type="hidden" id="viewJsonData"
			value="%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D">

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

</script>
		<!-- header pc-->
		<header class="header pc cu mode0" data-header="set0" id="header_pc">
			<input type="password" style="display: none;" />
			<!-- 크롬 패스워드 자동완성 방지 -->
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
						<button class="mo-header-btnType02">취소</button>
						<!-- on 클래스 추가 시 활성화 -->
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
									<li class=""><a class="bt" href="javascript:void(0);"
										onclick="sendDispClsfNo(300000173)"><b class="t"
											id="b_tag_300000174">강아지</b></a></li>
									<li class="active"><a class="bt"
										href="javascript:void(0);" onclick="sendDispClsfNo(300000174)"><b
											class="t" id="b_tag_300000174">고양이</b></a></li>

								</ul>
							</div>
						</nav>
						<!-- -->
						<!-- mobile -->
						<button class="mo-header-backNtn" onclick="storageHist.goBack();">뒤로</button>
						<div class="mo-heade-tit">
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

								<li id="liTag_10" class="active"><a href="/shop/home/"
									class="bt">스토어</a></li>
								<!-- APET-1250 210728 kjh02  -->
								<li id="liTag_00" class=""><a href="/mypage/indexMyPage/"
									class="bt">MY</a></li>
							</ul>
						</nav>
					</div>
					<div class="cdt">
						<div class="schs">
							<div class="form ">
								<div class="input del kwd">
									<input id="srchWord" name="srchWord" type="search"
										maxlength="50" value="" autocomplete="off"
										placeholder="검색어를 입력해주세요.">
								</div>
								<button type="button" class="btnSch" data-content=""
									data-url="/commonSearch">검색</button>

								<!-- 자동완성 드롭박스 -->
								<div class="key-word-list" id="key-word-list"
									style="display: none;">
									<ul></ul>
								</div>
								<!-- 자동완성 드롭박스 -->
							</div>
						</div>
						<div class="menu">
							<!-- <button id="alertBtn" class="bt alim  " type="button">알림</button> -->
							<button class="bt cart" type="button"
								onclick="location.href='/order/indexCartList/'"></button>
							<button id="srchClsBtn" class="bt close" type="button"
								style="display: none;" onclick="searchCommon.srchClsBtn();">닫기</button>
							<div class="alims" id="alertDiv"></div>
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
									<img src="/_images/common/img-level-pc.png"
										alt="어바웃펫 패미리 등급별 혜택 이미지">
								</div>
							</div>
						</main>
					</div>
				</div>
			</article>
			<!-- //등급안내 팝업 추가 2021.05.13 -->
		</div>


		<!-- s : 검색 영역 -->
		<!-- e : 검색 영역 -->
		<!--❤️사이드바 끝-->
		<!--❤️main-->
		<main class="container page shop od cart" id="container"
			style="margin-top: 100px;">
			<!-- 기본배송지 권역 타입 -->
			<input type="hidden" id="areaType" value=""> <input
				type="hidden" id="cartMbrDlvraNo" value=""> <input
				type="hidden" id="cartPostNoNew" value=""> <input
				type="hidden" id="tempDlvrSelectId" value=""> <input
				type="hidden" id="tempDlvrStartId" value=""> <input
				type="hidden" id="tempMbrDlvraNo" value=""> <input
				type="hidden" id="deviceGb" value="PC"> <input type="hidden"
				id="cartStDomain" value="https://aboutpet.co.kr">

			<div class="pageHeadPc">
				<div class="inr">
					<div class="hdt">
						<h3 class="tit">장바구니</h3>
					</div>
				</div>
			</div>
			<div class="inr" style="min-height: 357px;">
				<!-- 본문 -->
				<div class="contents" id="contents">
					<script>
	//전체동의 체크, 해제 지우지마세용😍
	$(function(){
	 $("#chkAll").click(function(){
			
			if($("#chkAll").is(":checked")){
				
				$("input[name=cartIds]").prop("checked",true);
			
	
			}else{
			$("input[name=cartIds]").prop("checked",false);
	
			};//end else
	
	 })//

	 
	$("input[name=cartIds]").click(function() {
		var total = $("input[name=cartIds]").length;
		var checked = $("input[name=cartIds]:checked").length;

		if(total != checked) $("#chkAll").prop("checked", false);
		else $("#chkAll").prop("checked", true); 
	});
	
	})
	
	
	
	
	</script>
	<!-- ************************************************************************ -->
	<script>
	$(function(){
		
	})
	function cartDelete(cartId){
		alert(cartId);
		location.href="cart_remove_process.do";
		// 이거 아닌데.. AJAX 해야될거같은데 
	}
	</script>
	<!-- ************************************************************************ -->

					<form id="cartForm">
						<input type="hidden" name="fstPurchBeneTgYn" id="fstPurchBeneTgYn"
							value="N">
						<div class="allcheck scroll_fixed">
							<div class="inr">
								<div class="box">
									<label class="checkbox"><input type="checkbox"
										id="chkAll" checked="checked"><span class="txt">전체
											선택 <i class="i">(2/2)</i>
									</span></label> <a href="javascript:void(0);" class="lk"
										onclick="cartGoods.del()" data-content=""
										data-url="https://aboutpet.co.kr/order/deleteCart">선택 삭제</a>
								</div>
							</div>
						</div>
						<div class="cartWrap">
							<div class="cartPrds">
								<!-- APET-1523 스탬프 상품 -->
								<!-- 자사 -->
								<section class="sect abt">
									<div class="frstat" id="apetBarDiv">
										<label class="checkbox"><input type="checkbox"
											id="chkCompNo912" value="912" checked="checked"
											name="cartIds"><span class="txt"><span
												class="dt"><span class="t">멍품냥품 배송 상품</span></span></span></label>
										<div class="box">
											<div class="gage">
												<div class="inf">
													<input type="hidden" id="apetDlvrcBuyPrc" value="30000">
													<!-- 상품 선택이 되지 않아서 무료배송 여부를 알 수 업는 경우 -->
													<em class="pp" id="noneDlvrBar" style="display: none;">👀
														<b class="p">30,000</b><i class="w">원</i>
													</em> <span class="tt" style="display: none;">이상 무료배송</span>
													<!-- 선택한 상품의 가격이 총 30000원을 넘는 경우 -->
													<em class="pp" id="fullDlvrBar" style="">🚚 <b
														class="p">무료배송</b></em>
													<!-- 선택한 상품의 가격이 30000원 이하인 경우 -->
													<em class="pp" id="addDlvrBar" style="display: none;">💸
														<b class="p"></b><i class="w">원 이상</i>
													</em> <span class="tt" style="display: none;">추가하면 무료배송!</span>
													<span class="prc"><em class="p">30,000</em><i
														class="w">원</i></span>
												</div>
												<div class="bar">
													<em class="b free" id="apetBar" style="width: 100%;"></em>
												</div>
											</div>
										</div>
									</div>
									<!-- 업체 -->
									<ul class="cartlist" id="cartList912" data-comp-no="912">
									<c:forEach var="cartItem" items="${cartList }">
									<li>
										<%-- <input type="hidden" name="cartId" value="${cartItem.cartId}"> --%>
										<div class="untcart " id="untcart163361418348766992">
											<!-- <input type="hidden" name="salePrc" value="19800">
											<input type="hidden" name="prmtDcAmt" value="0">
											<input type="hidden" name="salePsbCd" value="00">
											<input type="hidden" name="selMbrCpNo" value="">
											<input type="hidden" name="totCpDcAmt" value="0">
											<input type="hidden" name="cpDcAmt" value="0">
											<input type="hidden" name="dlvrcPlcNo" value="1">
											<input type="hidden" name="compGbCd" value="10">
											<input type="hidden" name="goodsId" value="GI251051246">
											<input type="hidden" name="itemNo" value="414045">
											<input type="hidden" name="pakGoodsId" value="">
											<input type="hidden" name="freeDlvrYn" value="N">
											<input type="hidden" name="dispTpCd" value="00">
											<input type="hidden" name="dealStmpCnt" value="0">
											<input type="hidden" name="couponListLen" value="0"> -->
											<label class="checkbox">
											<input type="checkbox" id="chkCartId163361418348766992" name="cartIds"
											value="163361418348766992" checked="checked">
											<span class="txt"></span>
											</label>
											<!-- <button type="button" class="bt del"
												onclick="cartGoods.del('163361418348766992', )"
												data-content="163361418348766992"
												data-url="https://aboutpet.co.kr/order/deleteCart">삭제</button> -->
											<button type="button" class="bt del" onclick="cartDelete('${cartItem.cartId}')">삭제</button>
											<div class="box">
												<div class="tops">
													<a href="javascript:;"
														onclick="fnGoGoodsDetail('GI251051246')" class="pic"
														data-content="GI251051246"
														data-url="https://aboutpet.co.kr/goods/indexGoodsDetail?goodsId=GI251051246">
														<img
														src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/goods/GI251051246/23cf8322-0287-4298-8267-af005d6c1486.jpg?type=f&amp;w=259&amp;h=259&amp;quality=90&amp;align=4"
														alt="가필드 고양이모래 보라(굵은입자) 4.53kg 카사바모래" class="img"
														onerror="this.src='../../_images/common/img_default_thumbnail_2@2x.png'">
													</a>
													<div class="name">
														<a href="javascript:;"
															onclick="fnGoGoodsDetail('GI251051246')" class="tit"
															data-content="GI251051246"
															data-url="https://aboutpet.co.kr/goods/indexGoodsDetail?goodsId=GI251051246">
															<c:out value="${cartItem.productName }"/>
															</a>
													</div>
												</div>

												<div class="amount "><!-- ${cartItem.totalCnt } -->
												<div class="uispined st load itemCntChk">
													<input type="button" id="cntPlus" value="+" style="width:25px; text-align: center;">
													<input type="text" value="${cartItem.totalCnt }" style="width:40px; text-align: center;" readonly="readonly">
													<input type="button" id="cntMinus" value="-" style="width:25px; text-align: center;">
												</div>
													<div class="prcs">
														<em class="dispTp00 st" style="display: none">쿠폰적용가</em> <span
															class="prc"><em class="p"><c:out value="${cartItem.productPrice }"/></em><i class="w">원</i></span>
														<div class="free">
															2,500원
															<!-- 조건부 무료배송 - 가격-->
															<!-- 주문당적용 -->
															(30,000원 이상 무료배송)
														</div>
													</div>
													<input type="button"  value="변경" />
												</div>
											</div>
										</div>
									</li>
									</c:forEach>
									</ul>

									<div class="totset">
										<div class="ptt">
											<em class="p" id="compTotalGoodsAmt912">64,500</em><i
												class="w">원</i> <i class="e">+</i> <b class="t">배송비</b><em
												class="p" id="compTotalDlvrAmt912">0</em><i class="w">원</i>
											<i class="e q">=</i> <em class="prc"><em class="p"
												id="compTotalAmt912">64,500</em><i class="w">원</i></em>
										</div>
										<div class="gud">장바구니에 담은 상품의 합계금액 입니다.</div>
									</div>
									<div class="recoms" style="display: none;">
										<div class="hdts">
											<span class="tit">🚚<em class="p"></em><i class="w">원
													이상</i>추가하면 무료배송!
											</span> <span class="txt">지금 함께 구매하면 무료로 배송해드려요.</span>
										</div>
										<div class="cdts">
											<div class="ui_cartrcm_slide"></div>
										</div>
									</div>

								</section>
								<input type="hidden" name="dlvrcPlcAmt" data-dlvrc-plc-no="1"
									data-comp-no="912" data-sale-psb-cd="00" id="dlvrcPlcAmt1"
									value="0"> <input type="hidden" name="dlvrcPlcChkAmt"
									data-dlvrc-plc-no="1" data-comp-no="912" data-sale-psb-cd="00"
									id="dlvrcPlcChkAmt1" value="0">
								<div class="cartOrdr">
									<div class="ctinr" style="bottom: 6.4px;">
										<div class="odbox">
											<div class="hdt">
												<span class="tit">결제 금액</span>
											</div>
											<ul class="prcset">
												<li>
													<div class="dt">상품금액</div>
													<div class="dd">
														<span class="prc"><em class="p"
															id="totalChkGoodsAmt">64,500</em><i class="w">원</i></span>
													</div>
												</li>
												<!-- <li>
								<div class="dt">할인금액</div>
								<div class="dd">
									<span class="prc dis"><em class="p" id="totalChkDcAmt">-0</em><i class="w">원</i></span>
								</div>
							</li> -->
												<li>
													<div class="dt">배송비</div>
													<div class="dd">
														<span class="prc"><em class="p"
															id="totalChkDlvrAmt">0</em><i class="w">원</i></span>
													</div>
												</li>
											</ul>
											<div class="tot">
												<div class="dt">최종 결제금액</div>
												<div class="dd">
													<span class="prc"><em class="p" id="totalChkAmt">64,500</em><i
														class="w">원</i></span>
												</div>
											</div>

											<div class="stamp_cart_sum_box" style="display: none;">
												<div class="stamp_cart_sum">
													우리 아이 선물 <em id="stmpChkSumQty">0개</em> 스탬프 <em
														id="stmpChkSumCnt">0개</em>사용예정
												</div>
												<div class="gud">아이 선물은 보유 스탬프에서 수량 차감됩니다.</div>
											</div>

										</div>
										<div class="btntot">
											<div class="inr">
												<a href="javascript:void(0);" class="btn lg a btnOrder"
													data-content="" onclick="directOrderSelectFunc(true);"
													data-url="https://aboutpet.co.kr/order/indexOrderPayment">
													<em class="p">총</em> <i class="i" id="goodsOrdCntText">2</i><em
													class="s">개</em> <em class="prc"><i class="i"
														id="totalChkAmtText">64,500</i><i class="s">원</i></em> <em
													class="p" id="orderBtnText">주문하기</em>
												</a>
											</div>
										</div>

										<!-- APET-1628 스탬프 미노출 처리 -->
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</main>
		<!--❤️main-->


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
						<li><a href="javascript:void(0);"
							onclick="openTerms('2001' , 'Y'); return false;">서비스 이용약관</a></li>
						<li><a href="javascript:void(0);"
							onclick="openTerms('2002' , 'Y'); return false;" class="fc_black">개인정보
								처리방침</a></li>
						<li><a href="javascript:void(0);"
							onclick="openPartnershipInquiry();return false;">입점/제휴 문의</a></li>
						<li class="hide_mo"><a
							href="http://www.gsretail.com/gsretail/ko/brand/about-pet"
							target="_blank">회사소개</a></li>
						<li class="hide_mo"><a
							href="https://gsretail.recruiter.co.kr/appsite/company/index"
							target="_blank">채용정보</a></li>
						<!-- 무조건 모바일웹으로 들어간 1경우에만 나타나게 만들기 -->
				</div>
				<div class="info">
					<ul class="list">
						<li>주식회사 멍품냥품</li>
						<li>대표자명 : 최정민 유원준 정선홍 하지윤 유설빈</li>
						<li>사업자 등록번호 : 022-10-0025</li>
						<li class="dn">통신판매업신고번호 : 제 2020-서울강남-03142호</li>
						<li>TEL : 1644-1234</li>
					</ul>
					<ul class="list">
						<li>
							<p class="adr">서울특별시 강남구 테헤란로 한독빌딩 8층</p>
						</li>

					</ul>
				</div>
				<div class="copy">© copyright (c) www.aboutpet.co.kr all
					rights reserved.</div>
				<div class="info escrow"></div>
			</div>
		</footer>
		<!-- // footer -->

		<div id="layers"></div>
		<!-- e : footer 영역 -->
	</div>
</body>
</html>