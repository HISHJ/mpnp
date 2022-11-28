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
	href="https://vknfvtjnsgec6381690.cdn.ntruss.com/_css/jquery-ui.css">
<link rel="stylesheet"
	href="http://localhost/mpnp/3rdDesign/css/mypage.css">
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/my.css">
<script type="text/javascript"
	src="http://localhost/mpnp/3rdDesign/_script/crypto.js"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/errHandler.min.js?v=22102810"
	userInfo="%7B%22mbrNo%22%3A0%2C%22appName%22%3A%22FRONT%22%2C%22sessionIp%22%3A%22211.244.65.66%22%2C%22appEnv%22%3A%22PRD%22%2C%22sessionId%22%3A%22NjliOTliYTEtMzM2Mi00OWE0LTk4NGQtODNkNDY1NDliOTMx%22%7D"
	webHookErrWebUrl="https://petsbe.webhook.office.com/webhookb2/6846f755-9900-4b13-8eb6-7c7a01c9abde@2ebad8bd-5697-4302-afcf-7b617ee135ff/IncomingWebhook/287ff9c2be6c4aecba75d0f1f665a86c/89d2885b-4579-4313-be4c-a1c2f9998d81"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/swiper.min.js"></script>

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
	$(function() {
		$(".bt_dog").click(function() {
			$(".bt_cat").removeClass("active");
			$(this).addClass("active")
			$(".open_dog").css('display', 'block');
			$(".open_cat").css('display', 'none');

		})//click

		$(".bt_cat").click(function() {
			$(".bt_dog").removeClass("active");
			$(this).addClass("active")
			$(".open_cat").css('display', 'block');
			$(".open_dog").css('display', 'none');

		})//click

	})
</script>


<!--라이브 앱과 연동을위한 JS -->
<script src="https://sgr.aboutpet.co.kr/web/runInit/v1.js"></script>

<style>
.uidropmu>.bt.st{

	font-size:15px !important;
}
</style>

</head>

