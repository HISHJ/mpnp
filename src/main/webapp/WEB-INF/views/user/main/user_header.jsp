<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="header"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 


<script type="text/javascript"  src="http://localhost/mpnp/3rdDesign/_script/ui.js%22%3E"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/swiper.min.js"></script>

 <script>
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
								<em class="n">${CartCnt}</em>
							
									</button></a>
							<button id="srchClsBtn" class="bt close" type="button" style="display: none;" onclick="searchCommon.srchClsBtn();">닫기</button>
							<div class="alims" id ="alertDiv">
							</div>
						</div>
						</div>
</div>
	</div>
</header>