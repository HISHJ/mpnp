<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info="scriptlet의 사용"%>
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
	href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/my.css">
<link rel="stylesheet"
	href="http://localhost/mpnp/3rdDesign/css/order.css">
<link rel="stylesheet"
	href="http://localhost/mpnp/3rdDesign/_css/pc\com.css">
<link rel="stylesheet"
	href="http://localhost/mpnp/3rdDesign/_css/pc\disp.css">
<link rel="stylesheet"
	href="http://localhost/mpnp/3rdDesign/css/mypage.css">
<link rel="stylesheet"
	href="http://localhost/mpnp/3rdDesign/css/popupme.css">

<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810"
	userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D"
	webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bPopup/0.11.0/jquery.bpopup.js"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>

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
	//2022-11-05 팝업창
	/* $(".prooptions").click(loadDynamic);

	function loadDynamic() {
		alert(desId);
		$("#dynamic").load("https://dl.dropboxusercontent.com/s/6ro896byol223p0/ajax-data.txt?dl=1&token_hash=AAEhOzpJgzb71h8X_olqovBCKz0GF2BCXJogeZ0RIoWXoQ", // URL with only <div> content & dont load <head> or <html> or <body> etc...     
			function(content) {
			
				$(this).hide().fadeIn("slow");
				return false;
			});
	} */
</script>
<script type="text/javascript">
	//let addressListCnt = "2";
	let addressListCnt = ${desList.size()};
	//alert(${desList.size()});
	//insertAddress
	
	$(document).ready(function() {

		ui.shop.lnb.pos();
		// 배송지 추가
		//$("[name=addAddressBtn]").click(function() {
		$("#addBtn").click(function() {
			// 					if($(".delist > li").length >= 5){
				//alert("addBtn눌린거맞지..??");
			// 배송지 5개에서 1개 삭제 후 배송지 추가 시 정상 추가 수정 20210518
			if (addressListCnt >= 5) {
				alert('배송지는 5개까지 등록할 수 있어요');
				return false;
			}
			var name=$("[name=addName]").val();
			var receiver=$("[name=addReceiver]").val();
			var phone=$("[name=addPhone]").val();
			var zipcode=$("[name=addZipcode]").val();
			var addr=$("[name=addAddr1]").val();
			var addrDetail=$("[name=addAddr2]").val();
			if(name.trim()==""){
				alert("배송지 명칭을 입력해주세요.");	
				return false;
			}
			if(receiver.trim()==""){
				alert("수령인을 입력해주세요.");	
				return false;
			}
			if(phone.trim()==""){
				alert("휴대폰번호를 입력해주세요.");	
				return false;
			}
			if(zipcode.trim()==""){
				alert("우편번호를 입력해주세요.");	
				return false;
			}
			if(addr.trim()==""){
				alert("주소를 입력해주세요.");	
				return false;
			}
			if(addrDetail.trim()==""){
				alert("상세주소를 입력해주세요.");	
				return false;
			}
			
			//alert($("#defaultChk").is(":checked"));
			var defaultFlag=$("[name=defaultFlag]").is(":checked")?'O':'X';
			//alert(defaultFlag);
			/* for(var i=0;i<${desList.size()};i++){
				
				if(${desList}[i].defaultFlag=='O'){
					alert("기본배송지는 1개만 등록가능합니다.");
					return false;
				}
			} */
			
			// 휴대폰번호 체크해야함
			if(!isCellPhone(phone)){
				//alert(phone.length);
				//alert("성공");
				alert("올바른 휴대폰번호를 입력해주세요.");
				return;
			}
			
			if(!confirm("배송지정보를 추가하시겠습니까?")){
				return;
			}
			
			//alert("여기까지옴");
			$.ajax({
				url:"des_add_process.do",
				data:"name="+name+"&receiver="+receiver+"&phone="+phone+"&zipcode="+zipcode+"&addr="+addr+"&addrDetail="+addrDetail+"&defaultFlag="+defaultFlag,
				dataType:"json",
				error:function(xhr){
					alert(xhr.status);
					alert(xhr.statusText);
					alert(xhr.state());
				
				},
				success:function(jsonObj){
					if(jsonObj.addFlag){
						alert("추가가완료되었습니다");
						location.href="des_list.do";
						
					}
				}
				
			})
		})
		// 배송지 수정
		$("[name=updateAddressBtn]").click(function() {
			openAddressAddPop($(this).data('dlvra-no'));
		});
		// 배송지 삭제
		/* $("[name=deleteAddressBtn]").click(function() {
					alert($(this).val());
					deleteAddress($(this).data('dlvra-no'), $(this).data('gb-nm'), $(this).data('dftyn'));
		}); */
	});
	
		
	/* 휴대폰 유효성검증..? */
	function isCellPhone(p) {

		p = p.split('-').join('');
		
		var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
		
		return regPhone.test(p);
	
	}
	
		