<body class="body">

	<!-- 기본 컨텐츠 -->
	<div class="wrap" id="wrap">

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
		<
		<!--❤️사이드바-->


		<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>
		<!-- e : gnb 영역 -->
		<!-- s : LNB 영역 -->

		<nav class="lnb shop" id="lnb">
			<div class="inr" style="width: 220px;">
				<nav class="menushop" style="margin-right: 20px; margin-top: -30px;">
					<h2 class="bt bt_my">MY</h2>


					<div class="ctset ctset1 active" data-ui-tab-ctn="tab_my_cate" data-ui-tab-val="tab_my_cate_1" style="width:200px;">
						<ul class="sm">
							<li><a class="bt" href="order_information_form.do" data-content="0">주문내역</a></li>
							<li><a class="bt" href="writable_review_list.do"  data-content="0">상품 후기</a></li>
							<li><a class="bt" href="mypage_pass_confirm.do?what=updatePass">비밀번호 설정</a></li>
							<li><a class="bt" href="mypage_pass_confirm.do?what=updateMemberInfo" >회원정보 수정</a></li>
							<li><a class="bt" href="des_list.do" data-content="0"  >배송지 관리</a></li>
						</ul>
					</div>


				</nav>

				<nav class="menushop">
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
		<!--❤️main-->
		
		<!-- 11.21 최정민테스트 -->
		<script>
		$(function(){
			$("#writableBtn").click(function(){
				location.href="writable_review_list.do";
				//alert("눌림");
				//$(".writableTab").show();
				//$(".writenTab").hide();
			})
			$("#writenBtn").click(function(){
				location.href="writen_review_list.do";
				//alert("눌림");
				//$(".writenTab").show();
				//$(".writableTab").hide();
			})
		})
		$(function(){
			
		})
		function editBtn(reviewId){
			//alert(reviewId);
			//alert($("#selReviewId").val());
			
			$("#selReviewId").val(reviewId);
			//alert($("#selReviewId").val());
			
			$("#editFrm").submit();
		}
		
		function removeBtn(reviewId){
			//alert(reviewId);
			//alert($("#selReviewId").val());
			if(confirm("후기를 삭제하시겠습니까?")){
				//ajax 해도될거같은데?
				$.ajax({
				url:"remove_review_process.do",
				data:"selReviewId="+reviewId,
				dataType:"json",
				error:function(xhr){
					alert(xhr.status);
					alert(xhr.statusText);
					alert(xhr.state());
					console.log(xhr.statusText);
				
				},
				success:function(jsonObj){
					//alert(jsonObj)
					if(jsonObj.removeFlag){
						alert("삭제가완료되었습니다");
						location.href="writen_review_list.do";
					}else{
						alert("ㄴㄴㄴ");
					}
				}
				
			})					
						
		}
			//alert($("#selReviewId").val());
			
		}
		/* function editBtn(reviewId){
			alert(reviewId);
			$.ajax({
				url:"",
				date : reviewId,
				dataType :"HTML",
				error:function(xhr){
					
				},
				success:function(data){
					
				}
				
			})
		} */
		</script>
		<main class="container lnb page my" id="container"
			style="margin-left: 100px;">
			<div class="inr" style="min-height: 429px;">
				<!-- 본문 -->
				<div class="contents" id="contents" style="min-height: 550.8px;">
					<!-- PC 타이틀 모바일에서 제거  -->
					<div class="pc-tit">
						<h2 style="margin-top:120px;">상품후기</h2>
					</div>
					<!-- // PC 타이틀 모바일에서 제거  -->
					<div class="petTabContent leftTab mode_fixed hmode_auto">
						<!-- 2021.03.15 : mode_fixed, hmode_auto 클래스 추가 -->
						<ul class="uiTab a line">
							<li class="">
							<a class="bt" id="writableBtn" href="javascript:;">작성 가능한 후기</a>
							</li>
							<li class="active">
							<a class="bt" id="writenBtn" href="javascript:;">내가 작성한 후기</a>
							</li>
						</ul>
						<!--😎작성가능한 후기는 있는데 작성한 후기가 없는 경우-->
						<!-- tab content -->
						<form id="editFrm" action="writen_review_detail_form.do" >
							<input type="hidden" value="" name="selReviewId" id="selReviewId">
						</form>
						<div class="uiTab_content writenTab" >
							<ul style="left: -100%;">
							<c:choose>
							<c:when  test="${ writenList.size() > 0 }">
							<c:forEach var="writenReview" items="${writenList }">
								<!-- <li class="active" style="min-height: 369px;"> -->
									<div class="review-area t2" name="aftList"
										style="padding-bottom: 20px;">
										<div class="item" name="estmData" >
											<div class="inr">
												<div class="top">
													<p class="pic">
														<!-- <img
															src="https://vknfvtjnsgec6381690.cdn.ntruss.com/aboutPet/images/goods/GS251062051/PI000001260_1.jpg"
															alt="상품" class="img"> -->
															<img src="http://localhost/mpnp/upload/product/${writenReview.thImg }"
															alt="상품" class="img">
															<%-- <c:out value="${writenReview.thImg }"/> --%>
													</p>
													<div class="txt" style="margin-left:30px;">
														<p class="t1"><c:out value="${writenReview.name }"/></p>
														<p class="t2 k0423" style="width:550px; height:40px; overflow:hidden;
														display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient:vertical;"><c:out value="${writenReview.contents }"/></p>
													</div>
												</div>
												<div class="bottom">
													<p class="txt" style="width:150px;">
														<strong>작성일</strong><%-- <c:out value="${writenReview.writeDate }"/> --%>
														<fmt:formatDate pattern="yyyy .MM .dd" value="${writenReview.writeDate }"/>
													</p>
													<!-- 펫로그 후기는 작성 7일 이후에 수정 불가 CSR-2568 -->
													<nav class="uidropmu dmenu">
														<button type="button" class="bt st btn" style="font-size:15px;" style="border:1px;">메뉴열기</button>
														<div class="list">
															<ul class="menu">
																<li><button type="button" class="bt"
																		onclick="editBtn('${writenReview.reviewId}')">상세보기</button></li>
																<li><button type="button" class="bt"
																		onclick="removeBtn('${writenReview.reviewId}')">삭제</button></li>
															</ul>
														</div>
													</nav>
												</div>
											</div>
											<div class="review" name="myEstmResult">
												<!-- 평점 -->
												<div class="starpoint">
													<span class="stars sm p_${writenReview.starScore }_0"></span>
												</div>

												<!-- // 평점 -->
												<!-- <div class="like-area">
													도움이돼요
													<button class="like" style="cursor: default;">
														<span>0</span>
													</button>
												</div> -->
											</div>
										</div>
									</div>
								<!-- </li> -->
								</c:forEach>
								</c:when>
								<c:otherwise>
								<!-- <li class="" style="min-height: 369px;"> -->
									<!-- 내역 없을 경우 style block-->
									<div class="inr-box noneBoxPoint" name="bfNoComment"
										style="height: 746px;">
										<section class="no_data i1 auto_h view">
											<div class="inr">
												<div class="msg">작성하신 상품후기가 없습니다.</div>
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
			</div>
		</main>
		<!-- location 영역 포함  -->
		<!--❤️main끝-->


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