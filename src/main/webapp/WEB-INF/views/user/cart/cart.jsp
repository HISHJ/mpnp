<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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


select {
  width: 60px; /* 원하는 너비설정 */
  padding: .2em .5em; /* 여백으로 높이 설정 */
  border: 1px solid #999; 
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
  border-radius: 0px; /* iOS 둥근모서리 제거 */
  -webkit-appearance: none; /* 네이티브 외형 감추기 */
  -moz-appearance: none;
  appearance: none;
}

checkbox{
	margin-right:20px;
}
.untcart .box .tops .pic{
	width:100px;
	height:100px;
	border-radius:20px;
	margin-left:20px;
}

.prc{
	/* margin-bottom:30px; */
}
.free{
	margin-bottom:30px;	
}
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
	    <input type="password" style="display:none;"/><!-- 크롬 패스워드 자동완성 방지 -->
	    <div class="hdr">
	        <div class="inr">
		
			<c:import url="../../user/main/user_header.jsp">
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
		calPrice();
	 })//

	 
	$("input[name=cartIds]").click(function() {
		var total = $("input[name=cartIds]").length;
		var checked = $("input[name=cartIds]:checked").length;

		if(total != checked) $("#chkAll").prop("checked", false);
		else $("#chkAll").prop("checked", true); 
		//calPrice();
	});
	
	})
	
	
	
	
	</script>
	<!-- ************************************************************************ -->
	<script>
	function cartDelete(cartId){
		
		if(confirm("장바구니 항목을 삭제하시겠습니까?")){
			$.ajax({
				url:"cart_remove_process.do",
				data:"cartId="+cartId,
				dataType:"json",
				error:function(xhr){
					alert(xhr.status);
					alert(xhr.statusText);
					alert(xhr.state());
				
				},
				success:function(jsonObj){
					if(jsonObj.removeFlag){
						alert("삭제가 완료되었습니다");
						location.href="cart_list.do";
					}else{
						alert("삭제도중 문제가 발생했습니다. 잠시 후 다시 시도해주세요.");
						location.href="cart_list.do";
					}
				}
				
			})
		}
	}
	
	
	
	$(function(){
		$("#selRemove").click(function(){
			var chkArr = new Array();
			
			$("input[name=cartIds]:checked").each(function(){
				var chk = $(this).val();
				chkArr.push(chk);
			})
			
			//alert("갯수확인 : "+chkArr.length);

			if(chkArr.length<1){
				alert("선택하신 항목이 없습니다.");
				return;
			}
			
			if(confirm("선택하신 항목을 삭제하시겠습니까?")){
				$.ajax({
					url:"cart_chk_remove_process.do",
					type:"post",
					data:{
						chkBox : chkArr
					},
					dataType:"json",
					error:function(xhr){
						alert(xhr.status);
						alert(xhr.statusText);
						alert(xhr.state());
					
					},
					success:function(jsonObj){
						if(jsonObj.removeFlag){
							alert("삭제가 완료되었습니다");
							location.href="cart_list.do";
						}else{
							alert("삭제도중 문제가 발생했습니다. 잠시 후 다시 시도해주세요.");
							location.href="cart_list.do";
						}
					}
					
				})
			}
		})
	})
	/* 11-25 최정민 장바구니 */
	$(function(){  
		
		$("[name=itemCnt]").change(function(){  // 이후 고정값넣어 채운 select에 change발생시
			
			//alert(this.value);
			//alert($(this).attr("id"));
			//alert(this.value);
			var chkVal = this.value;
			//alert(chkVal);

			var chkCartId = $(this).attr("id");
			//alert("진짜왜그러ㅑㄴ"+chkVal);
			//alert(chkCartId);
			///////////////////////
			// 지금 선택된 애의 가격
			//alert("장바구니아이템 가격 : "+$("#priceBy_"+chkCartId).val());
			//alert("한개가격 : "+$("#oneBy_"+chkCartId).val());
			
			/////////////////////////
			
			var param = {"cartId":chkVal,"cnt":chkCartId};
			
			// 총가격도 받아야하나 여기서안받아도될거같은데?
/* 				data:{
					cartId : chkVal,
					cnt : chkCartId
					}, */
			
			$.ajax({
				url:"cart_modify_process.do",
				type:"post",
				data:{
					"cartId":chkCartId,
					"cnt":chkVal
				},
				dataType:"json",
				error:function(xhr){
					alert(xhr.status);
					// select 값만 바뀌고 DB반영안되면 실패니까
					// 이땐 페이지 재요청하는게 나아보임
					location.href="cart_list.do";
				},
				success:function(json){
					if(json.modifyFlag){
						//console.log("안뜸?");
						//alert("변경이 완료되었습니다");

						$("#totalTest").val(json.test);
						$("#priceBy_"+chkCartId).val(chkVal*$("#oneBy_"+chkCartId).val());
						
						//alert(typeof($("#hid_cnt_"+chkCartId)));
						$("#hid_cnt_"+chkCartId).val(chkVal);
						//alert($("#hin_cnt_"+chkCartId).val(chkVal));
						//hid_cnt_
						//$("#hin_cnt_"+chkCartId).val(chkVal);
						
						//alert($('#'+chkCartId).val());
						//$('#'+chkCartId).val(chkVal).prop("selected",true);
						//cnt_${cartItem.cartId}
						//alert($("#cnt_"+chkCartId).val());
						/* 2022-11-27-00-32 최정민 수정 */
						//var priceTest = (chkVal*$("#oneBy_"+chkCartId).val()).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
						//$("#priceBy_"+chkCartId).val(priceTest);
						
						// 여기까지하면 각 값이 바뀌었으니까 총 가격연상해서 배송비 3000, 0 , 총가격 뱉어주는 함수실행
						//var priceTest = (chkVal*$("#oneBy_"+chkCartId).val()).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
						calPrice();
					}	
					
				}
				
			})
		});
	})
	
	$(function(){
		$("[name=cartIds]").click(function(){
			calPrice();
			//alert("체크박스눌림");
		})
	})
	
	
	
	function calPrice(){
		// 체크박스, 수량변경 등 이벤트발생시 가격변경
		var chkArr = new Array();
			
		$("input[name=cartIds]:checked").each(function(){
			var chk = $(this).val();
			chkArr.push(chk);
			//alert(chk);
		})
		//alert(chkArr.length);
		var sum = 0;
		var price = 0;
		for(var i=0;i<chkArr.length;i++){
			//alert("여기냐??"+$("#priceBy_"+chkArr[i]).val());
			price = $("#priceBy_"+chkArr[i]).val().replace(/,/gi,""); // 100만단위일경우 한개만지워져서 /,/gi 정규식으로 다지움
			//alert("쉼표지운거아냐??"+price);
			//sum += ($("#priceBy_"+chkArr[i]).val()*1);
			sum += price*1;
			//sum += Number(price);
		}
		//alert("최종가격 : "+sum);
		
		//var ship = "3000".toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		var ship = 0;
		//alert("30000만 보다 적은가 "+(sum<30000));
		var sum2 = sum;
		if(sum<30000){
			//alert("if탔다");
			ship = "2500".toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			//$("#shipPrice1").text(ship);
			//$("#shipPrice2").text(ship);
			
			sum2 = sum2 + 2500;
			
		}
		
		if(chkArr.length==0){
			//alert("chkArr.length==0 성립");
			sum = 0;
			sum2 = 0;
			ship = 0;
			//$("#shipPrice1").text(ship);
			//$("#shipPrice2").text(ship);
		}
		
		//alert("가공전 숫자sum : "+sum);
		//alert("가공전 숫자sum : "+sum2);
		
		
		sum = sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		sum2 = sum2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		
		//alert("가공후 숫자sum : "+sum);
		//alert("가공후 숫자sum : "+sum2);
		
		$("#shipPrice1").text(ship);
		$("#shipPrice2").text(ship);
		$("#cartTotalPrice1").text(sum);
		$("#cartTotalPrice2").text(sum2);
		$("#cartTotalPrice3").text(sum);
		$("#cartTotalPrice4").text(sum2);
		$("#cartTotalPrice5").text(sum);
		$("#chkTotalCnt").text(chkArr.length);
		
		//$("[name=priceByCart=")
		
		
		/* NaN 뜨면 이거 지워그냥 */
		$("[name=priceByCart]").each(function(index,item){
			//alert(item.value);
			var testPrice = item.value;
			testPrice = testPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			$(item).val(testPrice);
		})
		
	}
	
	window.onload = function(){
		calPrice();
	}
	
	/* $(function(){
		$(".btnOrder").click(function(){
			$("#cartForm").submit();
		})
	}) */
	
	</script>
	<!-- ************************************************************************ -->
	<script>
	//주문하기 버튼
		$(function(){
			$(".btnOrder").click(function(){
				var form_contents = "";
				var orderNumber = 0;
				
				/* 0개 주문못하게 막아야함 */
				var chkCnt = $("input:checkbox[name=cartIds]:checked").length;
				//alert("선택된 장바구니 갯수 : "+chkCnt);
				//alert("체크된값 확인 0 개면 안되게 하기위함"+chkCnt);
				if(chkCnt<1){
					alert("선택하신 상품이 없습니다.");
					return;
				}
				
				
				if(confirm("선택하신 상품을 주문하시겠습니까?")){
					//hidden 동적 추가
					$(".untcart").each(function(i, element){
						//alert(element);
						if($(element).find("[name=cartIds]").is(":checked") === true){
							var cartId = $(element).find("[name=cartIds]").val(); //카트 아이디
							//alert("prd자료형 : "+$("[name=pId]"));
							//alert("prd자료형 : "+$(".indi_prdId").val());
							var prdId= $(element).find("[name=pId]").val() //상품코드
							//var prdId= $(element).find(".indi_prdId").val() //상품코드
							//var prdId= $(".indi_prdId").val(); //상품코드
							var prdCnt = $(element).find("[name=totalCnt]").val() ; //상품 수량
							//alert(cartId+" / "+prdId+" / "+prdCnt);
							var cartId_Input  = "<input name='orders["+ orderNumber  +"].cartId' type='hidden' value='" + cartId+"'>"; 
							form_contents += cartId_Input;
						 	var prd_id_Input  = "<input name='orders["+ orderNumber  +"].prdId' type='hidden' value='" + prdId+"'>"; 
							form_contents += prd_id_Input;
							
							var prdCnt_Input  = "<input name='orders["+ orderNumber  +"].prdCnt' type='hidden' value='" +prdCnt+"'>"; 
							form_contents += prdCnt_Input;
							orderNumber += 1;
						}//end checked
					});//end cart Info
					
					$("#cartForm").html(form_contents);
					$("#cartForm").submit();
				
				}
			})
			
		})
	</script>




	<!-- ************************************************************************ -->
																	<!-- orderPayment_form_Test.do -->
					<form id="cartForm" method="POST" name="form" action="orderPayment_form.do">
						<input type="hidden" name="fstPurchBeneTgYn" id="fstPurchBeneTgYn"
							value="N">
						<div class="allcheck scroll_fixed">
							<div class="inr">
								<div class="box">
									<label class="checkbox"><input type="checkbox" id="chkAll" checked="checked">
									<span class="txt" style="margin-left:20px; font-size:15px; font-weight:bold;">전체 선택 <i class="i">									</i>
									</span>
									</label>
									<!-- <a href="javascript:void(0);" class="lk">선택 삭제</a> -->
									<input type="button" id="selRemove" class="lk" value="선택 삭제" style="border:none;">
								</div>
							</div>
						</div>
						<div class="cartWrap">
							<div class="cartPrds">
								<!-- APET-1523 스탬프 상품 -->
								<!-- 자사 -->
								<section class="sect abt">
									<div class="frstat" id="apetBarDiv">
										<label class="checkbox"><span
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
									<c:choose>
									<c:when  test="${ cartList.size() > 0 }">
									<c:forEach var="cartItem" items="${cartList }">
									<li>
									<!-- 유설빈님 상품아이디 여기있어요 -->
										<div class="untcart " id="untcart163361418348766992">
										<input type="hidden" value="${cartItem.productId }" id="prdId_${cartItem.productId }" name="pId" class="indi_prdId"/>
											<label class="checkbox">
											<input type="checkbox" id="${cartItem.cartId}" name="cartIds"
											value="${cartItem.cartId}" checked="checked">
											</label>
											<button type="button" class="bt del" onclick="cartDelete('${cartItem.cartId}')">삭제</button>
											<div class="box">
												<div class="tops">
													<a href="javascript:;"class="pic"><!-- 상품상세이동 -->
														<img
														src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/goods/GI251051246/23cf8322-0287-4298-8267-af005d6c1486.jpg?type=f&amp;w=259&amp;h=259&amp;quality=90&amp;align=4"
														alt="가필드 고양이모래 보라(굵은입자) 4.53kg 카사바모래" style="width:100px; height:100px;">
													</a>
													<div class="name" style="font-weight: 700; width:400px; margin-left:70px;">
														<c:out value="${cartItem.productName }"/>
													</div>
												</div>

												<div class="amount" style="height:90px;"><!-- ${cartItem.totalCnt } -->
												<!-- <div class="uispined st load itemCntChk" style="text-align: center;"> -->
												<div class="" style="text-align: left; margin-left:20px;  ">
												
												<input type="hidden" value="${cartItem.totalCnt }" name="totalCnt" id="hid_cnt_${cartItem.cartId}"/>
												<%-- <select name="itemCnt" id="${cartItem.cartId}" style="text-align: left; font-size:15px;  margin-top:25px;margin-left:20px;"> --%>
												<select name="itemCnt" id="${cartItem.cartId}" style="text-align: left; font-size:15px;  margin-top:25px;margin-left:20px;">
												<c:forEach var="i" begin="1" end="10" step="1">
													<option value="${i }" <c:if test="${cartItem.totalCnt == i }">selected="selected"</c:if>><c:out value="${i }"/></option>
												</c:forEach>
												</select>
												<%-- <span style="font-size:15px; font-weight: 700;"><c:out value="${cartItem.totalCnt }"/></span> --%>
													<%-- <input type="text" value="${cartItem.totalCnt }" style="text-align: center; width:50%;" readonly="readonly">
													<input type="button"  value="변경" style="left:100px;" /> --%>
												</div>
													<div class="prcs">
														<span class="prc">
														<em class="p">
														<!-- 여기 이렇게 바로뿌리면,, 아 어차피 개별이라 상관없겠구나 -->
														<input type="hidden" id="oneBy_${cartItem.cartId}" value="${cartItem.productPrice}"/>
														<input type="text" readonly="readonly" id="priceBy_${cartItem.cartId}"
														<%-- name="priceByCart" style="font-size:15px; font-weight: 700; width:70px; border:0 solid black;" value="${cartItem.productPrice * cartItem.totalCnt}"/> --%>
														name="priceByCart" style="font-weight: 700; width:70px; border:0 solid black; text-align: right;"
														value="${cartItem.productPrice * cartItem.totalCnt}"/>
														<%-- <fmt:formatNumber value='${cartItem.productPrice * cartItem.totalCnt }' pattern='###,###,###'/> --%>
														<%-- <c:out value=""/> --%>
														</em><i class="w">원</i></span>
														<div class="free">
															<!-- 조건부 무료배송 - 가격-->
															<!-- 주문당적용 -->
															(30,000원 이상 무료배송)
															
														</div>
													</div>
													
												</div>
											</div>
										</div>
									</li>
									</c:forEach>
									</c:when>
										<c:otherwise>
										<!-- <li class="" style="min-height: 369px;"> -->
											<!-- 내역 없을 경우 style block-->
											<div class="inr-box noneBoxPoint" name="bfNoComment"
												style="height: 150px;">
												<section class="no_data i1 auto_h view">
													<div class="inr">
														<div class="msg">장바구니에 담긴 상품이 없습니다.</div>
													</div>
												</section>
											</div>
										<!-- </li> -->
										</c:otherwise>
									</c:choose>
									</ul>

									<div class="totset">
										<div class="ptt">
										<!-- 총금액 계산해ㅔ야함 배송비랑 -->
											<em class="p" id="cartTotalPrice1">0</em><i
												class="w">원</i> <i class="e">+</i> <b class="t">배송비</b><em
												class="p" id="shipPrice1">0</em><i class="w">원</i>
											<i class="e q">=</i> <em class="prc"><em class="p"
												id="cartTotalPrice2">0</em><i class="w">원</i></em>
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
														<span class="prc"><em class="p" id="cartTotalPrice3">0</em><i class="w">원</i></span>
													</div>
												</li>
												<li>
													<div class="dt">배송비</div>
													<div class="dd">
														<span class="prc"><em class="p"
															id="shipPrice2">0</em><i class="w">원</i></span>
													</div>
												</li>
											</ul>
											<div class="tot">
												<div class="dt">최종 결제금액</div>
												<div class="dd">
													<span class="prc"><em class="p" id="cartTotalPrice4">
													0 <!-- 여기 제일처음 로딩될때 가격 가져와야함 풀체크로 갈까
													이건 제일처음 controller에서 model에 따로 값 넣어주던가 해서 가져와야겠다 도메인에 또 넣기는 비효율적이고 -->
													<!-- <input type="text" readonly="readonly" id="totalTest" name="totalTest" value="555원 테스트중"/> -->
													
													</em><i
														class="w">원</i></span>
												</div>
											</div>

											<!-- <div class="stamp_cart_sum_box" style="display: none;">
												<div class="stamp_cart_sum">
													우리 아이 선물 <em id="stmpChkSumQty">0개</em> 스탬프 <em
														id="stmpChkSumCnt">0개</em>사용예정
												</div>
												<div class="gud">아이 선물은 보유 스탬프에서 수량 차감됩니다.</div>
											</div> -->

										</div>
										<div class="btntot">
											<div class="inr">
												<a href="javascript:void(0);" class="btn lg a btnOrder">
													<em class="p">총</em> <i class="i" id="chkTotalCnt">0</i><em
													class="s">개</em> <em class="prc"><i class="i"
														id="cartTotalPrice5">0
														 </i><i class="s">원</i></em> <em
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
		
		
		<!-- 수량조정 form...? -->
		<form>
	
		</form>
		<!-- 삭제 form -->
		<form>
	
		</form>

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