/* 	// 	배송지 추가 / 수정 팝업
	function openAddressAddPop(dlvraNo) {
		if ($("li[name^=del_]").length < 5
				|| (dlvraNo != null && dlvraNo != '')) {
			var options = {
				url : "/mypage/service/popupAddressEdit",
				data : {
					mbrDlvraNo : dlvraNo
				},
				dataType : "html",
				done : function(html) {
					$("#addressAddPop").html(html);

					if ($("#addressAddPop #memberAddressForm").length == 0) {
						ui.alert('오류가 발생하였습니다. 관리자에게 문의하시기 바랍니다.');
					} else {
						ui.popLayer.open("addressAddPop");
					}
				}
			}
			ajax.call(options);
		} else {
			ui.toast('배송지는 5개까지 등록할 수 있어요');
			return false;
		}
	} */
	// 	배송지 삭제
	/* function deleteAddress(mbrDlvraNo, gbNm, dftYn) { */
	function deleteAddress(dtId, defaultFlag) {
		if(confirm("배송지를 삭제하시겠습니까?")){
			
			if(defaultFlag=='O'){
				alert("기본배송지는 삭제할 수 없습니다.");
				return false;
			}else{
				
				$.ajax({
					
					url:"des_remove_process.do",
					data:"dtId="+dtId,
					dataType:"json",
					error:function(xhr){
					
						alert(xhr.status);
						alert(xhr.statusText);
						alert(xhr.state());
					},
					success:function(jsonObj){
					
						if(jsonObj.removeFlag){
						
							alert("삭제가 완료되었습니다.");
							location.href="des_list.do";
						}
					}
					
				})
				
				
			}
			
		}
	}
	$(document).on("keyup", ".phoneNumber", function() { 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );
	});
</script>
<!-- 2022-11-21 최정민 우편번호 API 시작  외부라이브러리를 사용할때는 시작과 끝 표시해주어야 찾기편함-->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode(from) {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                if(from=='addForm'){
	                document.getElementById('zipcode').value = data.zonecode;
	                document.getElementById("addr1").value = roadAddr;
	                document.getElementById("addr2").focus();
	                
                }
                else if(from=='editForm'){
	                document.getElementById('editZipcode').value = data.zonecode;
	                document.getElementById("editAddr1").value = roadAddr;
	                document.getElementById("editAddr2").value = "";
	                document.getElementById("editAddr2").focus();
                }
                

            }
        }).open();
    }
</script>

<!-- 우편번호 API 끝 -->
<script>
function dataReset(){
	
	document.getElementById("addName").value=null;
	document.getElementById("addReceiver").value=null;
	document.getElementById("addPhone").value=null;
	document.getElementById("addName").value=null;
	document.getElementById("zipcode").value=null;
	document.getElementById("addr1").value=null;
	document.getElementById("addr2").value=null;
	document.getElementById("addr2").value=null;
	$("#defaultChk").prop("checked",false);
}
</script>


