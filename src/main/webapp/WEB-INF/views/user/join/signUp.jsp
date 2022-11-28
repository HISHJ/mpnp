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
	<style>

 

	</style>
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
		
	
	// 순서 저 세상 .... 시간 되면 정리할 것
	/* 전화번호 하이픈추가  */
	function PhoneNumber(obj) {
	    var number = obj.value.replace(/[^0-9]/g, "");
	    var phone = "";
	    
		if(number.substr(0,2)==02){
		    if(number.length < 3) {
		        return number;
		    } else if(number.length < 6) {
		        phone += number.substr(0, 2);
		        phone += "-";
		        phone += number.substr(2);
		        
		    } else if(number.length < 10) {
		        phone += number.substr(0, 2);
		        phone += "-";
		        phone += number.substr(2, 3);
		        phone += "-";
		        phone += number.substr(5);
		    } else {
		        phone += number.substr(0, 2);
		        phone += "-";
		        phone += number.substr(2, 4);
		        phone += "-";
		        phone += number.substr(6,4);
		    }
		}else{
			if(number.length < 4) {
	        return number;
	   		} else if(number.length < 7) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3);
	    	} else if(number.length < 11) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 3);
	        phone += "-";
	        phone += number.substr(6);
	    } else {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 4);
	        phone += "-";
	        phone += number.substr(7);
	    }
	}
	    obj.value = phone;
		return false;
}//PhoneNumber

