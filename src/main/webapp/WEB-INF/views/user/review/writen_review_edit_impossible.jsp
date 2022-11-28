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

<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/my.css">
<link rel="stylesheet" href="http://localhost/mpnp/3rdDesign/css/star.css">
<script type="text/javascript" src="/_script/crypto.js"></script>
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


<style type="text/css">
	/* 아이폰 계열에서 저장되는 것 막음 / css 에 추가 */
	img, video {
		/* 화면을 길게 누르고 있을때 뜨는 팝업이나 액션시트를 제어 */
		-webkit-touch-callout:none;
		/* 텍스트나 이미지를 선택할 수 있게 하는 여부를 제어 */
		/*-webkit-user-select:none;*/
		/* 링크를 터치했을때 나오는 기본 영역의 색상을 제어 */
		/*-webkit-tap-highlight-color:transparent;*/
	}
</style>


<!--라이브 앱과 연동을위한 JS -->
<script src="https://sgr.aboutpet.co.kr/web/runInit/v1.js"></script>
<script type="text/javascript">
	//검색API 클릭 이벤트(사용자 액션 로그 수집)
	function userActionLog(contId, action, url, targetUrl){	
		var mbrNo = "0";
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




<style>
td{
	position:relative;
}
[name=imgXBtn]{
	position:absolute;
	right:1px; top:1px;
}
.reviewImgs{
	width:100px;
	height:100px;
}
td > .img{
	width:100px;
	height:100px;
}
#imgTable{
}
#addPicBtn{
	top:20px;
}
tr > .btnSet{
	float:left;
}
.uirevset-my .set.file .btnSet .btnAddPic:before{
	margin-top:30px;
}
.btn{
	overflow: visible;
}
.lg{
	min-width: 100px;
}
</style>

<!-- 11.24 최정민 -->
<style>
.inner-content i{
	font-size:20px;
	
}
.imgs img{
	width:150px; height:150px;
	text-align:center;
}

.uirevset-my .set.memo .hdt{
padding:0px;
}

</style>

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

<nav class="lnb shop" id="lnb" >
	<div class="inr" style="width:220px;">
		<nav class="menushop"style="margin-right:20px;">
			<h2 class="bt bt_my">MY</h2>
		

			<div class="ctset ctset1 active" data-ui-tab-ctn="tab_my_cate" data-ui-tab-val="tab_my_cate_1" style="width:200px;">
						<ul class="sm">
							<li><a class="bt" href="order_information_form.do"" data-content="0">주문내역</a></li>
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
	
	
	
	
	<style>