</head>

<body class="body">

	<!-- 기본 컨텐츠 -->
	<div class="wrap" id="wrap">
		<input type="hidden" id="viewJsonData"
			value="%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D">


		<script>
		
		</script>
		
		
		<!--팝업창-->

		<input class="modal-state" id="modal-1" type="checkbox" />
		<div class="modal">
			<label class="modal__bg" for="modal-1"></label>
			<div class="modal__inner">
				<!-- <label class="modal__close" for="modal-1"></label> -->
				<div class="pbd " id="popupAddressEdit">
					<h1 style="font-size: 20rem; font-weight: bold; margin-bottom: 20px;">배송지 입력</h1>
					<div class="pct" style="height: 505.6px;">
						<main class="poptents">
							<form id="memberAddressForm">
								<div class="uidelivsets">
									<ul class="list" id="addressul">
										<li class="name">
											<div class="hdt">배송지 명칭</div>
											<div class="cdt">
												<div class="input del">
													<input type="text" name="addName" id="addName" placeholder="배송지 명칭을 입력해주세요"
														title="배송지" maxlength="9">
												</div>
											</div>
										</li>
										<li class="user">
											<div class="hdt">받는 사람</div>
												<div class="input del">
													<input type="text" name="addReceiver" id="addReceiver" placeholder="이름을 입력해주세요."
														title="받는 사람" maxlength="5"/>
												</div>
										</li>
										<li class="phone">
											<div class="hdt">휴대폰번호</div>
											<div class="cdt">
												<div class="input del">
													<input type="text" name="addPhone" id="addPhone" class="phoneNumber"
														placeholder="-없이 번호만 입력해주세요" title="휴대폰번호" maxlength='13'/>
												</div>
												<span id="mobileValidate" style="color: red; display: none">휴대폰번호를
													정확히 입력해주세요.</span>
											</div>
										</li>
										<li class="adrs">
											<div class="hdt">주소</div>
											<div class="cdt">
												<div class="uiadrset">
													<div id="adrOff">
													<input type="text" name="addZipcode" id="zipcode"
													readonly="readonly" placeholder="우편번호를 검색해주세요"class="adrbox a1">
														<!-- <div class="adr">우편번호를 검색해주세요.</div> -->
														<a href="javascript:;" onclick="execDaumPostcode('addForm')" class="btAdr">우편번호검색</a>
													</div> 
													<div id="adrOff">
														<input type="text" readonly="readonly"  id="addr1" name="addAddr1" class="adrbox a1" style="width:100%; margin-top:5px; margin-bottom:5px;">
													</div>
													<div id="adrOff">
														<input type="text" id="addr2" name="addAddr2" placeholder="상세주소를 입력하세요."class="adrbox a1" style="width:100%;" maxlength="60">
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="saves">
												<div class="pp">
													<label class="checkbox">
													<input type="checkbox" name="defaultFlag" id="defaultChk">
													<span class="txt">
													<em class="tt">기본 배송지로 등록</em>
													</span>
													</label>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</form>
							<div class="btnList bot">
								<label class="modal__close2" for="modal-1" style="cursor: pointer;" onclick="dataReset()">취소</label>
								<button type="button" id="addBtn" name="addAddressBtn" class="btn lg a disabled save"
									style="background-color: var(- -colors-main03) !important; cursor: pointer;">저장</button>
							</div>
						</main>
						<div id="dynamic" class="hidden"></div>
					</div>
				</div>
				<div id="dynamic" class="hidden"></div>
			</div>
		</div>
		<!--팝업창-->
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







		<!--❤️사이드바-->


		<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>
		<!-- e : gnb 영역 -->
		<!-- s : LNB 영역 -->

		<nav class="lnb shop" id="lnb">
			<div class="inr" style="width: 220px;">
				<nav class="menushop" style="margin-right: 20px;">
					<h2 class="bt bt_my">MY</h2>


					<div class="ctset ctset1 active" data-ui-tab-ctn="tab_my_cate"
						data-ui-tab-val="tab_my_cate_1" style="width: 200px;">
						<ul class="sm">
							<li><a class="bt" href="/mypage/order/indexDeliveryList"
								data-url="/mypage/order/indexDeliveryList" data-content="0">주문내역</a></li>
							<li><a class="bt" href="/mypage/goodsCommentList"
								data-url="/mypage/goodsCommentList" data-content="0">상품 후기</a></li>
							<li><a class="bt" href="/mypage/info/indexPswdUpdate"
								data-content="0" data-url="/mypage/info/indexPswdUpdate">비밀번호
									설정</a></li>
							<li><a class="bt" href="/mypage/info/indexManageCheck"
								data-content="0" data-url="/mypage/info/indexManageCheck">회원정보
									수정</a></li>
						</ul>
					</div>


				</nav>

				<nav class="menushop" style="margin-top: 30px;">
					<h2 class="bt bt_store">스토어</h2>
					<div class="button_wrap">
						<button type="button" class="bt st bt_dog active">강아지</button>
						<button type="button" class="bt st  bt_cat">고양이</button>
					</div>

					<li class="open open_dog" id="tab_category_12565"
						style="width: 200px;">
						<ul class="sm">
							<li class=""><a class="bt"
								href="javascript:setCateList('12673', '12565', 'N');"><b
									class="t">강쥐사료</b></a></li>
							<li class=""><a class="bt"
								href="javascript:setCateList('12675', '12565', 'N');"><b
									class="t">간식</b></a></li>
						</ul>
						<ul class="sm_2">
							<li class=""><a class="bt"
								href="javascript:setCateList('12685', '12565', 'N');"><b
									class="t">패션/의류</b></a></li>
							<li class=""><a class="bt"
								href="javascript:setCateList('100000244', '12565', 'N');"><b
									class="t">기타</b></a></li>
						</ul>
					</li>

					<li class="open open_cat" id="tab_category_12565"
						style="width: 200px; display: none;">
						<ul class="sm">
							<li class=""><a class="bt"
								href="javascript:setCateList('12673', '12565', 'N');"><b
									class="t">냥이사료</b></a></li>
							<li class=""><a class="bt"
								href="javascript:setCateList('12675', '12565', 'N');"><b
									class="t">간식</b></a></li>
						</ul>
						<ul class="sm_2">
							<li class=""><a class="bt"
								href="javascript:setCateList('12685', '12565', 'N');"><b
									class="t">패션/의류</b></a></li>
							<li class=""><a class="bt"
								href="javascript:setCateList('100000244', '12565', 'N');"><b
									class="t">기타</b></a></li>
						</ul>
					</li>
				</nav>

			</div>

		</nav>
		<!-- e : LNB 영역 -->
		<!-- s : 검색 영역 -->
		<!-- e : 검색 영역 -->
		<!--❤️사이드바 끝-->
		<!--❤️main-->

		</script>
		-->
		<!--❤️ 버튼 눌렀을 때 팝업-->
		<!--❤️ 테스트-->
		<script>
			//수정,삭제 열기
			function addClass(shipID) {
				//alert(shipID);
				const dmenu = document.querySelectorAll('.dmenu');
				//alert(dmenu.length);
				//alert(dmenu[0].className);
				var dmenuArr = new Array();
				for (let i = 0; i < dmenu.length; i++) {

					dmenuArr = dmenu[i].className.split(" "); //클래스명 쪼개서 배열에 {uidropmu, dmenu, 1222}
					//alert(i+" / "+shipID);
					if (dmenuArr[2] == shipID) {
						$('.' + shipID).toggleClass("open");

					}
				}
			};//addclass