$(function() {
	
	
	//아이디 유효성, 중복검사
	$("#id_error").html("");
	$("#passCheck_error").html("");
	
    $("#id").change(function(){ 
  	   $("#chkmemberIdYN").val("N");
     });

    //와...힘들었다
     $(".chkmemberId").click(function(){
		$("#id_error").html("");
  	 	var id = $("#id").val();
		var num = id.search(/[0-9]/); //안들어오면 -1. typeof-number 
		var eng = id.search(/[a-zA-Z]/);//숫자길이. 안들어오면 -1. typeof-number 
		var kor = id.search(/[ㄱ-ㅎ가-힣]/);
		var spe = id.search(/[~!@#$%^&*()_+|<>?:{}]/); 
  	   if(id == ''){
		  $("#id_error").html("아이디를 입력해주세요");
  		  //$('#id').focus();
  		  return false;
  	   }else if( num ==-1 || eng ==-1 || spe!=-1 || kor!=-1 || id.length < 6) { 
			$("#id_error").html("영문, 숫자 조합 6~15자로 입력해주세요");
	  		//$('#id').focus();
	  			return false;
  	  	}
		
 		
		$.ajax({
			url:"join_idchk_process.do",
			data:"id="+$("#id").val(),
			dataType:"json",
			error:function(xhr){
				console.log("ajax에 들어오는 아이디 "+id); //들어온다
				console.log("에러 "+xhr.status+" / "+xhr.statusText);
				alert(xhr.status); 
				//500뜸 >> mapper에 resultType int 로 바꿔주고 404 
				//>>controller위에 @ResponseBody 안줬음 ㅎ..
			},
			success:function(jsonObj){
				//alert(jsonObj);
				//alert(jsonObj.dupChkFlag); //dupChkFlag 값 잘 받아옴
				if(jsonObj.dupChkFlag){ //select 돼서 true로 떨어지면 아이디가 있는것!
					alert("이미 존재하는 아이디입니다");
	 				$("#chkmemberIdYN").val("N");
				}else{
					alert("사용 가능한 아이디입니다");
		 			$("#chkmemberIdYN").val("Y");
					
				}
			}
		});//ajax
		
		$(document).on("blur", "#pass", function(){
			fncPswdCheck();
		});
		
		$(document).on("blur", "#passCheck", function(){
			if($("#passCheck").val() != $("#pass").val()){
				$("#passCheck_error").html("동일한 비밀번호를 입력해주세요.");
				//$("#passCheck").focus();
			}else{
				$("#passCheck_error").html("");
			}
		});
		
		
     });//ready
     
   //비밀번호 유효성
		function fncPswdCheck(){
			$("#pass_error").html("");
			//$("#passCheck_error").html("");
			
			if($("#pass").val() == ""){
				$("#pass_error").html("비밀번호를 입력해주세요.");
				//$("#pass").focus();
				return false;
			}
			 
			var pass=$("#pass").val();
			var num = pass.search(/[0-9]/);
			var eng = pass.search(/[a-zA-Z]/);
			var spe= pass.search(/[~!@#$%^&*()_+|<>?:{}]/); 
			//비밀번호 유효성 검사 :영문, 숫자, 특수문자 중 2종류 이상 8~12자 이내
					if(pass.length < 8 || pass.length >13){
						$("#pass_error").html("8자리 ~ 12자리 이내로 입력해주세요");
						  return ;
					}else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
						$("#pass_error").html("영문,숫자,특수문자 중 2가지 이상을 포함해주세요");
						  return;
					}
	
			if($("#passCheck").val() != $("#pass").val()){
				$("#passCheck_error").html("동일한 비밀번호를 입력해주세요.");
				return false;
			}
			
			return true;
		}	
     
     
     
     
     
	$("#saveBtn").click(function() {
		$("#nick_error").html("");
		$("#name_error").html("");
		$("#phone_error").html("");
		
		//파일 등록
		var pfimg=$("#pfimg").val();
		
		var blockExt="jpg,jpeg,png,PNG".split(",");
		var flag=false;
		var pfimgExt=pfimg.substring(pfimg.lastIndexOf(".")+1);
		
		for(var i=0; i<blockExt.length; i++){
			if(blockExt[i]==pfimgExt){
			flag=true;
			}
		}
		
		if(pfimg==null||pfimg==""){
			flag=true;
		}
		
		if(!flag){
			alert("이미지파일만 넣으라구");
			return flag;
		} 
		
		//아이디 중복검사 안했을떄, 검사 하고 아이디 바꿨을 떄
		if ($("#chkmemberIdYN").val()=="N") {
			$("#id_error").html("아이디 중복 검사를 해주세요.");
			return;
		}
		
/* 		//아이디 제외 유효성 검증
		var pass=$("#pass").val();
		if(pass.trim()==""){
			$("#id_error").html("아이디 중복 검사를 해주세요.");
			alert("비밀번호를 입력해주세요");
			$("#pass").focus();	
			return;
		} */
		
		var passCheck=$("#passCheck").val();
		if(passCheck.trim()==""){
			alert("비밀번호 확인을 해주세요");
			$("#passCheck").focus();	
			return;
		} 
		
		if(!fncPswdCheck()){
			fncPswdCheck();
			$("#passCheck").focus();	
			return;
		} 
		
		var nick=$("#nick").val();
		var korNick = nick.search(/[ㄱ-ㅎ]/);
		var speNick = nick.search(/[~!@#$%^&*()_+|<>?:{}]/); 
		if(nick.trim()=="" || korNick!=-1 || speNick!=-1){
			//alert("닉네임을 확인해주세요");
			$("#nick_error").html("닉네임을 확인해주세요");
			$("#nick").focus();	
			return;
		}
		
		var name=$("#name").val();
		var numName = name.search(/[0-9]/); 
		var korName = name.search(/[ㄱ-ㅎ]/);
		var speName = name.search(/[~!@#$%^&*()_+|<>?:{}]/); 
		if(name.trim()=="" || numName!=-1 || korName!=-1 || speName!=-1 ){
			//alert("이름을 확인해주세요");
			$("#name_error").html("이름을 확인해주세요");
			$("#name").focus();	
			return;
		}
		
		var phone=$("#phone").val();
		var engPhone = phone.search(/[a-zA-Z]/);
		var korPhone = phone.search(/[ㄱ-ㅎ가-힣]/);
		var spePhone = phone.search(/[~!@#$%^&*()_+|<>?:{}]/); 
		if(phone.trim()=="" || engPhone!=-1 || korPhone!=-1 || spePhone!=-1||phone.length>13){
			//alert("전화번호를 확인해주세요");
			$("#phone_error").html("전화번호를 확인해주세요");
			$("#phone").focus();	
			return;
		}
		
		$("#signUpFrm").submit();
	});
	
	
	
});//ready

//썸네일이미지 미리보기
	function thImgSet(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('pfThumb').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('pfThumb').src = "";
	  }
}
</script><!-- header pc-->



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

<nav class="lnb shop" id="lnb">
	<div class="inr" style="width:220px;">
		<nav class="menushop"style="margin-right:20px;margin-top:-30px;">
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
	<input type="" id="decodeNickNm" value="jsh1706"/>
		
	<style>
		.expire{
			font-size: 13rem;
			color: #ff7777;
			margin-top: 7px;
			padding: 0 5px 0;
			position:absolute;
			left:53%;
			top:20%;
		}
	</style>
<!-- 	<form id="signUpFrm" name="signUpFrm">
 -->		<div id="hiiden-field">
			<input type="hidden" id="adapter" onchange="fnSnsStatSave();"/>
			<input type="hidden" name="prflNm" value="" />
			<input type="hidden" name="prflImg" value="" />
			<input type="hidden" name="orgPrflImg" value="" />
			<input type="hidden" name="mobile" value="01076511775" />
			<input type="hidden" name="orgMobile" value="01076511775" />
			<input type="hidden" name="mobileCd" value="01" />
			<input type="hidden" name="ciCtfVal" value="lUijZT2Z0IRzMw8XpyV8D8pvEo0bk862JarAxqpFpzrpvZJWI3BIKay9mgqMKa/3Dc2WvvlBYSkrYv0WMqEgsw==" />
			<input type="hidden" name="diCtfVal" value="MC0GCCqGSIb3DQIJAyEAQBL4osxW3EX7WS3cxkwIkVl5IHo3u8flIJmWzAXteH0=" />
			<input type="hidden" name="rcomUrl" value=""/>
			<input type="hidden" name="rcomCd" value="2F5E09F6"/>
			<input type="hidden" name="ntnGbCd" value="10" />
		</div>
		<main class="container page login srch" id="container" style="margin-top:100px;margin-left:100px;">


			<div class="inr">
				<!-- 본문 -->
				<div class="contents" id="contents">
					<div class="pc-tit">
						<h2>회원가입</h2>
					</div>
					<div class="fake-pop">
						<div class="pct">
							<div class="poptents">
						<form id="signUpFrm" action="join_add_process.do" method="post" enctype="multipart/form-data">
								<!-- 프로필 사진 -->
								<div class="my-picture">
									<p class="picture">
										<img id="pfThumb" class="thumb" data-original="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images?type=f&w=720&h=720&quality=70&align=4" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images?type=f&w=720&h=720&quality=70&align=4" alt="" onerror="this.style.display='none'" onload="this.style.display='inline'">
									</p>
 									<button type="button" class="btn edit" id="imgBtn" onclick="document.all.pfimg.click()"></button>
									<input type="file" id="pfimg" name="pfimg" style="display: none" onchange="thImgSet(this)">
								</div>
								<!-- // 프로필 사진 -->
								<!-- 회원 정보 입력 -->
								<div class="member-input">
									<ul class="list">
										<li>
											<strong class="tit requied" style="visibility: hidden;" >아이디</strong>
											<p class="info">필수입력정보</p>
										</li>
										<li>
											<strong class="tit requied" >아이디</strong>
											<p class="info"><button type="button" href="login_form.do" id="chkId" class="chkmemberId">아이디 중복 검사 click</button>　</p><p class="info"></p>
											<div class="input">
												<input type="hidden" name="chkmemberIdYN" id="chkmemberIdYN" value="N"/>
												<input type="text" id="id"  name="id" class="required_join_input cleanValMsg" placeholder="영문, 숫자 조합 6~15자" maxlength="15"  style="padding-right: 29px;">
											</div>
											<p class="validation-check" id="id_error"></p>

										</li>
										<li>
											<strong class="tit requied">비밀번호</strong>
											<div class="input del">
												<input type="password" name="pass" id="pass" placeholder="영문,숫자,특문 중 두 개 이상 포함 8~12자" maxlength="12" autocomplete="new-password">
											</div>
											<p class="validation-check" id="pass_error"></p>
										</li>
										<li>
											<strong class="tit requied">비밀번호 확인</strong>
											<div class="input del">
												<input type="password" id="passCheck" name="passCheck" placeholder="비밀번호를 다시 한번 입력해주세요." maxlength="12" autocomplete="new-password">
											</div>
											<p class="validation-check" id="passCheck_error" ></p>
										</li>
										 <!-- 본인인증 안내 -->
										<li id="mobile-li-cert">
										</li>
										<li>
											<strong class="tit requied">닉네임</strong>
											<div class="input del">
												<input type="text" id="nick" name="nick" class="required_join_input cleanValMsg" placeholder="닉네임을 입력해주세요." maxlength="20" value="">
<!-- 												<input type="text" id="join_nickname" name="nick" class="required_join_input cleanValMsg" placeholder="닉네임을 입력해주세요." maxlength="20" value=""> -->
											</div>
											<p class="validation-check" id="nick_error" ></p>
											<!-- 회원등급 hidden으로 얘네 안써줘도됨. mapper가 이미 해주고있음 -->
												<input type="hidden" id="gradeid" name="gradeid" value="G1">
												<input type="hidden" id="status" name="status" value="정상">
											<p id="join_nickNm_error" class="validation-check"></p>
										</li>
										<li>
											<strong class="tit requied">이름</strong>
											<div class="input">
												<input type="text" name="name"  id="name" placeholder="이름을 입력해주세요" >
											</div>
											<p class="validation-check" id="name_error" ></p>
										</li>
										<li id="mobile-li-default">
											<strong class="tit requied">휴대폰 번호</strong>
											<div class="input">
												<input type="text" id="phone" name="phone" onkeyup="PhoneNumber(this)"  maxlength="13"  placeholder="휴대폰번호를 입력해주세요">
											</div>
											<p class="validation-check" id="phone_error" ></p>
										</li>
								
									</ul>
								</div>
	</form>
								<!-- // 회원 정보 입력 -->
							</div>
						</div>
						<div class="pbt pull mt54">
							<div class="bts">
<!-- 								<a href="javascript:;" class="btn xl a" id="saveBtn" onclick="updateMember();">다음</a> -->
								<a class="btn xl a" id="saveBtn">다음</a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</main>
	<!-- e -->

					</main>
			</div>
	</div>
</article><!-- 플로팅 영역 --><!-- location 영역 포함  -->			
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