.container{
	margin-top:-5px;
	margin-bottom:170px;
}


	
	</style>
	
			
		 
				<!--❤️nav-->
	<script>
	
	function imgChk(input){
			
		//alert(input.value);	
		
		// 여기서 이미지 유효성검증 할예정
		var beforeImg = input.value;
		// 확장자, 크기, 갯수
		
		 
		// 미선택
		if(beforeImg.trim() == "" || beforeImg == null){
			alert("이미지를 선택해주세요");
			return ;
		}
	//	alert("공백통과");
		
		// 갯수
		//alert(document.getElementById('myRow').cells.length);
		//alert("지금 갯수몇개지"+document.getElementById('myRow').cells.length);
		if(document.getElementById('myRow').cells.length>3){
			alert("이미지는 최대 3개까지만 업로드가 가능합니다.");
			return ;
		}
	//	alert("갯수통과");
		
		// 파일 업로드 확장자 체크
	    //var ext = $('#docufile').val().split('.').pop().toLowerCase();
	    var extDot = beforeImg.lastIndexOf('.');
	    var ext = beforeImg.substring(extDot+1,beforeImg.length).toLowerCase();
	    //alert("뽑아낸 확장자 : "+ext);
	    //alert(ext=='jpg');
	    var extArr = ['jpg','jpeg','png','gif'];
	    if(!extArr.includes(ext)){
	  	  "사용할 수 없는 확장자입니다.";
	  	  return;
	    }
	    // 저 확장자가 아닌것도 여기까진 안오는데 선택한 파일명 나오는 그 input file 버튼 옆에는 뜨는구나
	    // 근데 어차피 통과못하면 td추가도 안할거니까 상관없지않나
	    
	   // alert("확장자 통과함");
		
		// 크기
		var maxSize = 1024*1024*10;
	    if(beforeImg.trim() != ""){
			//alert("선택한 파일의 사이즈"+input.files[0].size);
			
			var fileSize = input.files[0].size;
			if(fileSize>maxSize){
				alert("파일사이즈는 10MB까지만 가능합니다");
				input.value = null;
				return;
			}
		}
		//alert("사이즈 통과함");
		
		
			
		var cntTest = document.getElementById('myRow').cells.length;
		// 다 통과하면 addColumn호출
		addColumn(input);
	}	
		
	function addColumn(input){
		
		var imgValue = input.value;
		
		var row = document.getElementById('myRow');
		
		
		var imgRow = document.getElementById("myRow"); // 이래야되네
		//alert(imgRow.cells.length);
		var cnt = imgRow.cells.length;
	    
	    //////////////////////////////////
	    var tableTest = document.getElementById("imgTable");
	    
	    /////////////////////////////////
	    
		var newCell = row.insertCell(-1);
	    //alert("newCell : "+newCell);
		//alert("무슨오브젝트"+input);
		
	    //alert("newCell insertCell한뒤 갯수 "+document.getElementById("myRow").cells.length);
	    
		//var testHTML = "<img src="+imgValue+" id='imgsTag_"+cnt+"' style='width:100px;'name='reviewImgs'><input name='reviewImgs' type='button' value='X' onclick='removeTest(this)'>";
		//var testHTML = "<input name='reviewImgs' type='file'><input name='imgXBtn' type='button' value='X' onclick='removeTest(this)'>";
		/////////////////////////////
		var testHTML = "<label class='btn lg btnAddPic' for='inputFile"+cnt+"' id='imgAddBtn-comment' >사진 첨부하기"+cnt+"</label>";
		testHTML += "<img id ='preview_"+cnt+"' src='' >";
		testHTML += "<input type='file' id='inputFile"+cnt+"' name='reviewImgs_"+cnt+"' accept='.gif, .jpg, .png, .jpeg' onchange='imgChk(this)' style='display:none'/>";
		/* testHTML += "<input name='imgXBtn' type='button' value='X' onclick='removeTest(this)'>"; */
		
		
		
		//<input name='reviewImgs' type='file'><input name='imgXBtn' type='button' value='X' onclick='removeTest(this)'>";
		
	    newCell.innerHTML = testHTML;
	    //////////////////////////////////////////
	    
	    
	    var beforeCell = $("#myRow").find("td:eq("+(cnt-1)+")");
	    //alert(beforeCell);
	    //alert("beforeCell : "+beforeCell);
	    //var tttt = "<img src="+imgValue+" id='imgsTag_"+cnt-1+"' style='width:100px;'name='reviewImgs'>";
	    //beforeCell.innerHTML = tttt;
	    //////////////////////////////////////////////////////
	    
	    //alert("여기여기 cnt :"+cnt);
	    $("#myRow").find("td:eq("+cnt+")").attr('id',"imgs_"+cnt);// 이렇게해야들어가네..
	    $("#myRow").find("td:eq("+cnt+")").attr('class',"btnSet");
	    $("#myRow").find("td:eq("+cnt+")").attr('style',"margin-right:25px;");
	    $("#myRow").find("td:eq("+cnt+")").find('img').attr('style',"width:100px;");
	    $("#myRow").find("td:eq("+cnt+")").find('.lg').attr('style',"min-width:100px;");
	    if(cnt==3){
	    	$("#myRow").find("td:eq("+cnt+")").attr('style','display:none');
	    }
	    //alert("또 null이냐"+document.getElementById("imgTag_"+(cnt-1)).value);
	    
	    ///////이미지 미리보기 넣기//////////
	    var reader = new FileReader();
	    reader.onload = function(e) {
	    //	alert("지금 cnt-1 값 :"+(cnt-1));
	      document.getElementById("preview_"+(cnt-1)).src = e.target.result;
	      $("#myRow").find("td:eq("+(cnt-1)+")").append("<input name='imgXBtn' type='button' value='X' onclick='removeTest(this)'>");
	      
	      //document.getElementById("preview_"+(cnt-1)).parent().find("label").attr('style',"display:none");
	      $(input).parent().find("label").attr('style',"display:none");
	      $(input).parent().find("img").attr('style',"display:block");
	    };
	    reader.readAsDataURL(input.files[0]);
	    
	}
	function removeTest(input){
		//alert(input);
		var testttt = $(input).parent().attr('id');
		//alert("받아온 부모의 id 값 : "+testttt);
		var testIndex = testttt.slice(-1);
		//testIndex = testIndex * 1;
		//alert("받아온 부모의 id 값에서 자른번호 : "+testIndex);
		var row = document.getElementById('myRow');
		row.deleteCell(testIndex);
		var cnt = row.cells.length;
		
		if(row.cells.length==testIndex){
			
			//alert("제일끝에거 지움");
			
			var newCell = row.insertCell(-1);
			
			var testHTML = "<label class='btn lg btnAddPic' for='inputFile"+cnt+"' id='imgAddBtn-comment' >사진 첨부하기"+cnt+"</label>";
			testHTML += "<img id ='preview_"+cnt+"' src=''>";
			testHTML += "<input type='file' id='inputFile"+cnt+"' name='reviewImgs_"+cnt+"' accept='.gif, .jpg, .png, .jpeg' onchange='imgChk(this)' style='display:none'/>";
			testHTML += "<input name='imgXBtn' type='button' value='X' onclick='removeTest(this)'>";
		    newCell.innerHTML = testHTML;
		    
			$("#myRow").find("td:eq("+cnt+")").attr('id',"imgs_"+cnt);// 이렇게해야들어가네..
		}
		
		
		
		
		
		/* if(cnt<1){ // 다 지워졌다면
			alert("다지움");
			var newCell = row.insertCell(-1);
			var testHTML = "<label class='btn lg btnAddPic' for='inputFile"+0+"' id='imgAddBtn-comment' >사진 첨부하기"+0+"</label>";
			testHTML += "<img id ='preview_"+0+"' src='' >";
			testHTML += "<input type='file' id='inputFile"+0+"' name='reviewImgs_"+0+"' accept='.gif, .jpg, .png, .jpeg' onchange='imgChk(this)' style='display:none'/>";
			testHTML += "<input name='imgXBtn' type='button' value='X' onclick='removeTest(this)'>";
			newCell.innerHTML = testHTML;
			$("#myRow").find("td:eq("+0+")").attr('id',"imgs_"+0);
		}
		alert("지웠을때 cnt : "+cnt) */
		
		if(cnt==3){
	    	$("#myRow").find("td:eq("+(cnt-1)+")").attr('style','display:inline');
	    }
		// 와 코드 되게 더럽네
		for(var i=0;i<cnt;i++){
			$("#myRow").find("td:eq("+i+")").attr('id',"imgs_"+i);
			$("#myRow").find("td:eq("+i+")").find("label").attr('for',"inputFile"+i);
			$("#myRow").find("td:eq("+i+")").find("[type=file]").attr('id',"inputFile"+i);
			$("#myRow").find("td:eq("+i+")").find("[type=file]").attr('name',"reviewImgs_"+i);
			//$("#myRow").find("td:eq("+i+")").find("img").attr('id',"imgs_"+i);
			$("#myRow").find("td:eq("+i+")").find("img").attr('id',"preview_"+i);
		}
		//alert("부모태그의 id 찾기"+input.parent().attr('id'));
	}
	
	
	function rowCnt(){
		// 필요없을거같은데? 좌석세는것도아니니까
		var rows = document.getElementById("chkSeatNum").getElementsByTagName("tr");
		/* alert(rows.length); */
		document.getElementById("totalSeat").value = rows.length;
	}
	
	
	$(function(){
		$("[name=starRating]").click(function(){
			//alert(this.value);
			document.getElementById("starScore").value = this.value;
		})
	})
	function writeAdd(){
		/*  */
		var contents = document.getElementById("reviewContents").value;
		alert(contents);
		if(contents.trim()=="" || contents==null){
			alert("내용을 입력해주세요");
			return;
		}
		var starScore = document.getElementById("starScore").value;
		alert(starScore);
		if(starScore.trim()=="" || starScore==null){
			alert("별점을 선택해주세요");
			return;
		}
		
		if(confirm("후기를 등록하시겠습니까?")){
			$("#reviewContentsForm").submit();
		}
				
		//alert("내용 : "+contents);
		//alert("별점 : "+contents);
		//alert("주문상세아이디 : "+document.getElementById("orderDetailId").value);
		
		
	}
	
	</script>
	<script>
	/* 11-24 지금이거할때가아닌데 */
	