///////////////////////////////////////////////////////////////////////////////////////////
				//수정팝업창
			function loadDynamic(desId,name,receiver,phone,zip,addr1,addr2,defaultFlag) {
				/* alert(desId);
				alert(name);
				alert(receiver);
				alert(phone);
				alert(zip);
				alert(addr1);
				alert(addr2); */
				document.getElementById("editDesId").value = desId;
				document.getElementById("editName").value = name;
				document.getElementById("editReceiver").value = receiver;
				document.getElementById("editPhone").value = phone;
				document.getElementById("editZipcode").value = zip;
				document.getElementById("editAddr1").value = addr1;
				document.getElementById("editAddr2").value = addr2;
				//document.getElementById("editDefaultChkFlag").prop("checked",defaultFlag=='O'?true:false);
				$("#editDefaultChkFlag").prop("checked",defaultFlag=='O'?true:false);
				
				$("." + desId).load(
					//"https://dl.dropboxusercontent.com/s/6ro896byol223p0/ajax-data.txt?dl=1&token_hash=AAEhOzpJgzb71h8X_olqovBCKz0GF2BCXJogeZ0RIoWXoQ", // URL with only <div> content & dont load <head> or <html> or <body> etc...     
					
					function(content) {
						alert(content);
						console.log(content);
						// make content visible with effect
						$(this).hide().fadeIn("slow");
						return false;
					}
				)
			}
			
			function updateAddress() {
				alert("수정완료");
			}
