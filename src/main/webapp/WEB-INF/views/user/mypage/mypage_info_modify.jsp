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
<link rel="stylesheet" type="text/css" href="http://localhost/mpnp/3rdDesign//_css/main.style.pc.css">
<link rel="stylesheet" type="text/css" href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/mypage.css">
<script type="text/javascript" src="http://localhost/mpnp/3rdDesign//_script/crypto.js"></script>
<script type="text/javascript" src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810" userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D" webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>

<script type="text/javascript"  src="http://localhost/mpnp/3rdDesign//_script/common.js?modifiedDate=20221013" ></script>
<script type="text/javascript"  src="http://localhost/mpnp/3rdDesign/_script/popup.js" ></script>
<script type="text/javascript"    src="http://localhost/mpnp/3rdDesign/_script/ui.js"></script>
<script type="text/javascript"    src="http://localhost/mpnp/3rdDesign/_script/ui_shop.js"></script>

  <!--google icons-->
	<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<!--google fonts-->
	<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">





</head>
<script type="text/javascript">
	$(function() {
		
		$("#saveBtn").click(function() {
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
			
			$("#myModifyFrm").submit();
		});
	});
	
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
	}//thImgSet
	
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

</script>

<body class="body">

<!-- 기본 컨텐츠 -->
	<div class="wrap" id="wrap">
		<input type="hidden" id="viewJsonData" value="%7B%22vod_group_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Flist%3Fchannel_id%3D%22%2C%22vod_group_move_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fmove_vod%2F%22%2C%22vod_group_add_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fplaylist%2Fadd_item%2F%22%2C%22vod_upload_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fupload%2F%22%2C%22vod_chnl_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fchannel%2Flist%22%2C%22fo_mois_post_confmKey%22%3A%22U01TX0FVVEgyMDIxMDMzMDEwMzEzMDExMDk4MTk%3D%22%2C%22vod_api_chnl_id_log%22%3A%22aboutpet_log%22%2C%22vod_info_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2Finfo%2F%22%2C%22vod_group_chnl_ord_api_url%22%3Anull%2C%22vod_list_api_url%22%3A%22https%3A%2F%2Fsgr.aboutpet.co.kr%2Fv1%2Fvod%2Fvideo%2F%22%2C%22vod_group_default%22%3A%22unclassified%22%2C%22vod_api_chnl_id_tv%22%3A%22aboutpet_tv%22%7D">
		
	<!--  -->
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
	<input type="hidden" id="decodeNickNm" value="jsh1706"/>
		
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
		<div id="hiiden-field">
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
		<main class="container page login srch" id="container" style="margin-left:150px;">
<!-- 				<div class="header pageHead heightNone"> -->
<!-- 					<div class="inr"> -->
<!-- 						<div class="hdt"> -->
<!-- 							<button class="back" type="button" onclick="goBack();" data-content="" data-url="/mypage/indexMyPage">뒤로가기</button> -->
<!-- 						</div> -->
<!-- 						<div class="cent"><h2 class="subtit">회원정보 수정</h2></div> -->
<!-- 					</div> -->
<!-- 				</div> -->

			<div class="inr">
				<!-- 본문 -->
				<div class="contents" id="contents">
					<div class="pc-tit">
						<h2>회원정보 수정</h2>
					</div>
					<div class="fake-pop">
						<div class="pct">
							<div class="poptents">
								<!-- 프로필 사진 -->
							<form id="myModifyFrm" action="m_info_modify_process.do" enctype="multipart/form-data" method="post" >
								<div class="my-picture">
									<p class="picture">
										<img id="pfThumb" class="thumb" data-original="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images?type=f&w=720&h=720&quality=70&align=4" src="http://localhost/mpnp/upload_pf/${requestScope.mypage.pfimg }" alt="" onerror="this.style.display='none'" onload="this.style.display='inline'">
									</p>
									<button type="button" class="btn edit" id="imgBtn" onclick="document.all.pfimg.click()"></button>
									<input type="file" id="pfimg" name="pfimg" style="display: none" onchange="thImgSet(this)">
								</div>
								<!-- // 프로필 사진 -->
								<!-- 회원 정보 입력 -->
								<div class="member-input">
									<ul class="list">
										<li>
											<strong class="tit requied">아이디</strong>
											<p class="info">필수 입력 정보</p>
											<div class="input disabled">
												<input type="text" id="id" name="id" readonly  value="${requestScope.mypage.id }" style="-webkit-text-fill-color:black;">
											</div>
										</li>
										<li>
											<strong class="tit requied">이름</strong>
											<div class="input">
											<input type="text"  id="name" name="name" value="${requestScope.mypage.name }" readonly  style="-webkit-text-fill-color:black;">
												</div>
										</li>
										<li id="mobile-li-default">
											<strong class="tit requied">휴대폰 번호</strong>
											<div class="input">
												<input type="text" id="phone" name="phone" value="${requestScope.mypage.phone }" onkeyup="PhoneNumber(this)"  maxlength="13"  style="-webkit-text-fill-color:black;">
												</div>
										</li>
										 <!-- 본인인증 안내 -->
										<li id="mobile-li-cert">
										</li>
										<li>
											<strong class="tit requied">닉네임</strong>
											<div class="input del disabled">
												<input type="text" id="nick" name="nick" class="valChkRequired" value="${requestScope.mypage.nick }"  maxlength ="22" placeholder="닉네임을 입력해주세요." style="-webkit-text-fill-color:black;" >
												<!-- 메인에서 등급보여줄 때 사용하려고 -->
												<input type="hidden" id="gradeid" name="gradeid" class="valChkRequired" value="${requestScope.mypage.gradeid }"  maxlength ="22" placeholder="닉네임을 입력해주세요." style="-webkit-text-fill-color:black;" >
											
											</div>
										</li>
									</ul>
								</div>
								<!-- // 회원 정보 입력 -->
							</div>
						</div>
						<div class="pbt pull mt54">
							<div class="bts">
								<a class="btn xl a" id="saveBtn">저장</a>
<!-- 								<a href="javascript:;" class="btn xl a" id="saveBtn" onclick="updateMember();">저장</a> -->
							</div>
						</div>
						</form>
						<div class="btn-area">
							<a href="m_quit_form.do" class="text-btn" data-content="1319790" >회원탈퇴하기</a>
<!-- 							<a href="javascript:fnLeaveMember();" class="text-btn" data-url="/mypage/info/indexLeaveGuide" data-content="1319790" >회원탈퇴하기</a> -->
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