/* 	window.onload = function(){
		var star = "<c:out value='${requestScope.reviewDetail.starScore}'/>";
		var chkStar = $("#star"+star);
		 chkStar.attr('checked',"checked");
		 $("[name=starRating]").attr('disabled',true);
		//setStarScore();
	}
	function setContents(){
		var con = "<c:out value='${requestScope.reviewDetail.contents}'/>";
		alert(con);
		 
		 // textarea에 바로하니까 앞에 공백이 왜이렇게 생기지??
		 
		 //con.replace(/(<br\/>)/g, '\r\n');
		 
		 //alert(con);
		 //let text = document.querySelector(".textarea").value;
		 //con = con.replaceAll("&lt;br&gt;", '\r\n');
		 //con.replace(/\n/g, '<br/>');
		 
		 //alert(con);
		 document.getElementById("reviewContents").value = con;
	} 
	
	
	function setStarScore(){
		 var star = "<c:out value='${requestScope.reviewDetail.starScore}'/>";
		 alert(star);
		 var chkStar = $("#star"+star);
		 chkStar.attr('checked',"checked");
		 //document.getElemenById("star"+star).attr("checked","checked");
		$("[name=starRating]").attr('disabled',true);
		 //document.getElementById("starScore").value = star;
	}
	*/
	
	function moveTest(){
		//alert("수정은없다");
		location.href="writen_review_list.do";
	}
	
	</script>
	
			<!--❤️main-->
			<!-- 바디 - 여기위로 템플릿 -->
			<main class="container lnb page my" id="container" style="width:80%;margin-top:100px !important;margin-left:230px !important;">
				<!-- <input type="hidden" id="returnUrl" value="https://aboutpet.co.kr/mypage/order/indexPurchaseCompletion"> -->
				<div class="inr" style="min-height: 429px;">
					<!-- 본문 -->
					<div class="contents" id="contents" style="min-height: 550.8px;">
						<div class="pc-tit">
							<h2 id="asd"> 후기 상세보기</h2>
						</div>
										
							<form id="reviewContentsForm" action="add_review_process.do" method="POST" enctype="multipart/form-data"><!--  POST -->
							<input type="hidden" name="orderDetailId" id="orderDetailId" value="${odId }"/>
							<!-- 내용길수도있으니까 post인데 이거 되나? 어차피 사진때문에 VO로 못받잖아 -->
							<!-- 어쨋든 등록버튼누르면 그냥 AJAX처리하고 해당페이지로 보내주면 될거같은데? -->
							<div class="uirevset-my">
								<div class="set gods line-n">
									<div class="cdt">
										<div class="tops">
											<div class="pic">
											<%-- 사진 : <c:out value="${reviewDetail.thImg }"/> --%>
											<img src="http://localhost/mpnp/upload/product/${reviewDetail.thImg }"
															alt="상품" class="img"></div>
											<div class="name">
												<div class="tit k0423"><c:out value="${reviewDetail.name }"/></div>
												<div class="stt k0423"></div>
											</div>
										</div>
									</div>
								</div>
								<c:choose>
								<c:when test="${ not empty reviewDetail.reviewImg }">
								<div class="set memo" style="height:150px; margin-top:0px;">
									<div class="hdt" style="margin-top:60px;">
										<span class="tit" style="font-size:15px; margin-left:40px;">등록하신 이미지</span>
									</div>
								<!-- <div class="imgs" style="text-align:center;"> -->
									<div class="imgarea">
								<c:forEach var="img" items="${reviewDetail.reviewImg }">
									<%-- <c:out value="${img }"/> --%>
										<%-- <img src="E:/dev/workspace_spring/upfileTest/${img }" style="width:150px; width:150px;"/> --%>
										<%-- <img src="http://localhost/mpnp/upload/review/${img }" style="width:150px; height:150px; border-radius:20px; margin-right:20px;"/> --%>
										<img src="http://mpnp.sist.co.kr/mpnp/upload/review/${img }" style="width:150px; height:150px; border-radius:20px; margin-right:20px;"/>
								</c:forEach>
									</div>
								<!-- </div> -->
								</div>
								</c:when>
								<c:otherwise>
								<div class="set memo" style="height:150px; margin-top:0px;">
									<div class="hdt" style="margin-top:60px;">
											<span class="tit" style="font-size:15px; margin-left:40px;">등록하신 이미지</span>
									</div>
									<div class="inr-box noneBoxPoint" name="bfNoComment" style="width:100%; text-align:center;">
										<div class="no_data i1 auto_h view" style="margin-top:90px; right:100px;" >
										<%-- <c:out value="${img }"/> --%>
											<%-- <img src="E:/dev/workspace_spring/upfileTest/${img }" style="width:150px; width:150px;"/> --%>
											<div class="inr">
												<div class="msg">등록하신 이미지가 업슷ㅂ니다.</div>
											</div>
										</div>
									</div>
								</div>
								<!-- <div class="inr-box noneBoxPoint" name="bfNoComment" >
									<section class="no_data i1 auto_h view">
										<div class="inr">
											<div class="msg">등록하신 이미지가 업슷ㅂ니다.</div>
										</div>
									</section>
								</div> -->
								</c:otherwise>
								</c:choose>
								<!-- <div class="flex-box">
								<div class="set file">
										<div class="flex-box">
											<table id="imgTable">
												<tr id="myRow" >
												<td class="btnSet" id="imgs_0" style="margin-right:20px;"><input type="file" value="addBtn" accept=".gif, .jpg, .png, .jpeg" onchange="imgChk(this)"/>
												<label class="btn lg btnAddPic" for="inputFile" id="imgAddBtn-comment" >사진 첨부하기</label>
												<img id='preview_0' src="" style="display:none">
												<input type="file" id="inputFile" name="reviewImgs_0" accept=".gif, .jpg, .png, .jpeg" onchange="imgChk(this)" style="display:none"/>
												<input name='imgXBtn' type='button' value='X' onclick='removeTest(this)'>
												</td>
												</tr>
											</table>
										</div>
								</div>			 -->	
														
								
							
								<div class="set memo">
									<div class="hdt" style="margin-top:60px;">
										<span class="tit" style="font-size:15px; margin-left:40px;">작성하신 내용</span>
									</div>
									<div class="textarea">
										<textarea name="reviewContents" id="reviewContents" placeholder="" readonly="readonly"><c:out value="${requestScope.reviewDetail.contents}"/></textarea>
									</div>
								</div>
							
									<div class="">
											<div class=""  style="margin:10px; margin-right:40px;">
												<input type="hidden" name="starScore" id="starScore"/>
												<div class="inner-content" style="margin:10px;">
													<input type="radio" name="starRating" value="5" id="star5" disabled="disabled"
													<c:if test="${reviewDetail.starScore == 5 }">checked</c:if>
													>
													<label for="star5"><i class="fa fa-star"></i></label>
													<input type="radio" name="starRating" value="4"  id="star4" disabled="disabled"
													<c:if test="${reviewDetail.starScore == 4 }">checked</c:if>
													>
													<label for="star4"><i class="fa fa-star"></i></label>
													<input type="radio" name="starRating" value="3" id="star3" disabled="disabled"
													<c:if test="${reviewDetail.starScore == 3 }">checked</c:if>
													>
													<label for="star3"><i class="fa fa-star"></i></label>
													<input type="radio" name="starRating" value="2" id="star2" disabled="disabled"
													<c:if test="${reviewDetail.starScore == 2 }">checked</c:if>
													>
													<label for="star2"><i class="fa fa-star"></i></label>
													<input type="radio" name="starRating" value="1" id="star1" disabled="disabled"
													<c:if test="${reviewDetail.starScore == 1 }">checked</c:if>
													>
													<label for="star1"><i class="fa fa-star"></i></label>
												</div>
											</div>
									</div>
							</div>
									<!-- <div class="set file">
										<div class="flex-box">
											<table id="imgTable">
												<tr id="myRow" >
												<td class="btnSet" id="imgs_0" style="margin-right:20px;"><input type="file" value="addBtn" accept=".gif, .jpg, .png, .jpeg" onchange="imgChk(this)"/>
												<label class="btn lg btnAddPic" for="inputFile" id="imgAddBtn-comment" >사진 첨부하기</label>
												<img id='preview_0' src="" style="display:none">
												<input type="file" id="inputFile" name="reviewImgs_0" accept=".gif, .jpg, .png, .jpeg" onchange="imgChk(this)" style="display:none"/>
												<input name='imgXBtn' type='button' value='X' onclick='removeTest(this)'>
												</td>
												</tr>
											</table>
										</div>
										APDO-174 모바일에서는 후기는 모바일앱에서 작성할 수 있습니다.를 제외하고 mweb / pc와 동일하게 맞춤  
									</div> -->
							</form>
								
			
								<div class="btnSet pc pc-bottom-s1 mo-margin-s1">
									<!-- <input type="button" class="btn lg a disabled onWeb_if" style="width:200px;"value="취소"> -->
									<!-- <a href="javascript:;" class="btn lg a disabled" name="okbtn" onclick="writeAdd()" style="pointer-events:all;">등록</a> -->
									<!-- <input type="button" class="btn lg a disabled" onclick="writeAdd()" style="width:200px;" value="확인"> -->
									<input type="button" class="btn lg a disabled" onclick="moveTest()" style="width:200px;" value="확인"> 
										</div>
						
							</div>
					</div>
				</div>
			</main>
			
			
		
	
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