/////////////////////////////////////////////////////////////			
		</script>
		<script>
		///////////////////////////////
		$(function(){
			$("#updateBtn").click(function(){
				//alert("눌렸다");
				//alert("updateBtn눌림");
				var destinationId=$("[name=editDesId]").val();
				var name=$("[name=editName]").val();
				var receiver=$("[name=editReceiver]").val();
				var phone=$("[name=editPhone]").val();
				var zipcode=$("[name=editZipcode]").val();
				var addr=$("[name=editAddr1]").val();
				var addrDetail=$("[name=editAddr2]").val();
				
				if($("[name=editName]").val().trim()==""){
					alert("배송지 명칭을 입력해주세요.");	
					return false;
				}
				if($("[name=editReceiver]").val().trim()==""){
					alert("수령인을 입력해주세요.");	
					return false;
				}
				if($("[name=editPhone]").val().trim()==""){
					alert("휴대폰번호를 입력해주세요.");	
					return false;
				}
				if($("[name=editZipcode]").val().trim()==""){
					alert("우편번호를 입력해주세요.");	
					return false;
				}
				if($("[name=editAddr1]").val().trim()==""){
					alert("주소를 입력해주세요.");	
					return false;
				}
				if($("[name=editAddr2]").val().trim()==""){
					alert("상세주소를 입력해주세요.");	
					return false;
				}
				
				
				var defaultFlag=$("[name=editDefaultChkFlag]").is(":checked")?'O':'X';				
				if(!isCellPhone(phone)){
					//alert(phone.length);
					//alert("성공");
					alert("올바른 휴대폰번호를 입력해주세요.");
					return;
				}
				// 기본배송지 인거에서 체크를 취소하고 update를 했을때는 어떡할까? 하지말까..
				/* var flagArr = document.getElementsByName("defaultFlags");
				var dfChk = false;
				for(var i=0;i<flagArr.length;i++){

					if(flagArr[i].value == 'O'){
						dfChk = true;
						break;
					}
				}
				if(dfChk && defaultFlag == 'X'){
					alert("기본배송지 1개는 유지되어야함");
					return false;
				}
				
				alert("여기까지왔으면 false 안걸렸으니 ajax 들어간다"); */
				
				
				if(!confirm("배송지정보를 변경하시겠습니까?")){
					return;
				}
				
				$.ajax({
					url:"des_modify_process.do",
					data:"destinationId="+destinationId+"&name="+name+"&receiver="+receiver+"&phone="+phone+"&zipcode="+zipcode+"&addr="+addr+"&addrDetail="+addrDetail+"&defaultFlag="+defaultFlag,
					dataType:"json",
					error:function(xhr){
						alert(xhr.status);
						alert(xhr.statusText);
						alert(xhr.state());
					
					},
					success:function(jsonObj){
						if(jsonObj.editFlag){
							alert("변경이 완료되었습니다");
							location.href="des_list.do";
							
						}
					}
					
				})
			})
		})
		
			
			
			
		
		//////////////////////
		</script>
		<!--❤️ 테스트-->

		<main class="container lnb page my" id="container"
			style="margin-top: 100px; margin-left: 100px;">
			<div class="inr" style="min-height: 592.047px;">
				<!-- 본문 -->
				<div class="contents" id="contents" style="min-height: 714px;">
					<!-- PC 타이틀 모바일에서 제거 -->
					<div class="pc-tit">
						<h2>배송지 관리</h2>
						<label class="btn prooptions add_ship" for="modal-1" href="#"
							style="color: var(- -colors-main03)" onclick="dataReset()">배송지 추가</label>
					</div>
					<div class="uiDelisel" style="margin-top: 80px;">
						<ul class="delist">
						<c:choose>
						<c:when  test="${ requestScope.desList.size() > 0 }">
							<c:forEach var="des" items="${requestScope.desList }">
							<li class="active" name="del_234869">
								<div class="box t2">

									<nav class="uidropmu dmenu ${des.destinationId } ">
										<button type="button" class="bt st menu_bt"
											onClick="addClass('${des.destinationId }')" >
											<span class="material-symbols-outlined"> expand_more </span>
										</button>
										<ul class="menu">
											<%-- <li><label class="btn_modify prooptions"
												onClick="loadDynamic('${des.destinationId }')" for="modal-2" href="#">수정</label></li> --%>
											<li><label class="btn_modify prooptions" for="modal-2" href="#"
											onclick="loadDynamic('${des.destinationId }','${des.name }',
											'${des.receiver }','${des.phone }','${des.zipcode }','${des.addr }','${des.addrDetail }','${des.defaultFlag}')">수정</label></li>
											<!-- <li><button type="button" class="bt" name="deleteAddressBtn" data-dlvra-no="234869"
													data-gb-nm="집" data-dftyn="Y" data-content="" data-url="/mypage/service/deleteAddress">삭제</button></li> -->
											<li><button type="button" class="bt" name="deleteAddressBtn"
											onclick="deleteAddress('${des.destinationId}','${des.defaultFlag}')">삭제</button></li>
										</ul>
										<input type="hidden" name="defaultFlags" value="${des.defaultFlag}">
									</nav>
									<div class="new_tit_area on">
										<c:out value="${des.name }"/><c:if test="${des.defaultFlag == 'O'}"><em class="bdg">기본배송지</em></c:if>
									</div>
									<div class="inf">
										<div class="adrs"><c:out value="[${des.zipcode }]" />
														<c:out value="${des.addr } ${des.addrDetail }" />
											</div>
										<div class="usrs"><c:out value="${des.receiver }" /> / <c:out value="${des.phone }" /></div>
									</div>
								</div>
							</li>
							</c:forEach>
							</c:when>
							<c:otherwise>
								<!-- <li class="" style="min-height: 369px;"> -->
									<!-- 내역 없을 경우 style block-->
									<div class="inr-box noneBoxPoint" name="aftNoComment"
										style="height: 473px;">
										<section class="no_data i1 auto_h view">
											<div class="inr">
												<div class="msg">등록하신 배송지가 없습니다.</div>
											</div>
										</section>
									</div>
								<!-- </li> -->
							</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</main>
		<!--❤️main끝-->

		<!--❤️수정팝업창-->
		<style>
.modal__inner {
	width: 45% !important;
}

.modify_cancel {
	height: 50px;
	min-width: 50px;
	padding: 24px 20px !important;
	font-size: 15rem;
	font-weight: 700;
	border-color: #ddd;
	background-color: #fff;
	color: #666;
	font-weight: 700;
	color: #000;
	border: 1px solid #dddddd;
	background: #ffffff;
	color: #666666;
	height: 32px;
	overflow: hidden;
	padding: 0 12px;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	vertical-align: middle;
	cursor: pointer;
	white-space: nowrap;
	border-radius: 4px;
	line-height: 1;
}

.btnList.bot {
	text-align: center;
}
</style>


		<input class="modal-state" id="modal-2" type="checkbox" />
		<div class="modal editPopForm">
			<label class="modal__bg" for="modal-2"></label>
			<div class="modal__inner">
				<div class="layers">

					<div class="pbd " id="popupAddressEdit">
						<div class="phd">
							<div class="in">
								<h1 class="tit" style="font-size: 20rem; font-weight: bold;">배송지 변경</h1>
							</div>
						</div>
						<div class="pct" style="height: 582px;">
							<main class="poptents">
								<form id="updateAddressForm" >
									<div class="uidelivsets">
										<ul class="list" id="addressul">
											<li class="name">
												<div class="hdt" >배송지 명칭</div>
												<div class="cdt">
													<div class="input del">
													<input type="hidden" id="editDesId" name="editDesId">
														<input type="text" name="editName" id="editName" placeholder="배송지 명칭을 입력해주세요" maxlength="9">
													</div>
												</div>
											</li>
											<li class="user">
												<div class="hdt">받는 사람</div>
												<div class="cdt">
													<div class="input del">
														<input type="text" name="editReceiver" id="editReceiver" placeholder="이름을 입력해주세요." maxlength="5">
													</div>
												</div>
											</li>
											<li class="phone">
												<div class="hdt">휴대폰번호</div>
												<div class="cdt">
													<div class="input del">
														<input type="text" name="editPhone" id="editPhone" class="phoneNumber" maxlength="13"
															placeholder="-없이 번호만 입력해주세요" >
													</div>
												</div>
											</li>
											<li class="adrs">
											<div class="hdt">주소</div>
											<div class="cdt">
												<div class="uiadrset">
													<div id="adrOff">
													<input type="text" name="editZipcode" id="editZipcode"
													readonly="readonly" placeholder="우편번호를 검색해주세요"class="adrbox a1">
														<a href="javascript:;" onclick="execDaumPostcode('editForm')" class="btAdr">우편번호검색</a>
													</div> 
													<div id="adrOff">
														<input type="text" readonly="readonly"  id="editAddr1" name="editAddr1" class="adrbox a1" style="width:100%; margin-top:5px; margin-bottom:5px;">
													</div>
													<div id="adrOff">
														<input type="text" id="editAddr2" name="editAddr2" placeholder="상세주소를 입력하세요."class="adrbox a1" style="width:100%;" maxlength="60">
													</div>
												</div>
											</div>
											</li>
											<li class="dreq" data-selected="false">

												<div class="saves">
													<div class="pp">
														<label class="checkbox"><input type="checkbox"
															name="editDefaultChkFlag" id="editDefaultChkFlag"><span
															class="txt"><em class="tt">기본 배송지로 등록</em></span></label>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</form>
							</div>
						<div class="btnList bot">
							<label class="modify_cancel" for="modal-2" >취소</label>

							<button type="button" id="updateBtn" 
								class="btn lg a">변경</button>
						</div>
						</main>
					</div>
				</div>

			</div>
			<div id="dynamic" class="hidden 1222"></div>
		</div>
	</div>



	<!--수정팝업창-->




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
			<div class="copy">© copyright (c) www.aboutpet.co.kr all rights
				reserved.</div>
			<div class="info escrow"></div>
		</div>
	</footer>
	<!-- // footer -->

	<div id="layers"></div>
	<!-- e : footer 영역 -->
	</div>
</body>
</html>