////////////////////////////////////////
// 퍼블 UI 공통 스크립트
////////////////////////////////////////

var ui = {
	init:function() {
		this.common.init();
		this.ly.init();
		this.shop.init();
		this.order.init();
		this.disp.init();
		this.live.init();
		this.gnb.init();
		this.sort.init();
		this.form.init();
		this.spined.init();
		this.dropmenu.init();
		this.tog.init();
		this.tab.init();
		this.accd.init();
		this.datepick.init();
		this.elip.init();
		this.tooltip.init();
		this.getSafe.init();
		this.popLayer.init();
		this.popSelect.init();
		this.popBot.init();
		this.floatNav.init();
		this.banner.init();
		this.likemot.init();
		this.toggleClassOn.init();
		this.dragPopAc.init();
		this.countBoxInput.init();
		this.setAutoh.init();
		this.tapTouchAc.init();
		this.headerScroll.init();
		this.addInputDel.init();
		this.bubble_pop.init();
//		this.input_viewPort.init();
		this.headerSearech_input.set();
		this.nodata_set.init();
		this.paging.init();
		this.setTextarea_height.init();
    scrollDir();
		// this.setFooter.init();
		// this.mcscroll.init();
	},
	update:function() {
		this.form.input.set();
		this.form.intdel.set();
		this.elip.set();
		this.spined.set();
	},
  // User Agent utility
  UA: {
    agent: window.navigator.userAgent.toLowerCase(),
    /*
      모바일 여부 체크
      - ui.UA.isMo() => mobile browser 인 경우 'true'
    */
    isMo: function() {
      return window.matchMedia('(pointer:coarse)').matches ? true : false;
    },
    /*
      데스크탑 여부 체크
      - ui.UA.isPc() => desktop browser 인 경우 'true'
    */
    isPc: function() {
      return window.matchMedia('(pointer:coarse)').matches ? false : true;
    },
    /*
      web view(앱) 여부 체크
      - ui.UA.isApp.IOS() => iOS app 인 경우 'true'
      - ui.UA.isApp.AOS() => AndroidOS app 인 경우 'true'
    */
    isApp: {
      IOS: function() {
        const safari = /safari/.test(ui.UA.agent);
        const ios = /iphone|ipod|ipad/.test(ui.UA.agent);
        return (ui.isMo() && ios && !safari) ? true : false;
      },
      AOS: function() {
        const isWv = ui.UA.agent.includes('wv') ? true : false;
        return (ui.isMo() && !this.IOS() && isWv) ? true : false;
      }
    },
    /*
      브라우저 종류 및 버전 체크
      - ui.UA.browser().name => 브라우저 이름 반환
      - ui.UA.browser().version => 브라우저 버전 반환 (문자형)
    */
    browser: function() {
      const agent = ui.UA.agent;
      let tem;
      let M = agent.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
      if (/trident/i.test(M[1])) {
        tem = /\brv[ :]+(\d+)/g.exec(agent) || [];
        return {
          name: 'IE',
          version: (tem[1]||'')
        };
      }
      if (M[1] === 'Chrome') {
        tem = agent.match(/\bOPR|Edge\/(\d+)/);
        if (tem != null) {
          return {
            name: 'Opera',
            version: tem[1]
          };
        }
      }
      M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];
      if ((tem = agent.match(/version\/(\d+)/i)) != null) {
        M.splice(1,1,tem[1]);
      }
      return {
        name: M[0],
        version: M[1]
      };
    }
  },
  /**
  * @deprecated 다음 메서드로 대체 => ui.UA.isMo()
  */
	isMo:function(){
		var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'Windows CE;', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson', 'Mobile', 'Symbian', 'Opera Mobi', 'Opera Mini', 'IEmobile');
		for (var word in mobileKeyWords) {
			if (navigator.userAgent.match(mobileKeyWords[word]) != null) {
				return true;
			}
		}
	},
	getSafe:{ // 아이폰X 여백값
		init:function(){
			var _this = this;
			var computed, div = document.createElement('div');
			div.style.padding = 'env(safe-area-inset-top) env(safe-area-inset-right) env(safe-area-inset-bottom) env(safe-area-inset-left)';
			document.body.appendChild(div);
			computed = getComputedStyle(div);
			_this.top= parseInt(computed.paddingTop) || 0;
			_this.right= parseInt(computed.paddingRight) || 0;
			_this.bottom= parseInt(computed.paddingBottom) || 0;
			_this.left= parseInt(computed.paddingLeft) || 0;
			document.body.removeChild(div);
		}
	},
	loading:{ // 로딩중..
		show: function () {
			if( !$(".loadingPage").length ) {
				var els = '<div class="loadingPage"><em></em></div>';
				$("body").prepend(els);
			}
		},
		hide: function () {
			$(".loadingPage").remove();
		}
	},
	common:{
		init:function(){
      // webview 상태인 경우 html, body 태그에 스크롤 바운스 기능 해제
      if (ui.UA.isApp.IOS() || ui.UA.isApp.AOS()) {
        $('html, body').css('overscroll-behavior', 'none');
      }
		}
	},
	live:{
		init:function() {
			this.livechat.init();	
		},
		livechat:{
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				$(document).on("click",".uiLiveSet  .btnUiChat",function(e){
					$(".uiLiveSet .sets.chat").addClass("open");
				});

				$(document).on("click",function(e){
					if(!$(e.target).closest(".sets.chat").length && !$(e.target).is(".btnUiChat") ) {
						$(".uiLiveSet .sets.chat").removeClass("open");
					}
				});
				
			},
			set:function(){
				
			}
		}
	},
	gnb:{ // GNB 
		init: function() {
			//ui.gnb.using("open");
			var _this = this;
			var num = 0;
			if($("body").hasClass("gnb_ac")) return;
			$("body").addClass("gnb_ac");
			$(document).on("click", ".header .btnGnb , .pageHead .btnGnb, .menubar .menu .sitemap .btn-sitemap", function() {
				if ($("body").is(".gnbOn")) {
					_this.using("close");
				} else {
					_this.using("open");
				}
			});
			$(document).on("click", "nav.gnb .hdt .bts .bt.close , .gnbScreen", function() {  // , .gnbScreen
				_this.using("close");
			});

			$(document).on("click","nav.gnb .menu .list>li>.bt:not(.link)",function(e){
				$(this).closest(".menu .list").find(".box").slideUp(100,function(){
					$(this).closest("li").removeClass("active");
				});
				if ( $(this).next(".box").find("li").length ){
					if( $(this).closest("li").hasClass("active") ){
						// $(this).next("ul").slideUp(100,function(){
						// 	$(this).closest("li").removeClass("active");
						// });
					}else{
						$(this).next(".box").slideDown(100,function(){
							$(this).closest("li").addClass("active");
						});

					}
				}
			});
			$(document).on("click","nav.gnb .slideShop .bt",function(e){
				$(this).closest("li").addClass("active").siblings("li").removeClass("active");
			});

			this.act();
			this.cateShop.set();
			this.menushop.init();
			this.location.init();
			this.tdtmenu.init();
			this.alims.init();
			
		},
		cateShop:{ // 추천상품 슬라이드 공통
			els: ".slideShop .swiper-container",
			opt: {
				slidesPerView: "auto",
				freeMode: true,
				observer: true,
				observeParents: true,
				spaceBetween:6,
				watchOverflow:true,
				loop: false
			},
			set:function() {
				if ( $(this.els).find(".swiper-slide").length <= 1 ) {
					this.opt.loop = false;
				}
				this.slide = new Swiper(this.els, this.opt);
			}
		},
		using: function(opt) {
			var $gnb = $("nav.gnb");
			if (opt === "open") {
				ui.scrollLock(true);
				$gnb.after('<div class="gnbScreen" tabindex="-1"></div>');
				$gnb.show().animate({"left": 0}, 200,function(){
					$gnb.attr("tabindex","-1").focus();
				});
				$("body").addClass("gnbOn");
				$(".gnbScreen").show();
				this.cateShop.set();
			}
			if (opt === "close") {
				$("body").removeClass("gnbOn");
				var css_left = (ui.check_brw.mo())?"+100%":"-100%";
				$gnb.animate({"left": css_left}, 200,function(){
					$(".gnbScreen").hide().remove();
					$gnb.hide();
					$(".header .gnb .btnGnb").attr("tabindex","0").focus();
				});
				if($(".commentBoxAp.open").length == 0) ui.scrollLock(false);
			}
		},
		usingWithoutAnimation: function(opt) {
			var $gnb = $("nav.gnb"); 
			if (opt === "open") {
				ui.scrollLock(true);
				$gnb.after('<div class="gnbScreen" tabindex="-1"></div>');
				$gnb.attr("tabindex","-1").focus();
				$("body").addClass("gnbOn");
				$(".gnbScreen").show();
				this.cateShop.set();
			}
			if (opt === "close") {
				$("body").removeClass("gnbOn");
				var css_left = (ui.check_brw.mo())?"+100%":"-100%";
				$(".gnbScreen").hide().remove();
				$gnb.hide();
				$(".header .gnb .btnGnb").attr("tabindex","0").focus();
				if($(".commentBoxAp.open").length == 0) ui.scrollLock(false);
			}
		},
		isHt:typeof uiHtml != "undefined",
		isLoad:false,
		act:function(dep1,dep2){ 
			var _this = this;
			if( this.isHt && !_this.isLoad ) {
				uiHtml.html.load(function(){
					_this.set(dep1,dep2);
				});
			}else{
				_this.set(dep1,dep2);
			}
			_this.isLoad = true;
		},
		set:function(dep1,dep2){
			dep1 = dep1 || 0;
			dep2 = dep2 || 0;
			var els1 = ".tbmenu .menu>li";
			var els2 = "nav.gnb .menu .list>li";
			if( typeof dep1 == "string" ) { // 1뎁스
				$(els1+" , "+els2).each(function(){
					if( $(this).find(">.bt").text().indexOf(dep1) >= 0 ){
						$(this).addClass("active").siblings("li").removeClass("active");
					}
				});
			}else{
				$(els1+":nth-child("+dep1+") ,"+ els2+":nth-child("+dep1+")").addClass("active").siblings("li").removeClass("active");
			}

			if( typeof dep2 == "string" ) { // 2뎁스
				$(els1+">ul>li"+" , "+els2+">ul>li").each(function(){
					if( $(this).find(">.bt").text().indexOf(dep2) >= 0 ){
						$(this).addClass("active").siblings("li").removeClass("active");
					}
				});
			}else{
				$(els1+".active>ul>li:nth-child("+dep2+") ,"+ els2+".active>ul>li:nth-child("+dep2+")").addClass("active").siblings("li").removeClass("active");
			}
		},
		menushop:{
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				var _this = this;
				$(document).on("click","nav.menushop .bt.st",function(e){
					var $myui = $(this).closest("nav.menushop");
					if( $myui.is(".open") ) {
						$myui.removeClass("open");
					}else{
						$("nav.menushop").removeClass("open");
						$myui.addClass("open");
					}
				}).on("click", function(e) {
					if(!$(e.target).closest("nav.menushop").length ) {
						$("nav.menushop").removeClass("open");
					}
				}).on("click", "nav.menushop .menu>li>.bt", function(e) {
					$(this).closest("nav.menushop").removeClass("open");
				});

				$(document).on("click",".menushop .menu>li>.bt",function(e){
					$(this).closest("li").addClass("active").siblings("li").removeClass("active");
					_this.set();
				});
			},
			set:function(){
				$("nav.menushop").each(function(){
					var $li = $(this).find(".menu>li");
					var txt = $li.filter(".active").find(".bt").text();
					/*if( $(this).find(".menu>li.active").length == 0 ) {
						txt = $(this).find(".menu>li:first-child").find(".bt").text();
						$(this).find(".menu>li:first-child").addClass("active");
					}*/	/* APETQA-6726 210825 lju02 */
					$li.closest(".menushop").find(".bt.st").html(txt);
					var val = $(this).find(".menu>li.active .bt").attr("value");
					$li.closest(".menushop").find(".bt.st").attr("value",val);				
				});
			}
		},
		location:{	//상품상세페이지 로케이션 세팅
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				var _this = this;
				$(document).on("click","nav.location .loc>li>.bt.st",function(e){
					var $myui = $(this).closest(".loc>li");
					if( $myui.is(".open") ) {
						$myui.removeClass("open");
					}else{
						$("nav.location .loc>li").removeClass("open");
						$myui.addClass("open");
					}
				}).on("click", function(e) {
					if(!$(e.target).closest(".loc>li").length ) {
						$(".loc>li").removeClass("open");
					}
				}).on("click", "nav.location .menu>li>.bt", function(e) {
					$(this).closest("nav.location .loc>li").removeClass("open");
				});

				$(document).on("click",".location .menu>li>.bt",function(e){
					$(this).closest("li").addClass("active").siblings("li").removeClass("active");
					_this.set();
				});
			},
			set:function(){
				$("nav.location .loc>li").each(function(){
					var $li = $(this).find(".menu>li");
					var txt = $li.filter(".active").find(".bt").text();
					if( $(this).find(".menu>li.active").length == 0 ) {
						txt = $(this).find(".menu>li:first-child").find(".bt").text();
						$(this).find(".menu>li:first-child").addClass("active");
					}
					$li.closest(".loc>li").find(".bt.st").html(txt);
					var val = $(this).find(".menu>li.active .bt").attr("value");
					$li.closest(".loc>li").find(".bt.st").attr("value",val);
					if( $(this).find(">ul").length == 0 ){
						$(this).find(">.bt").addClass("tt").removeClass("bt");
					}
				});
			}
		},
		tdtmenu:{ // PC 헤더 상단 고객센터 메뉴 열기
			init:function(){
				this.evt();
			},
			evt:function(){
				var _this = this;
				// 고객센터 마우스오버
				$(document).on("mouseenter",".header .tdt .menu>li.custo>.bt",function(e){
					var $myui = $(this).closest("li.custo");
					$myui.addClass("open");
				});
				$(document).on("mouseleave",".header .tdt .menu>li.custo",function(e) {
					if(!$(e.target).closest("li.custo").length ) {
					}
					$(".header .tdt .menu>li.custo").removeClass("open");
				});
				
				$(document).on("click",".header .tdt .menu>li.custo>.sbm .bt",function(e){
					$(this).closest("li.custo").removeClass("open");
				});
				
				// 유저이름 마우스오버
				$(document).on("mouseenter",".header .tdt .usr .name",function(e){
					var $myui = $(this).closest(".usr");
					$myui.addClass("open");
				});
				$(document).on("mouseleave",".header .tdt .usr",function(e) {
					$(".header .tdt .usr").removeClass("open");
				});
				$(document).on("click",".header .tdt .usr .bt",function(e){
					$(this).closest(".usr").removeClass("open");
				});
			}
		},
		alims:{ // 알림 열기
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				
				var _this = this;
				$(document).on("click",".header .cdt .menu .bt.alim",function(e){
					var $myui = $(this).closest(".menu");
					if( $myui.is(".alim_open") ) {
						$myui.removeClass("alim_open");
					}else{
						$(".header .cdt .menu").removeClass("alim_open");
						$myui.addClass("alim_open");
					}
				}).on("click", function(e) {
					if(!$(e.target).closest(".header .cdt .menu").length ) {
						$(".header .cdt .menu").removeClass("alim_open");
					}
				}).on("click", ".header .cdt .menu .menu>li>.bt", function(e) {
					$(this).closest(".menu").removeClass("alim_open");
				});
				$(document).on("click",".header .cdt .menu .alims .alist>li .box",function(e){
					$(".header .cdt .menu").removeClass("alim_open");
				});

			},
			set:function(){
				
			}
		},
	},
	ly:{
		init:function(){
			this.contHeight();
			$(window).on("load resize",this.contHeight );
		},
		contHeight:function(){
			if(	$(".menubar:visible").length ){
				$("body").addClass("isMenuBar");
			}else{
				$("body").removeClass("isMenuBar");
			}
			if(	$(".cartNavs:visible").length ){
				$("body").addClass("isCartNavs");
			}else{
				$("body").removeClass("isCartNavs");
			}
			var $contain = $(".container:visible");
			var winH = $(window).height();
			var headH = $(".header.mo>.hdr:visible").outerHeight() || 0;
			var headCuH = $(".header.cu:visible").outerHeight() || 0;
			var subnavH = $(".subtopnav:visible").outerHeight() || 0;
			var pageH = $(".pageHead:visible").outerHeight() || 0;
			var pageHeadPc = $(".pageHeadPc:visible").outerHeight() || 0;
			var footH = $(".footer:visible").outerHeight() || 0;
			var menubarH = $(".menubar>.inr:visible").outerHeight() || 0;
			var myLogFilter = $(".my_log_filter:visible").outerHeight() || 0;
			var menuBar = $(".menubar:visible").outerHeight() || 0;
			var contH = winH - headH - headCuH - footH - menubarH - pageH - pageHeadPc - subnavH - myLogFilter - menuBar;
			$contain.find(">.inr").css({"min-height":contH});
			
			// APETQA-5805 210618 lju02 추가 시작
			// mobile tab li list 최소높이값
			var moHeadH = $(".isMo .header > .hdr:visible").outerHeight() || 0;
			var uiTH = $(".uiTab:visible").outerHeight() || 0;
			var fakePopTH = $(".fake-pop.top:visible").outerHeight() || 0;
			var tabListH = winH - headCuH - footH - uiTH - fakePopTH - menubarH - 15;
			$('.uiTab_content > ul > li').css({"min-height":tabListH});
			$('.commentBoxAp .uiTab_content > ul > li').removeAttr("style"); /* APETQA-6101 210701 lju02 */
			// APETQA-5805 210618 lju02 추가 끝 

			if( $contain.length ) {
				var cls = $contain.attr("class").replace("container","").replace("page","");
				$("body").addClass(cls);
			}
			if( ui.isMo() ){
				$("body").removeClass("isPc").addClass("isMo");
			}else{
				$("body").removeClass("isMo").addClass("isPc");
			}


			var cookieData 	= document.cookie;
			try{
				var cookieName	= getTopbannerCookieName();
				console.log(cookieName+"="+cookieData.indexOf(cookieName+"=done"));
				if($(".top_banner_wrap ").length > 0 && cookieData.indexOf(cookieName+"=done") === -1){
					topBanner();
				};
			}catch(e){}
		}
	},
	floatNav:{ // 하단 플로팅 버튼
		init:function(){
			$(".floatNav:visible").length && this.isBot.init();
			$(".floatNav:visible").length && this.movTop.init();
			$(".floatNav:visible").length && this.isMent.init();
			$(".floatNav:visible").length && this.isTop.init();
			$(".floatNav:visible").length && this.isTalk.init();
		},
		isMent:{
			init:function(){
				this.evt();
				this.set();
			},
// 2021.05.13 수정함 start
			evt:function(){
				var _this = this;
				$(window).on("scroll load", function(){
					_this.set();
				});
			},
			//2021.06.01 수정함 start
			set:function(){
				var bodyClass = $("body");
				if ($(bodyClass).is(".logmain, .main, .home")) {
					var scr = $(window).scrollTop();
					if (scr > 200){				
						$(".floatNav").removeClass("on");
					} else {
						$(".floatNav").addClass("on");
					}
				}
			}
			//2021.06.01 수정함 end
//			2021.05.13 수정함 end
		},
		isBot:{ // 바닥도착
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				var _this = this;
				$(window).on("load scroll resize",function(){
					_this.set();
				});
			},
			set:function(){
				var wsc = $(window).scrollTop() + $(window).height();
				var docH = $(document).outerHeight();
				var footH = ui.isMo() ? 0  : $(".footer:visible").outerHeight() || 0;
				var menuH = $("nav.menubar>.inr:visible").outerHeight() || 0;
				var cnt = docH - footH /*  + menuH */ ;
				if($(".commentBoxAp.logpet").length) $(".floatNav").addClass("po2");    // 하단 드롭박스 체크
				if ( wsc >= cnt ) {
					$(".floatNav").addClass("bot");
				}else{
					$(".floatNav").removeClass("bot");
				}
			}
		},
		movTop:{ // 탑버튼 페이지위로 이동
			init:function(){
				this.evt();
				// this.set();
			},
			evt:function(){
				var _this = this;
				$(document).on("click", ".floatNav button.tops:not(.disabled)", function(){
					_this.set(this);
				});
			},
			set:function(el){
				var els = $(el);
				if (els.hasClass("disabled")) return false;
				$("body,html").animate({ scrollTop: 0 }, 300, function() {
					els.removeClass("disabled");
				});
				// els.addClass("disabled");
			}
		},
		isTalk:{
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				var _this = this;
				$(window).on("scroll load resize", function(){
					_this.set();
				});
			},
			set:function(){
				var talk = $(".floatNav>.inr .pd.tk:visible").length;
				if (talk) {
					$("body").addClass("isTalk");
				} else {
					$("body").removeClass("isTalk");
				}
				var foot = $("#footer:visible").length;
				if (foot) {
					$("body").addClass("isFoot");
				} else {
					$("body").removeClass("isFoot");
				}
			}
		},
		isTop:{ // 스크롤 200 이상 내려왔을때
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				var _this = this;
				$(window).on("scroll load", function(){
					_this.set();
				});
			},
			set:function(){
				var scr = $(window).scrollTop();
				if (scr > 200) {
					$(".floatNav , body").addClass("isTop");
				} else {
					$(".floatNav , body").removeClass("isTop");
				}
			}
		}
	},
	mcscroll:{ // 커스텀 스크롤
		init:function(){
			if ( $(".ui-mcscroll").length ) this.using();
		},
		opt:{
			axis:"y" ,
			scrollInertia:100, 
			mouseWheel:{ 
				scrollAmount:800,
				preventDefault:true
			},
			callbacks:{
				onTotalScroll:function(){ 
				}
			}
		},
		using:function() {
			var _this = this;
			$(".ui-mcscroll").each(function(){
				_this.opt.axis = $(this).hasClass("x") ? "x" : "y" ;
				if( $(this).find(">*").length >= 1 ){
					$(this).mCustomScrollbar(_this.opt);
				}
			});
			// $(".ui-mcscroll").mCustomScrollbar("update");
			// $(".ui-mcscroll").mCustomScrollbar("destroy");
			// $(".ui-mcscroll").mCustomScrollbar("disable",true);
		}
	},
	banner:{ // 공통 배너
		// 배너 스크립트 재작성 - APETQA-7358 211108 lsy
		init:function(){
			if ($(".body.shop").hasClass("main")){
				return;
			} else {
				$(this.els).length && this.using();
			}
		},
		
		slide: new Array(),
		els: ".uibanners  .swiper-container",
		using: function() {
			$(document).ready(function() {
				$(".uibanners  .swiper-container").each(function(i,n){
					ui.banner.slide.push(new Swiper($(n), {
						observer: true,
						observeParents: true,
						watchOverflow:true,
						simulateTouch:false,
						freeMode: false,
						slidesPerView:"auto",
						loop: true,
						autoplay: {
							delay: 5000,								//자동롤링 - CSR-1948 211028 lju02
							disableOnInteraction: false,
						},
						navigation: {
							nextEl: $(n).closest('.uibanners').find('.sld-nav .bt.next'),
							prevEl: $(n).closest('.uibanners').find('.sld-nav .bt.prev'),
						},
						pagination: {
							el: $(n).closest('.uibanners').find('.swiper-pagination'), 
							clickable: true,
						}
						
					}));
				});
			});
		}
		
	},
	disp:{ // 전시 
		init:function(){
			this.sld.init();
			this.plmov.init();
			this.subnav.init();
		},
		sld:{ // 샵 메인 슬라이드UI 모음
			init:function(){
				$(this.cate.els).length && this.cate.using();
				$(this.plans.els).length && this.plans.using();
				$(this.cbanr.els).length && this.cbanr.using();
				$(this.recmd.els).length && this.recmd.using();
				$(this.foneline.els).length && this.foneline.using(); //2021.04.28추가
			},
			cate:{ // 서브메인 카테고리
				els:".smain_cate_sld .swiper-container",
				opt:{
					//observer: true,
					//observeParents: true,
					//watchOverflow:true,
					//simulateTouch:false,
					//autoHeight:true,
					//spaceBetween:8,
					//slidesPerView: "auto",
					//slidesPerGroup:10,
					//freeMode: false,
					observer: true,
					observeParents: true,
					watchOverflow:true,
					simulateTouch:true,
					autoHeight:true,
					spaceBetween:8,
					slidesPerView: "auto",
					freeMode: true,
					slideToClickedSlide : true,
					navigation: {
						nextEl: '.smain_cate_sld .sld-nav .bt.next',
						prevEl: '.smain_cate_sld .sld-nav .bt.prev',
					},
					breakpoints: {
						1024: {
							slidesPerView: "auto",
							slidesPerGroup:1,
							freeMode: true,
						}
					}
				},
				using:function() {
					var _this = this;
					this.slide = new Swiper(this.els , this.opt);
					setTimeout(function(){

						if( _this.slide.virtualSize > 1010) {
							$(".smain_cate_sld").addClass("isNav");
						}
					},300);
				}
			},
			plans:{ // 서브메인 기획전
				els:".plans_slide .swiper-container",
				opt:{
					observer: true,
					observeParents: true,
					watchOverflow:true,
					simulateTouch:false,
					autoHeight:true,
					spaceBetween:1,
					slidesPerView: "auto",			
					freeMode: true,
					allowTouchMove: false,	//터치슬라이드 금지		APETQA-5831 210913 lju02
				},
				using:function() {
					this.slide = new Swiper(this.els , this.opt);
				}
			},
			cbanr:{ // 카테상단배너
				els:".ct_bannr_sld .swiper-container",
				opt:{
					observer: true,
					observeParents: true,
					watchOverflow:true,
					simulateTouch:false,
					autoHeight:true,
					spaceBetween:0,
					navigation: {
						nextEl: '.ct_bannr_sld .sld-nav .bt.next',
						prevEl: '.ct_bannr_sld .sld-nav .bt.prev',
					},
					pagination: {
						el: '.ct_bannr_sld .pagination',
						// type: 'fraction',
					}
				},
				using:function() {
					this.slide = new Swiper(this.els , this.opt);
				}
			},
			recmd:{ // 카테고리 추천상품 
				els: ".ct_recmd_sld  .swiper-container",
				slide: "",
				opt: {
					observer: true,
					observeParents: true,
					watchOverflow:true,
					simulateTouch:false,
					freeMode: false,
					slidesPerView: 5,
					slidesPerGroup:5,
					spaceBetween: 30,
					navigation: {
						nextEl: '.ct_recmd_sld .sld-nav .bt.next',
						prevEl: '.ct_recmd_sld .sld-nav .bt.prev',
					},
					breakpoints: {
						1024: {
							spaceBetween: 10,
							slidesPerView: "auto",
							slidesPerGroup:1,
							freeMode: true,
						}
					}
				},
				using: function() {
					ui.disp.sld.recmd.slide = new Swiper(this.els, this.opt);				
				}
			},
			foneline:{ // 필터 2021.04.28추가
				els: ".filOneLine  .swiper-container",
				opt: {
					observer: true,
					observeParents: true,
					watchOverflow:true,
					freeMode: false,
					slidesPerView: "auto",
					slidesPerGroup:1,
					spaceBetween: 8,
					// navigation: {
					// 	nextEl: '.filOneLine .sld-nav .bt.next',
					// 	prevEl: '.filOneLine .sld-nav .bt.prev',
					// },
					// breakpoints: {
					// 	1024: {
					// 		spaceBetween: 10,
					// 		slidesPerView: "auto",
					// 		slidesPerGroup:1,
					// 		freeMode: true,
					// 	}
					// }
				},
				using: function() {
					this.slide = new Swiper(this.els, this.opt);				
				}
			},
		},
		plmov:{ // 기획전 팝업 스크롤이동 Shop_02_01.html
			init:function(){
				this.evt();
				// this.set();
			},
			evt:function(){
				var _this = this;
				$(document).on("click",".sect.dm.plan.set .hdts:not(.open) .btPlanMov",function(){
					$(".popPlanMov").remove();
					_this.set(this);
					$(".contents").off("touchstart").off("touchmove").off("touchend"); // APETQA-6899 21.12.22 LSY
				});
				
				$(document).on("click",".popPlanMov .menu>li .bt",function(e){
					var id = $(this).data("btn-sid");
					_this.mov(id);
				});

				var $section = $(".sect.dm.plan.set:visible");
				$section.each(function(idx){
					$(this).attr("data-index",idx);
				});

				
				$(".sect.dm.plan.set .hdts>.tits .bt").each(function(){
					var tit = $(this).html();
					_this.title.push(tit);
				});

			},
			title:[],
			set:function(els){
				var blist="";
				for(var i in this.title) {
					blist += '<li><button type="button" class="bt" data-btn-sid="'+i+'">'+this.title[i]+'</button></li>';
					//scrollTop:$(".on").offset().top

				}
				var popPlanMov = 
				'<article class="popBot popPlanMov" id="popPlanMov">'+
				'	<div class="pbd">'+
				'		<div class="phd">'+
				'			<div class="in">'+
				'				<h1 class="tit">상품 목록 선택</h1>'+
				'				<button type="button" class="btnPopClose">닫기</button>'+
				'			</div>'+
				'		</div>'+
				'		<div class="pct">'+
				'			<main class="poptents">'+
				'				<ul class="menu">'+blist+'</ul>' +
				'			</main>'+
				'		</div>'+
				'	</div>'+
				'</article>';
				
				$(".hdts").removeClass("open");	// APETQA-5078 210813 lju02
				$(els).closest(".hdts").append(popPlanMov).addClass("open");
				$(els).closest(".sect.plan.set").addClass("open");
				ui.popBot.open('popPlanMov',{
					ocb:function(){
						ui.shop.pdOpt.drag();
					},
					ccb:function(){
						$(".sect.plan.set .hdts").removeClass("open");
						$(".sect.plan.set").removeClass("open");
						$(".popPlanMov").remove();
						// ui.disp.subnav.init(); // APETQA-6899 21.12.22 LSY
					},
					pop: true // 04.09 추가
				});
			},
			mov:function(id){
        /* 21.10.21 APETQA-6720 LSY E*/
        ui.popBot.close('popPlanMov',{
          ccb:function(){
            $(".popPlanMov").remove();
          }
        });
				setTimeout(function(){
					var sc_msid_top = $(".sect[data-index="+id+"]").offset().top ;
					// var headHtMo = $(".header.pc:visible").height() || 0;
					// var tabsHt = $("nav.subtopnav>.inr:visible").height() || 0;
					var scr_top = sc_msid_top - 1;
					/* 21.10.21 APETQA-6720 LSY S*/
					if(ui.isMo()) { 
						$("body,html").animate({ scrollTop: scr_top - 90 }, 150, function(){  });	//95 -> 36으로 수치 변경 - APETQA-6720 211028 lju02
					} else {
						$("body,html").animate({ scrollTop: scr_top - 110 }, 150, function(){  });
					}
					
					if($(".subtopnav").hasClass("active")){
						$("body,html").animate({ scrollTop: scr_top - 36 }, 0, function(){  });
					}
				},200);
			}
		},
		subnav:{ // 서브 상단메뉴
			init:function(){
				this.evt();
				$(this.sld.els).length && this.sld.using();
				this.set();
				this.mov.init();
			},
			elSwiper: {
				el : ""
			},
			sld:{ // 바로가기
				els:".subtopnav .swiper-container",
				opt:{
					observer: true,
					observeParents: true,
					watchOverflow:true,
					simulateTouch:true, // 21.10.28 APETQA-7284 LSY 옵션변경
					spaceBetween:0,
					slidesPerView: "auto",
					freeMode: true,
					watchSlidesVisibility: true,
					watchSlidesProgress: true
				},
        using: function() {
          let outX = {s:0, e:0};      // 터치 x축 좌표값
          let outY = {s:0, e:0};      // 터치 y축 좌표값
          let event = false;          // 이벤트 발생 조건이 충족되면 true로 설정됨
          let tmEvent = false;        // touchmove 이벤트가 발생하면 true로 설정됨
          let touch;                  // touch 이벤트 캐치용 변수 할당
          const touchGapX = 200;      // 터치 x축 이동 기준값 (이 값 이상 이동했을 때 이벤트 발생 조건이 충족됨)
          const touchGapY = 30;       // 터치 y축 이동 기준값 (이 값 미만으로 이동했을 때 이벤트 발생 조건이 충족됨)
          const evtEl = '#contents';  // 터치 이벤트를 캐치할 엘리먼트
          const $gnb = $('.subtopnav .swiper-container.box .swiper-slide');  // gnb
          // gnb swiper 실행
          ui.disp.subnav.elSwiper.el = new Swiper(this.els , this.opt);
          // 좌우 스와이프 이벤트 발생시 GNB 이동 처리
          if (!$(evtEl).hasClass('no_swiping')) {
            $(document).on('touchstart', evtEl, function(e) {
              touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0];
              outX.s = touch.pageX; // 터치 시작점 x값
              outY.s = touch.pageY; // 터치 시작점 y값
            });
            $(document).on('touchmove', evtEl, function(e) {
              tmEvent = true;
            });
            $(document).on('touchend', evtEl, function(e) {
              touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0];
              outX.e = touch.pageX; // 터치 종료점 x값
              outY.e = touch.pageY; // 터치 종료점 y값
              const chkException = ($(e.target).closest('.smain_cate_sld.isNav, .uifiltbox').length > 0) ? false : true;
              event = tmEvent && Math.abs(outX.s - outX.e) > touchGapX && Math.abs(outY.s - outY.e) < touchGapY ? true : false;
              // 조건이 충족되면 gnb 이동
              if (event == true && chkException == true) {
                let nextInd;
                const currInd = $gnb.parent().find('.active').index();
                const lastInd = $gnb.length - 1;
                if (currInd == 0 && outX.s < outX.e) {
                  nextInd = lastInd;
                } else if (currInd == lastInd && outX.s > outX.e) {
                  nextInd = 0;
                } else {
                  nextInd = outX.s > outX.e ? currInd + 1 : currInd - 1;
                }
                // 다음 터치 이벤트 캐치를 위해 touchmove 이벤트 발생 여부를 초기회 시킴
                tmEvent = false;
                // 설정된 gnb 메뉴로 이동
                $gnb.eq(nextInd).find('a').trigger('click');
              }
            });
          }
        }
			},
			evt:function(){
				var _this = this;
				$(document).on("click",".subtopnav .menu>li>.bt",function(e){
					$(this).closest("li").addClass("active").siblings("li").removeClass("active");
					var idx = $(this).closest("li").index();
					setTimeout(function(){
						// _this.set(this);
					},10);
				});
			},
			set:function(els){
				
				var idx = $("nav.subtopnav .box .menu>li.active").index();
				if( els ) {
				}else{
					
				}
				if(ui.disp.subnav.sld.slide)	ui.disp.subnav.sld.slide.slideTo(idx,0);
				/* $(".subtopnav").each(function(){
					$Nav = $(this);
					var winWd  = $Nav.outerWidth() * 0.5;
					var $liAct = $Nav.find(".menu>li.active");
					var acW = $liAct.outerWidth() * 0.5;
					var acPL;
					if( $liAct.length ) acPL = $liAct.offset().left ;
					var scrLeft = $Nav.find(">.inr .box").scrollLeft();
					var acL = acPL + scrLeft;
					$Nav.find(".box").scrollLeft( acL - winWd + acW );
				}); */
			},
			mov:{
				init:function(){
					if( ui.isMo() ){
						$("nav.subtopnav.relat").length && this.evt();
					}
				},
				evt:function(){
					var $menu = $("nav.subtopnav.relat");
					if( $menu.length == 0 ) { return; }
					$(window).on("load scroll",function(){
						var menuT = parseInt( $menu.offset().top - $(window).scrollTop() || 0 );
						var headHt = $("header.cu:visible").height() || 0;
						if( menuT <= headHt ) {
							$("body").addClass("isSubnavFixed");
							// $menu.addClass("fixed").find(">.inr").css("top",headHt);
							$menu.addClass("fixed").find(">.inr").removeClass("etcPosition");
						}else{
							$("body").removeClass("isSubnavFixed");
							// $menu.removeClass("fixed").find(">.inr").css("top","");
							$menu.removeClass("fixed").find(">.inr").addClass("etcPosition");
						}	
					});
				},
				set:function(){

				}
			}
		},
	},
	shop:{
		init:function() {
			this.lnb.init();
			$(this.pdPhoto.els1).length && this.pdPhoto.using();
			$(this.pdPic.els1).length && this.pdPic.using();
			$(this.fitMov.els).length && this.fitMov.using();
			$(this.recomd.els).length && this.recomd.using();
			$(this.custm.els).length && this.custm.using();
			$(this.recent.els).length && this.recent.using();
			$(this.rvphoto.els).length && this.rvphoto.using();
			$(this.rvPics.els1).length && this.rvPics.using();
			$(this.revPic.els).length && this.revPic.using();
			$(this.revPicSet.els).length && this.revPicSet.using();
			$(this.revLogSet.els).length && this.revLogSet.using();
			$(this.revLog.els).length && this.revLog.using();
			this.pdTop.init();
			this.pdTag.init();
			this.pdMore.init();
			this.pdRev.init();
			this.pdTabs.init();
			this.pdOpt.init();
		},
		lnb:{ // 샵 왼쪽 LNB
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				var _this = this;
				$(document).on("click",".lnb.shop .bt.tog",function(e){
					var $li = $(this).closest("li");
					if( $li.is(".open") ){
						$li.removeClass("open");
					}else{
						$li.addClass("open");
					}
					_this.set();
				});
				$(window).on("load scroll resize",function(){
					_this.set();
					_this.pos();
				});
			},
			pos:function(){
				if( $(window).outerWidth() <= 1260 ) {
					var sleft = $(window).scrollLeft();
					$("nav.lnb>.inr").css({"margin-left":"-"+sleft+"px"});
				}else{
					$("nav.lnb>.inr").css({"margin-left":""});
				}
				var wsc = $(window).scrollTop() + $(window).height();
				var docH = $(document).outerHeight();
				var footH = $(".footer:visible").outerHeight() || 0;
				var cnt = docH - footH ;
				var bgap = 40 ; /* 2021.05.11 수정함 */
				var botpos = wsc - cnt ;

				
				if( wsc >= cnt ) {
					$("nav.lnb>.inr").css({"bottom":botpos+bgap});
				}else{
					$("nav.lnb>.inr").css({"bottom":bgap});
					
				}
			},
			set:function(){
				if( !ui.isMo() ){
					$(".container.lnb .contents").css("min-height",$("nav.lnb>.inr").outerHeight());
				}
			}
		},
		pdTop:{ // _html/shop/Shop_03_01.html  상품상세 해더에 이미지 보였다 안보였다.
			init:function(){
				if( ui.isMo() && $(".pdPhoto .pdPhotoSlide").length ){
					this.evt();
					this.set();
				}
			},
			evt:function(){
				$(window).on("load scroll resize",function(){
					var headHt = /*$("header.cu:visible").height() ||*/ 0;
					var wsc = $(window).scrollTop()  ;
					var pdboxtop = $(".pdPhotoSlide").outerHeight() + $(".pdPhotoSlide").offset().top - $(".header .hdr").innerHeight();
					if( pdboxtop+headHt < wsc ){
						$("body.shop.view .mo-heade-tit>.pic").removeClass("hide");
					}else{
						$("body.shop.view .mo-heade-tit>.pic").addClass("hide");
					}
				});
			},
			set:function(){
			}
		},
		pdTabs:{ // 상품상세 탭 스크롤 이동 고정
			init:function(){
				$(".page.shop.view .pdCtns .tabMenu:visible").length && this.evt();
				// this.set();
			},
			evt:function(){
				var _this = this;
				
				$(document).on("click",".page.shop.view [data-btn-sid] .bt",function(e){
					var id = $(this).closest("li").data("btn-sid");
					_this.set(id);
				});
				var $tabMenu = $(".page.shop.view .pdCtns .tabMenu:visible");
				var $section = $("[data-sid].sec:visible");

				if ($tabMenu.length == 0) { return; }
				$(window).on("load resize scroll",function(){
					var tabTopVar = parseInt( $tabMenu.offset().top - ($(window).scrollTop() || 0) + Number($(".header > .hdr").css("top").match(/\d+(\.\d+)?/g,'')) + 8 );
					var headHt = $(" header.cu:visible").height() || 0;
					if( tabTopVar <= headHt ) {
						$tabMenu.addClass("fixed").find(">.inr").css("top",headHt);
						$(".header .hdr").addClass("border_none");
					}else{
						$tabMenu.removeClass("fixed").find(">.inr").css("top","");
						$(".header .hdr").removeClass("border_none");
					}
				});

				$section.each(function(idx){
					$(this).attr("data-index",idx);
				});

				$(window).on("load scroll",function(){
					var headHt = $("header.cu:visible").height() || 0;
					var tabsHt = $tabMenu.outerHeight() || 0;
					var wsc = $(window).scrollTop() + headHt + tabsHt;
					// $tabMenu.find(".menu>li").removeClass("active");
					$tabMenu.find(".menu>li:first-child").addClass("active").siblings("li").removeClass("active");
					for ( i = 0 ; i < $section.length; i++) {
						var $seci = $("[data-index='"+i+"']");
						var iTop = $seci.offset().top;
						var jTop = iTop + $seci.outerHeight()  ;
						if( wsc >= iTop && wsc < jTop ){
							var idx = i+1;
							$tabMenu.find(".menu>li:nth-child("+idx+")").addClass("active").siblings("li").removeClass("active");
						}
						var endbox = $section.length-1 ;
						var endboxPos = $("[data-index='"+endbox+"']").offset().top + $("[data-index='"+endbox+"']").outerHeight();
						if ( wsc >= endboxPos) {
							// $tabMenu.removeClass("fixed").find(">.inr").css("top","");
							$(".header").addClass("active2");
							$tabMenu.addClass("active2");
						}else{
							$(".header").removeClass("active2");
							$tabMenu.removeClass("active2");
						}
					}
				});
			},
			set:function(id){
				
				
				setTimeout(function(){
					// $("[data-btn-sid="+id+"]").addClass("active").siblings("li").removeClass("active");
					var sc_msid_top = $("[data-sid="+id+"]").offset().top ;
					var headHt = $(".header.cu:visible").height() || 0;
					var tabsHt = $(".page.shop.view .pdCtns .tabMenu").height();
					var scr_top = sc_msid_top - tabsHt - headHt + 1;
					$("body,html").animate({ scrollTop: scr_top  }, 200, function() {
						// els.removeClass("disabled");
					});
				},50);
			}
		},
		pdPhoto:{ // 상품상세 이미지
			evt: function(){
				$(".pdThumbSlide .slide>li:first-child").addClass("active");
				$(document).on("click",".pdThumbSlide .slide>li .box",function(){
					var my_idx = $(this).closest("li").index();
					$(this).closest("li").addClass("active").siblings("li").removeClass("active");
					ui.shop.pdPhoto.galleryTop.slideTo(my_idx);
				});
			},
			els1:".pdPhotoSlide .swiper-container",
			els2:".pdThumbSlide .swiper-container",
			opt1:{
				observer: true,
				observeParents: true,
				watchOverflow:true,
				simulateTouch:false,
				autoHeight:true,
				spaceBetween:0,
				navigation: {
					nextEl: '.pdPhotoSlide .swiper-button-next',
					prevEl: '.pdPhotoSlide .swiper-button-prev',
				},
				pagination: {
					el: '.pdPhotoSlide .swiper-pagination',
					type: 'fraction',
				}
			},
			opt2:{
				spaceBetween: 10,
				slidesPerView: "auto",
				direction:"vertical",
				freeMode: false,
			},
			using:function(){
				this.evt();
				this.galleryTop = new Swiper(this.els1 , this.opt1);
				this.galleryTop.on('slideChangeTransitionEnd', function(swiper) {
					// this.galleryThumbs.slideTo(2);
					var idx = this.realIndex + 1 ;
					$(".pdThumbSlide .slide>li:nth-child("+ idx +")").addClass("active").siblings("li").removeClass("active");
					ui.shop.pdPhoto.galleryTop.slideTo(this.realIndex);
				});
				this.galleryThumbs = new Swiper(this.els2, this.opt2);
			}
		},
		pdPic:{ // 상품상세 이미지 팝업
			galleryThumbs: "",
			galleryTop: "",
			evt: function(){
				$(".pdDtThmSld .slide>li:first-child").addClass("active");
				$(document).on("click",".pdDtThmSld .slide>li .box",function(){
					var my_idx = $(this).closest("li").index();
					$(this).closest("li").addClass("active").siblings("li").removeClass("active");
					ui.shop.pdPic.galleryTop.slideTo(my_idx);
				});
			},
			els1:".pdDtPicSld .swiper-container",
			els2:".pdDtThmSld .swiper-container",
			opt1:{
				autoHeight:true,
				slidesPerGroup:1,
				zoom: true,
				zoom: {
				    maxRatio: 5,
				  }
			},
			opt2:{
				observer: true,
				observeParents: true,
				// watchOverflow:true,
				spaceBetween: 10,
				//slidesPerView: "auto",
				slidesPerView: 6,		//APETQA-7376 211118 lju02
				//slidesPerGroup:1,
				// freeMode: true,
				navigation: {
					nextEl: '.pdDtThmSld .sld-nav .bt.next',
					prevEl: '.pdDtThmSld .sld-nav .bt.prev',
				},
			},
			using:function(){
				this.evt();
				let that = this;
				setTimeout(function(){
					ui.shop.pdPic.galleryThumbs = new Swiper(that.els2, that.opt2);
					ui.shop.pdPic.galleryTop = new Swiper('.pdDtPicSld .swiper-container', {
						observer: true,
						observeParents: true,
						watchOverflow:true,
						simulateTouch:false,
						spaceBetween:20,
						slidesPerGroup:1,
						zoom:{
							toggle: true,
							maxRatio: 5,
						},
						
						navigation: {
							nextEl: '.pdDtPicSld .sld-nav .bt.next',
							prevEl: '.pdDtPicSld .sld-nav .bt.prev',
						},
			            on: {
			              slideChange: function(){
			                // 동영상 재생중인 경우 중지
			                if ( $('video').length > 0 ) {
			                  var $btnVideo;
			                  $.each($('video'), function() {
			                    $btnVideo = $(this).siblings('.vthumbPlayBtns');
			                    this.pause();
			                    if ($btnVideo) {
			                      $btnVideo.removeClass('hide');
			                    }
			                  });
			                }
			              }
			            }
					});
					/*
					document.getElementsByClassName("pdDtPicSld")[0].addEventListener('mouseover',function(e){
						ui.shop.pdPic.galleryTop.zoom.in();
					});
					*/
					ui.shop.pdPic.galleryTop.on('slideChangeTransitionEnd', function(swiper) {
						// this.galleryThumbs.slideTo(2);
						var idx = this.realIndex + 1 ;
						$(".pdDtThmSld .slide>li:nth-child("+ idx +")").addClass("active").siblings("li").removeClass("active");
						ui.shop.pdPic.galleryThumbs.slideTo(this.realIndex);
					});
				},500);
			}
		},
		pdTag:{ // 연관태그 더보기 Shop_03_01.html
			init:function(){
				this.evt();
			},
			evt:function(){  
				$(document).on("click",".pdInfos .tags .box .more .bt",function(e){
					var $tag = $(this).closest(".tags");
					// 2021.05.20 추가 start
					if( $(this).closest(".tags").is(".open") ) {
						$tag.removeClass("open");
					}else{
						$tag.addClass("open");
					}
					// 2021.05.20 추가 end
				});
			}
		},
		pdMore:{
			init:function(){
				this.evt();
				
				// 2021.05.27 소스 재수정 start
				if( ui.isMo() ){
					if($( ".page.shop.view .pdCtns .tabCtns .sec.inf .cdts" ).outerHeight(true) < 588){
						$(".page.shop.view .pdCtns .tabCtns .sec.inf .btsmore").css("display","block");
					}else{					
						$(".page.shop.view .pdCtns .tabCtns .sec.inf .btsmore").css("display","block");
					}
				}else{
					if($( ".page.shop.view .pdCtns .tabCtns .sec.inf .cdts" ).outerHeight(true) < 884){
						$(".page.shop.view .pdCtns .tabCtns .sec.inf .btsmore").css("display","block");
					}else{					
						$(".page.shop.view .pdCtns .tabCtns .sec.inf .btsmore").css("display","block");
					}
				}
				// 2021.05.27 소스 재수정 end
			},
			evt:function(){
				$(document).on("click",".page.shop.view [data-ui-btsmore='more']",function(e){
					var pdInfoCtn = $(this).closest(".sec.inf");
					if ( pdInfoCtn.is(".open") ) {
						pdInfoCtn.removeClass("open");
						$(this).find(".t").text("상품정보 열기");
					}else{
						pdInfoCtn.addClass("open");
						$(this).find(".t").text("상품정보 접기");
					}
				});
			},
			set:function(){

			}
		},
		pdRev:{ // 만족도 후기 더보기 
			init:function(){
				this.evt();
			},
			evt:function(){
				$(document).on("click",".uisatis [data-ui-revmore='more']",function(e){
					var pdInfoCtn = $(this).closest(".uisatis");
					if ( pdInfoCtn.is(".open") ) {
						pdInfoCtn.removeClass("open");
						$(this).text("자세히보기");
					}else{
						pdInfoCtn.addClass("open");
						$(this).text("닫기");
					}
				});
			},
			set:function(){

			}
		},
		fitMov:{ // 상품상세 관련영상
			els: ".ui_fitmove_slide  .swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				freeMode: false,
				slidesPerView: 4,
				slidesPerGroup:4,
				spaceBetween: 16,
				navigation: {
					nextEl: '.ui_fitmove_slide .sld-nav .bt.next',
					prevEl: '.ui_fitmove_slide .sld-nav .bt.prev',
				},
				
				breakpoints: {
					1024: {
						spaceBetween: 8,
						slidesPerView: "auto",
						slidesPerGroup:1,
						freeMode: true,
					}
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);				
			}
		},
		recomd:{ // 함께본상품 
			slide: "",
			els: ".ui_recomd_slide  .swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				simulateTouch:false,
				freeMode: false,
				slidesPerView: 6,
				slidesPerGroup:6,
				spaceBetween: 19,
				navigation: {
					nextEl: '.ui_recomd_slide .sld-nav .bt.next',
					prevEl: '.ui_recomd_slide .sld-nav .bt.prev',
				},
				/*
				breakpoints: {
					1024: {
						spaceBetween: 8,
						slidesPerView: "auto",
						freeMode: true,
					}
				}
				*/
			},
			opt2: {
				spaceBetween: 8,
				slidesPerView: "auto",
				freeMode: true,
			},
			using: function() {
				if(ui.check_brw.mo()){
					this.slide = new Swiper(this.els, this.opt2);				
				}else{
					this.slide = new Swiper(this.els, this.opt);				
				};
			}
		},
		custm:{ // 함께본상품 
			els: ".ui_custm_slide  .swiper-container",
			opt: {
				// APETQA-6697 210923 lju02 마지막 슬라이드 바운스 시킬때 active 변경되는 현상 제거
				//observer: true,
				//observeParents: true,
				//watchOverflow:true,
				//simulateTouch:false,
				freeMode: false,
				slidesPerView:"auto",
				//slidesPerGroup:6,
				spaceBetween: 19,
				navigation: {
					nextEl: '.ui_custm_slide .sld-nav .bt.next',
					prevEl: '.ui_custm_slide .sld-nav .bt.prev',
				},
				breakpoints: {
					1024: {
						spaceBetween: 8,
						slidesPerView: "auto",
						freeMode: true,
					}
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);				
			}
		},
		recent:{ // 최근본상품
			els: ".ui_recent_slide  .swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				freeMode: true,
				slidesPerView: 7,
				spaceBetween: 9,
				navigation: {
					nextEl: '.ui_recent_slide .sld-nav .bt.next',
					prevEl: '.ui_recent_slide .sld-nav .bt.prev',
				},
				breakpoints: {
					1024: {
						spaceBetween:10,
						slidesPerView: "auto",

						freeMode: true,
					}
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);				
			}
		},
		rvphoto:{ // 포토후기 슬라이드
			els: ".ui_rvphoto_slide  .swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				freeMode: true,
				slidesPerView: 7,
				slidesPerGroup:7,
				spaceBetween: 9,
				navigation: {
					nextEl: '.ui_rvphoto_slide .sld-nav .bt.next',
					prevEl: '.ui_rvphoto_slide .sld-nav .bt.prev',
				},
				breakpoints: {
					1024: {
						spaceBetween:8,
						slidesPerView: "auto",

						freeMode: true,
					}
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);				
			}
		},
		rvPics:{ // 일반리뷰 이미지 팝업 Shop_03_04_02.html
			els1:".popRvPicView .picSld .swiper-container",
			els2:".popRvPicView .thmSld .swiper-container",
			opt2:{
				observer: true,
				observeParents: true,
				watchOverflow:true,
				spaceBetween: 10,
				slidesPerView: "auto",
				freeMode: true,

			},
			using: function() {
				
				this.thmSld = new Swiper(this.els2, this.opt2);
				this.picSld = new Swiper('.popRvPicView .picSld .swiper-container', {
					spaceBetween:20,
					// autoHeight:true,
					thumbs: {
					  swiper: this.thmSld
					},
					navigation: {
						nextEl: '.popRvPicView .picSld .sld-nav .bt.next',
						prevEl: '.popRvPicView .picSld .sld-nav .bt.prev',
					},
					// zoom: {
					// 	maxRatio: 5,
					// }
				});

			}
		},
		revPicSet:{ // 포토후기 팝업 상품 슬라이드 Shop_03_04_03_01.html
			els: ".photo_review_sld>.swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				simulateTouch:false,
				// autoHeight:true,
				direction: "horizontal",
				slidesPerView: "auto",
				spaceBetween: 0,
				navigation: {
					nextEl: '.photo_review_sld>.sld-nav .bt.next',
					prevEl: '.photo_review_sld>.sld-nav .bt.prev',
				},
				breakpoints: {
					1024: {
						spaceBetween:0,
						direction: "horizontal",
						slidesPerView: 1
					}
				},
				on:{
					slideChange: function(){
						$(".popPhotoRv .phd .nm .n").text(this.realIndex + 1);
					}
				}
			},
			using: function() {
				if(ui.check_brw.pc()){
					this.slide = new Swiper(this.els, this.opt);
					
				}
				
				// $(window).on("load resize",function(){
				// 	$(".photo_review_sld .revlists>li .box .rcdt .msgs").each(function(){
				// 		var liHt = $(this).closest(".swiper-slide").outerHeight();
				// 		var liSld = $(this).closest(".swiper-slide").find(".rvPicSld").outerHeight();
				// 		$(this).css({
				// 			"height": liHt - liSld -200
				// 		});
				// 	});
				// });
			}
		},
		revPic:{ // 포토후기 팝업 사진 슬라이드 Shop_03_04_03_01.html
			els: ".photo_rpic_sld>.swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				slidesPerView: 1,
				spaceBetween: 10,
				navigation: {
					/* 21.05.17 네비 수정*/
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
					/*//21.05.17 네비 수정*/
				},
				pagination: {
					el: '.swiper-pagination',
					type: 'fraction',
				},
        		on: {
					slideChange: function(){
			            // 동영상 재생중인 경우 중지
			            if ( $('video').length > 0 ) {
			              var $btnVideo;
			              $.each($('video'), function() {
			                $btnVideo = $(this).siblings('.vthumbPlayBtns');
			                this.pause();
			                if ($btnVideo) {
			                  $btnVideo.removeClass('hide');
			                }
			              });
	            		}
					}
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);				
			}
		},
		revLogSet:{ // 로그후기 팝업 상품 슬라이드 Shop_03_04_03_01.html
			els: ".log_review_sld>.swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				simulateTouch:false,
				// autoHeight:true,
				slidesPerView: 1,
				spaceBetween: 0,
				centeredSlidesBounds: true,
				navigation: {
					nextEl: '.log_review_sld>.sld-nav .bt.next',
					prevEl: '.log_review_sld>.sld-nav .bt.prev',
				},
				on: {
					slideChange: function(){
						if($(".popLogRv .phd .nm .n").length) $(".popLogRv .phd .nm .n").text(this.realIndex+ 1);
					}
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);				
			}
		},
		revLog:{ // 로그후기 팝업 사진 슬라이드 Shop_03_04_03_01.html
			els: ".log_rpic_sld>.swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				slidesPerView: 1,
				spaceBetween: 0,
				navigation: {
					nextEl: '.log_rpic_sld>.sld-nav .bt.next',
					prevEl: '.log_rpic_sld>.sld-nav .bt.prev',
				},
				pagination: {
					el: '.swiper-pagination',
					type: 'fraction',
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);				
			}
		},
		pdOpt:{ // 하단 구매 옵션 창
			init:function(){
				this.evt();
				if(ui.check_brw.mo()) this.drag();
			},
			evt:function(){
				var _this = this;
				$(document).on("click",".cartNavs .btCart , .cartNavs .btOrde",function(e){
					_this.using("open");
				});
				$(document).on("click",".uiPdOrdPan .hdts .bt.close",function(e){				
					_this.using("close");
				});
				$(document).on("click",".uiPdOrdPan .optsets .btnsel",function(e){				
					var $optset = $(this).closest(".optsets");
					if( $optset.is(".open") ){
						$optset.removeClass("open");
					}else{
						$optset.addClass("open");
					}
				});
				$(document).on("click",".uiPdOrdPan .optsets  a.lk, .uiPdOrdPan .optsets a.box",function(e){				
					var $optset = $(this).closest(".optsets");
					if( $optset.is(".open") ){
						$optset.removeClass("open");
					}else{
						$optset.addClass("open");
					}
				});
				
				$(window).on("load resize",function(){
					_this.resize();
				});
			},
			using:function(opt){
				var $uiPdOrdPan = $(".uiPdOrdPan");
				var $cartNavs = $(".cartNavs");
				if (opt == "open") {
					$uiPdOrdPan.addClass("open");
					$cartNavs.addClass("open");
					$("body").addClass("isUiPdOrdPan");
					ui.scrollLock(true);
				}
				if (opt == "close") {
					$cartNavs.removeClass("open");
					$uiPdOrdPan.removeClass("open").on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd",function(){
						$uiPdOrdPan.find(".optpan .cdtwrap").css("height","");
					});
					$("body").removeClass("isUiPdOrdPan");
					ui.scrollLock(false);
				}
				
			},
			resize:function(){
				var $uiPdOrdPan = $(".uiPdOrdPan");
				if( typeof window.visualViewport != "undefined" ) {
					var maxht = window.visualViewport.height - 180 ;
					$uiPdOrdPan.find(".optpan .cdtwrap").css("max-height",maxht+"px");
				}
			},
			drag:function(){
				var $el = $(".uiPdOrdPan, .popBot").not(".popRevSel");
				if($el.length) fn_init();
				function fn_init(){
					$el.each(function(i,n){
						var check = $(n).hasClass("popBot");
						var $h = (check)?$(n).find(".phd"):$(n).find(".btDrag");
						$h.bind("touchstart",function(e){
							s(e,$(this));
						}).bind("touchmove",function(e){
							m(e,$(this));
						}).bind("touchend",function(e){
							ee(e,$(this));
						}).bind("mousedown",function(e){
							var $that = $(this);
							s(e,$(this));
							$(window).bind("mousemove",function(e){
								m(e,$that);
							});
							$(window).bind("mouseup",function(e){
								ee(e,$that);
								$(window).off("mousemove");
								$(window).off("mouseup");
							});
						});
					});
				}
				function s(e,t){
					var check = t.hasClass("phd");
					var y = (e.pageY !== undefined)?e.pageY:e.originalEvent.touches[0].screenY;
					var $b = (check)?t.parents(".popBot").find(".pct"):t.parents(".uiPdOrdPan").find(".cdtwrap");
					var top = $b.position().top;
					var h = window.innerHeight;
					var h1 = (t.parents(".uiPdOrdPan").find(".tots").length)?t.parents(".uiPdOrdPan").find(".tots").height():0;
					var h2 = ($(".cartNavs .inr").length)?$(".cartNavs .inr").height():0;
					var sy = $b.offset().top - $(window).scrollTop() + h1 + h2 + 3;
					t.data("p",sy);
					t.data("sy",y);
          t.data('h', $b.outerHeight());
				}
				function m(e,t){
					e.stopPropagation();
					e.preventDefault();
					var check = t.hasClass("phd");
					var $b = (check)?t.parents(".popBot").find(".pct"):t.parents(".uiPdOrdPan").find(".cdtwrap");
					var my = (e.pageY !== undefined)?e.pageY:e.originalEvent.touches[0].screenY;
					var price = t.data('sy') - my;
					t.data("price",price);
					$b.css('height', (t.data('h') + Number(price)) + 'px');
				}
				function ee(e,t){
					var check = t.hasClass("phd");
					if(t.data("price") >= (window.innerHeight - 30)){
						if(check){
							t.parents(".popBot").removeClass("open");
						}else{
							t.parents(".uiPdOrdPan").removeClass("open");
						}
						$("body").removeClass("isUiPdOrdPan");
					}
				}
			}
		}
	},
	order:{ // 장바구니, 주문
		init:function(){
			this.deliTog.init();
			this.bilselt.init();
			this.cartFixed.init();
			$(this.cartrcm.els).length && this.cartrcm.using();
			$(this.cardsld.els).length && this.cardsld.using();
			$(this.filter.els).length && this.filter.using();
		},
		cartrcm:{ // 장바구니 추천상품 
			els: ".ui_cartrcm_slide  .swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				freeMode: false,
				slidesPerView: 4,
				slidesPerGroup:4,
				spaceBetween: 14,
				simulateTouch:false,
				navigation: {
					nextEl: '.ui_cartrcm_slide .sld-nav .bt.next',
					prevEl: '.ui_cartrcm_slide .sld-nav .bt.prev',
				},
				breakpoints: {
					1024: {
						spaceBetween: 8,
						slidesPerView: "auto",
						slidesPerGroup:1,
						freeMode: true,
					}
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);				
			}
		},
		deliTog:{ // Shop_05.html
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				$(document).on("click",".ordersets .sect.deli .pd_tog_box .btTog",function(){
					var $box = $(this).closest(".pd_tog_box");
					if( $box.is(".open") ) {
						$box.removeClass("open");
						$(this).removeClass("open");
					}else{
						$box.addClass("open");
						$(this).addClass("open");
					}
				});
			},
			set:function(){

			}
		},
		cardsld:{ // 주문서 카드선택 
			/*
			els: ".cardsel_slide  .swiper-container",
			opt: {
				observer: true,
				observeParents: true,
				watchOverflow:true,
				//freeMode: true,
				centeredSlides: true,
				slidesPerView: "auto",
				slidesPerGroup:1,
				simulateTouch:false,
				navigation: {
					nextEl: '.cardsel_slide .sld-nav .bt.next',
					prevEl: '.cardsel_slide .sld-nav .bt.prev',
				},
				breakpoints: {
					1024: {
						slidesPerView: "auto",
						slidesPerGroup:1,
					}
				}
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);
				let ind = ($(this.els).attr("data-ind") !== undefined)?$(this.els).attr("data-ind"):1;
				if(ui.check_brw.pc()) this.slide.slideTo(ind);
			}
			*/
		},
		filter:{ // Shop_02_07_03_01 
			els: ".filter .remove-area .swiper-container",
			opt: {
				slidesPerView: "auto",
				freeMode: true,
				observer: true,
				observeParents: true,
				// watchOverflow:true,
				loop: false
			
			},
			using: function() {
				this.slide = new Swiper(this.els, this.opt);
			}
		},
		bilselt:{
			init:function(){
				this.evt();
				this.set();
			},
			evt:function(){
				$(document).on("change",".ordersets .sect.binf .bilist>li .hht input[type='radio']",function(){
					var $box = $(this).closest("li");
					$box.addClass("open").siblings("li").removeClass("open");
				});
			},
			set:function(){

			}			
		},
		cartFixed:{
			init:function(){
				if( !ui.isMo() && $(".cartWrap .cartOrdr").length ){
					this.evt();
					this.set();
				}
			},
			evt:function(){
				$(document).on("click", ".btnConfirm", function(e){
					setTimeout(function() {
						var cartCntH = $(".cartWrap .cartPrds:visible").outerHeight() || 0;
						var cartOrdrH = $(".cartWrap .cartOrdr:visible").outerHeight() || 0;
	
						if ( cartOrdrH > cartCntH){
							$(".cartWrap .cartOrdr .ctinr").css("max-height", cartCntH);
						} else {
							$(".cartWrap .cartOrdr .ctinr").css("max-height", "");
						}
					},500);
				});

				$(window).on("load scroll resize",function(){
					var headHt = $("header.cu:visible").height() || 0;
					var wsc = $(window).scrollTop() + headHt + 18 ;
					var ctboxtop = $(".cartWrap .cartOrdr").offset().top;

					var wscD = $(window).scrollTop() + $(window).height();
					var docH = $(document).outerHeight();
					var footH = $(".footer:visible").outerHeight() || 0;
					var cnt = docH - footH ;
					var bgap = 89 ;
					var botpos = wscD - cnt ;
					if( ctboxtop < wsc ){
						$(".cartWrap .cartOrdr").addClass("fixed");
						$(".cartWrap .cartOrdr .ctinr").css("margin-left", -$(window).scrollLeft() );
						$(".cartWrap .cartOrdr .ctinr").css({"bottom":botpos + bgap});
					}else{
						$(".cartWrap .cartOrdr").removeClass("fixed");
						$(".cartWrap .cartOrdr .ctinr").css("margin-left", "" );
						var cartCntH = $(".cartWrap .cartPrds:visible").outerHeight() || 0;
						var cartOrdrH = $(".cartWrap .cartOrdr").outerHeight() || 0;
						if ( cartOrdrH > cartCntH){
							$(".cartWrap .cartOrdr .ctinr").css("max-height", cartCntH);
						}
					}
				});
			},
			set:function(){

			}
		}
	},
	likemot:{  // 샵 라이브 좋아요 하드 모션 /_html/shop/Shop_02_02_03.html
		init:function(){
			this.evt();
		},
		evt:function(){
			var _this = this;
			$(document).on("click",".btnUiLike",function(e){
				_this.set();
			});
			$(document).on("animationend",".uiLikeMot>.lk",function(){
				$(this).remove();
			});
		},
		set:function(){
			var rde = Math.floor(Math.random() * 8); 
			var rdx = Math.floor(Math.random() * 5); 
			var rdy = Math.floor(Math.random() * 5);
			var rdl = Math.floor(Math.random() * 20);
			var rdb = Math.floor(Math.random() * 30);
			var $lk = '<em class="lk e_'+rde+' x_'+rdx+' y_'+rdy+'" style="left:'+rdl+'px; bottom:'+rdb+'px"></em>';
			$(".uiLikeMot").append($lk);
		}
	},
	elip:{ // 5줄이상 내용더보기 
		init:function(){
			this.set();
			this.evt();
		},
		evt:function(){
			$(document).on("click", "[data-ui-elips] .btnTog", function() {
				if ($(this).closest("[data-ui-elips]").hasClass("open")) {
					$(this).closest("[data-ui-elips]").removeClass("open");
					$(this).text("더보기");
				} else {
					$(this).closest("[data-ui-elips]").addClass("open");
					$(this).text("닫기");
				}
			});
		},
		set:function(){
			$("[data-ui-elips]").each(function(){
				var txtV = $(this).data("ui-elips");
				var txtH = $(this).find("[data-ui-elips='ctn']");
				if( txtH.height() > txtV){
					$(this).addClass("elips");
					$(this).append('<a class="btnTog" href="javascript:;">더보기</a>');
				}else{
					$(this).removeClass("elips");
					$(this).find(".btnTog").remove();
				}
			});
		}
	},
	tooltip:{
		init:function(){
			this.evt();
			this.set();
		},
		evt:function(){
			var _this = this;
			$(document).on("click",".uitooltip .btnTooltop",function(e){
				_this.set(this);
			});
			$(document).on("click",".uitooltip .btnTooltop",function(e){
				var $myui = $(this).closest(".uitooltip");
				if( $myui.is(".open") ) {
					$myui.removeClass("open");
				}else{
					$(".uitooltip").removeClass("open");
					$myui.addClass("open");
				}
			}).on("click", function(e) {
				if(!$(e.target).closest(".uitooltip").length ) {
					$(".uitooltip").removeClass("open");
				}
			});
		},
		set:function(els){
			
			
		}
	},
	datepick:{ // 달력피커 jQuery-ui
		init:function(){
				
			$(document).on("click","input.datepicker",function(){
				$(this).next(".ui-datepicker-trigger").trigger("click");
			});
			$(document).on("focus","input.datepicker",function(){
				// $(this).attr("tabindex","-1");
				
				// $(this).next(".ui-datepicker-trigger").focus();
			});

			$(document).on("click",".ui-datepicker-next",function(e){
				e.preventDefault();
				setTimeout(function(){
					$(".ui-datepicker-next").focus();
				});
			});
			$(document).on("click",".ui-datepicker-prev",function(e){
				e.preventDefault();
				setTimeout(function(){
					$(".ui-datepicker-prev").focus();
				});
			});
			$(document).on("click",".ui-datepicker-header .btsy .bt.prev",function(e){
				e.preventDefault();
				for (var i = 0; i < 12; i++) {
					$(".ui-datepicker-prev").trigger("click");
				}
				setTimeout(function(){
					$(".ui-datepicker-header .btsy .bt.prev").focus();
				});
			});
			$(document).on("click",".ui-datepicker-header .btsy .bt.next",function(e){
				e.preventDefault();
				for (var i = 0; i < 12; i++) {
					$(".ui-datepicker-next").trigger("click");
				}
				setTimeout(function(){
					$(".ui-datepicker-header .btsy .bt.next").focus();
				});
			});

			this.set(); 
		},
		set:function(params){
			this.opts = $.extend({
				id:"",
				// minDate: '-3M',
	  			// maxDate: '+28D',
				showOn: "button",
				showButtonPanel: true,
				// changeYear:true ,
				// changeMonth:true,
				buttonText: "달력",
				showMonthAfterYear: true,
				prevText: "이전 달",
				nextText: "다음 달",
				closeText: "닫기",
				dateFormat:"yy-mm-dd",
				dayNames: [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
				yearRange: 'c-50:c+50',
				yearSuffix: "년",
				showOtherMonths: true,
     			selectOtherMonths: true,
				dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
				monthNames : [ "1","2","3","4","5","6","7","8","9","10","11","12"],
				monthNamesShort: [ "01","02","03","04","05","06","07","08","09","10","11","12"],
				beforeShow: function(els,id) {
					ui.scrollLock(true);
					$(".ui-datepicker").wrap('<div class="uiDatePickWrap"></div>');
					setTimeout(function(){
						$(".ui-datepicker-header .ui-corner-all").attr({"tabindex":"0","href":"javascript:;"});
						$("#ui-datepicker-div").attr("tabindex","-1").focus();
						$("#ui-datepicker-div .ui-state-active").attr({"title":"선택됨"});
						$("#ui-datepicker-div .ui-state-highlight").attr({"title":"오늘날짜"});
						var dtit = $(els).attr("title");
						if( !$(".ui-datepicker .dtit").length ) $(".ui-datepicker").prepend('<h4 class="dtit">'+dtit+'</h4>');
						var btsy = '<div class="btsy"><button class="bt prev" type="button">작년</button> <button class="bt next" type="button">내년</button></div>';
						$(".ui-datepicker-header").prepend(btsy);
						$(".uiDatePickWrap").addClass("open");
					});
				},
				onSelect :function(date,els){
					$(this).trigger("change");
					$(this).focus();
				},
				onChangeMonthYear :function(yy,dd,id){
					setTimeout(function(){
						$(".ui-datepicker-header .ui-corner-all").attr({"tabindex":"0","href":"javascript:;"});
						$("#ui-datepicker-div .ui-state-active").attr({"title":"선택됨"});
						$("#ui-datepicker-div .ui-state-highlight").attr({"title":"오늘날짜"});
						var dtit = $("#"+id.id).attr("title");
						if( !$(".ui-datepicker .dtit").length ) $(".ui-datepicker").prepend('<h4 class="dtit">'+dtit+'</h4>');
						var btsy = '<div class="btsy"><button class="bt prev" type="button">작년</button> <button class="bt next" type="button">내년</button></div>';
						if( !$(".ui-datepicker-header .btsy").length ) $(".ui-datepicker-header").prepend(btsy);
					});
				},
				onClose:function(date,els){
					$("#"+els.id).focus();
					$(".uiDatePickWrap").removeClass("open");
					$("body , html").removeClass("lock"); // 2021.06.08 수정함
					// $(".ui-datepicker").unwrap(".uiDatePickWrap");
					if (ui.isMo()) {
						setTimeout(function(){
							$(".ui-datepicker").unwrap(".uiDatePickWrap");
              ui.scrollLock(false);
						},400);
					}else{
						$(".ui-datepicker").unwrap(".uiDatePickWrap");
            ui.scrollLock(false);
					}
				}
			}, params); 
			if( this.opts.id ) {
				$("#"+this.opts.id+":not(:disabled)").datepicker(this.opts);
			}else{
				$("input:not(:disabled).datepicker").datepicker(this.opts);
			}
			$("input:not(:disabled).datepicker").prop("readonly",true);

		}

	},
	form:{  //  폼요소
		init:function(){
			this.input.init();
			this.intdel.init();
			this.star.init();
		},
		input:{
			init:function(){
				this.evt();
				this.set();
			},
			set:function(){
				$(".input input, .textarea textarea").each(function(){
					if( $(this).val() == "" ){
						$(this).closest(".input , .textarea").removeClass("coms");
					}else{
						$(this).closest(".input , .textarea").addClass("coms");
					}
					if( $(this).attr("readonly") || $(this).attr("disabled") ){
						$(this).closest(".input , .textarea").addClass("disabled");
					}else{
						$(this).closest(".input , .textarea").removeClass("disabled");
					}
				});
			},
			evt:function(){
				$(document).on("click",".input:not(.disabled) .label, .textarea:not(.disabled) .label",function(e){
					$(this).closest(".input:not(.disabled) , .textarea:not(.disabled)").find("input, textarea").focus();
				});
				$(document).on("focus",".input:not(.disabled) input, .textarea:not(.disabled) textarea",function(e){
					$(this).closest(".input , .textarea").addClass("focus");
				});
				$(document).on("blur",".input input, .textarea textarea",function(e){
					$(this).closest(".input , .textarea").removeClass("focus");
					if( $(this).val() == "" ){
						$(this).closest(".input , .textarea").removeClass("coms");
					}else{
						$(this).closest(".input , .textarea").addClass("coms");
						
						//2021.08.19 APETQA-6683 shj01 start
						if($(".cardnums").length > 0){
							$(".cardnums .input input").removeAttr("style");
						}
						//2021.08.19 APETQA-6683 shj01 end
						
					}
				});
			}
		},
		intdel:{ // input.del 박스에 글자 삭제
			init:function(){
				this.evt();
				this.set();
			},
			set:function(){
				$(".input:not(.ndel)>input").each(function(){
					if(!$(this).is("[disabled]")  &&  !$(this).is("[readonly]") ) {
						// $(this).trigger("input");   //  페이지 로드시 value 값이 있으면 input 트리거
					}else{
						$(this).closest(".input").find(".btnDel").remove();
						$(this).closest(".input").removeClass("del");
					}
					var myInput = $(this);
					var txt = (myInput.parent().data("txt") !== undefined) ? myInput.parent().data("txt"):false;
					if( txt && myInput.parent().find(".inputInfoTxt").length == 0){
						myInput.parent().append("<div class='inputInfoTxt'>"+txt+"</div>");
					}
				});
			},
			evt:function(){
				$(document).on("input focus",".input:not(.ndel)>input:not([readonly])",function(e){
					var myInput = $(this);
					var txt = (myInput.parent().data("txt") !== undefined) ? myInput.parent().data("txt"):false;
					if( myInput.val() != ""  && myInput.closest(".input").find(".btnDel").length == 0  ) {
						var pl = (myInput.closest(".input").css("box-sizing") == "border-box")?myInput.closest(".input").css("padding-left").replace(/\D/g,''):0;
						var pr = (myInput.closest(".input").css("box-sizing") == "border-box")?myInput.closest(".input").css("padding-right").replace(/\D/g,''):0;
						let css_left = (myInput.closest(".input").find(".inputInfoTxt").length)?false:"right:auto; left:" +  (myInput.closest(".input").find("input").innerWidth() - (29 - Number(pl)) - (myInput.closest(".input").find(".btnfaq").innerWidth() || 0)) + "px;";
						if(myInput.closest(".header") > 0) css_left = "right:9px;";
						if(css_left === false){
							myInput.closest(".input input").after('<button type="button" class="btnDel" tabindex="-1">삭제</button>');
						}else{
							myInput.closest(".input input").after('<button type="button" class="btnDel" style="'+css_left+'" tabindex="-1">삭제</button>');
							myInput.closest(".input input").css("padding-right",(29 + (myInput.closest(".input").find(".btnfaq").innerWidth() + 5 || 0))+"px");
						}
						myInput.closest(".input").addClass("del");
						if(txt){
							var $del = myInput.parent().find(".btnDel");
							var right = /*myInput.parent().find(".inputInfoTxt").width() + 20;*/ (txt.length * 13) + 15;
							$del.css("right",right+"px");
							myInput.css("padding-right",(right + 28) +"px");
						}
						if(myInput.parent().find(".inputInfoTxt.time").length){
							var $wrap = myInput.parent();
							var $input = $wrap.find("input");
							var $del = $wrap.find(".btnDel");
							var $time = $wrap.find(".inputInfoTxt.time");
							var right = ($time.innerWidth() + $del.innerWidth() + 28);
							var left = ($time.position().left - $del.innerWidth())
							$del.css({right:"auto","left":left+"px"});
							$input.css("padding-right",right +"px");
						}
					}
					if( myInput.val() == "") {
						myInput.closest(".input").find(".btnDel").remove();
						myInput.closest(".input").removeClass("del");
					}
				});
				$(document).on("blur",".input:not(.ndel)>input",function(e){
					var myInput = $(this);
					var time = (ui.check_brw.mo())?50:200;
					myInput.timer = setTimeout(function(){
						myInput.closest(".input").find(".btnDel").remove();
						myInput.closest(".input").removeClass("del");
					},time);
				});
				$(document).on("click",".input:not(.ndel) .btnDel",function(e){
					/*var myInput = $(this);
					clearInterval(myInput.prev().timer);
					myInput.closest(".input").find("input").val("").focus();
					myInput.closest(".input").find("input").trigger("change");
					myInput.remove();*/
					//211207 김진홍 과장님요청
					var myInput = $(this);
					var tgInput = myInput.closest(".input").find("input");
					clearInterval(myInput.prev().timer);
					tgInput.val("").focus();
					tgInput.trigger("change");
					myInput.remove();
				});
			}
		},
		star:{
			init:function(){
				var _this =  this;
				if( $(".uiStar").length ) this.using();
				$(document).on("click",".uiStar ul>li>button.st",function(e){
					var myVar =  $(this).closest("li").index()+1;
					let $star = $(this).closest("ul").children();
					let half = ($(this).innerWidth() / 2) + $(this).position().left;
					let ind = $(this).parent().index();
					$(this).closest(".uiStar").data("star",myVar);
					$(this).closest(".uiStar").attr("data-star",myVar);
					if(half <= e.pageX){
						$(this).parent().addClass("f").removeClass("h");
					}else{
						$(this).parent().addClass("h").removeClass("f");
					}
					$star.each(function(i,n){
						if(i == ind){
							return;
						}else if(i < ind){
							$(n).addClass("f");
						}else{
							$(n).removeClass("f h");
						}
					});
//					_this.using();
				});
			},
			using:function(){
				$(".uiStar").each(function(){
					$(this).find("ul>li").removeClass();
					//$(this).find("ul>li").removeClass("f");
					var v = $(this).attr("data-star");
					//v = v;
					vt = Math.floor(v/1);
					//vt = v.replace(/0/gi, '^');
					vp = (v%1);
					$(this).find(".p").html(v);
					for (var i = 0; i <= vt; i++) {
						$(this).find("ul>li:nth-child("+i+")").addClass("f");
						
						if(vp){
							if(vt == 0 ){
								$(this).find("ul>li:nth-child(1)").addClass("h");
								//return false;
							}
							$(this).find("ul>li:nth-child("+vt+")").next("li").addClass("h");
							
						}
					}
				});
			}
		}
	},
	sort:{ // 리스트 정렬 메뉴
		init:function(){
			this.evt();
			this.set();
		},
		evt:function(){
			var _this = this;
			$(document).on("click","nav.uisort .bt.st",function(e){
				_this.pos(this);
			});
			$(document).on("click", function(e) {
				if(!$(e.target).closest("nav.uisort").length ) {
					$("nav.uisort").removeClass("open");
				}
			});
			$(document).on("click", "nav.uisort .menu>li>.bt", function(e) {
				$(this).closest("nav.uisort").removeClass("open");
			});


			$(document).on("click",".uisort .menu>li>.bt",function(e){
				$(this).closest("li").addClass("active").siblings("li").removeClass("active");
				_this.set();
			});
		},
		set:function(){
			$("nav.uisort").each(function(){
				var $li = $(this).find(".menu>li");
				var txt = $li.filter(".active").find(".bt").text();
				if( $(this).find(".menu>li.active").length == 0 ) {
					txt = $(this).find(".menu>li:first-child").find(".bt").text();
					$(this).find(".menu>li:first-child").addClass("active");
				}
				$li.closest(".uisort").find(".bt.st").html(txt);
				var val = $(this).find(".menu>li.active .bt").attr("value");
				$li.closest(".uisort").find(".bt.st").attr("value",val);				
			});
		},
		pos:function(els){
			var $myui = $(els).closest("nav.uisort");
			if( $myui.is(".open") ) {
				$myui.removeClass("open");
			}else{
				$("nav.uisort").removeClass("open");
				$myui.addClass("open");
			}
			// 메뉴 포지션		
			var isPop = $(els).closest(".poptents").length;
			var ltp = $(els).offset().top;
			var cht = $(".popLayer.a:visible .pct").height()*0.5 || $(window).height()*0.5 ;
			var sct = $(".popLayer.a:visible .pct").scrollTop() || $(window).scrollTop() ;
			if( isPop )  ltp = ltp + sct ; 
			if( cht > ltp - sct + 30 ) {
				$(els).closest("nav.uisort").removeClass("bot");
			}else{
				$(els).closest("nav.uisort").addClass("bot");
			}
		}
	},
	dropmenu:{
		init:function(){
			this.evt();
			// this.set();
		},
		evt:function() {
			var _this = this;
			$(document).on("click",".uidropmu .bt.st",function(e){
				e.stopImmediatePropagation();
				_this.set(this);
				_this.pos(this);
			});

			$(document).on("click", function(e) {
				if(!$(e.target).closest(".uidropmu").length ) {
					$(".uidropmu").removeClass("open");
				}
			});

			$(document).on("click", ".uidropmu .menu>li>.bt", function(e) {
				$(this).closest(".uidropmu").removeClass("open");
			});

		},
		set:function(els) {
			var $myui = $(els).closest(".uidropmu");
			if( $myui.is(".open") ) {
				$myui.removeClass("open");
				$(".uidropmu").removeAttr("style");						//APET-1227 210730 lju02
			}else{
				$(".uidropmu").removeClass("open").css({"z-index":9});	//APET-1227 210730 lju02
				$myui.addClass("open").removeAttr("style");				//APET-1227 210730 lju02
			}
		},
		pos:function(els){
			// 메뉴 포지션		
			var isPop = $(els).closest(".poptents").length;
			var ltp = $(els).offset().top;
			var cht = $(".popLayer.a:visible .pct").height()*0.5 || $(window).height()*0.5 ;
			var sct = $(".popLayer.a:visible .pct").scrollTop() || $(window).scrollTop() ;
			var checkDown = $(els).parent().hasClass("only_down");
			if( isPop )  ltp = ltp + sct ; 
			if( (cht > ltp - sct + 30) || checkDown ) {
				$(els).closest(".uidropmu").removeClass("bot");
			}else{
				$(els).closest(".uidropmu").addClass("bot");
				// 21.11.19 APETQA-7550 LSY (배송지 리스트 팝업에선 bot 삭제)
				$(els).closest("#popupAddressList1 .uidropmu").removeClass("bot");
			}
			
			// 좌우 포지션	- APET-1227 210730 lju02
			var infoW = $(els).parents(".info").innerWidth();
			// .stat 있을 때만 가져오기 - APETQA-7322 211026 lju02
			if($(".stat").length == 1) {
				var statP = $(els).parents(".stat").position().left;
			}
			
			var menuPx = infoW - statP;
			if (menuPx > 40){
				$(".menu").css({"left":0});
			}
			else {
				$(".menu").removeAttr("style");
			}
		}
	},
	spined:{ // 장바구니 수량 변경
		init:function(){
			this.evt();
			this.set();
			$.fn.setCursorPosition = function( pos ){
				this.each( function( index, elem ) {
					if( elem.setSelectionRange ) {
						elem.setSelectionRange(pos, pos);
					} else if( elem.createTextRange ) {
						var range = elem.createTextRange();
						range.collapse(true);
						range.moveEnd('character', pos);
						range.moveStart('character', pos);
						range.select();
					}
				});
				
				return this;
			};
		},
		evt:function(){
			var _this = this;
			$(document).on("click",".uispined .bt.mod",function(e){
				_this.using(this,"inp");
			});
			$(document).on("change",".uispined select.slt",function(e){
				_this.using(this,"slt");
			});
			$(document).on("input",".uispined .amt",function(e){
				// _this.using(this,"inp");
			});
			$(document).on("focus",".uispined .amt",function(e){
				$(this).closest(".uispined").addClass("bt");
			});
			$(document).on("blur",".uispined .amt",function(e){
				$(this).closest(".uispined").removeClass("bt");
				_this.using(this,"inp");
			});
		},
		using:function(els,mod){
			var ubx = $(els).closest(".uispined");
			var val ;
			if( mod == "slt" ){
				val = ubx.find(".slt").val();
				if( val <= 9 ){
					ubx.find(".amt").val(val).attr("value",val);
				}
				if( val > 9 ){
					ubx.addClass("bt");
					setTimeout(function(){
						ubx.find(".amt").prop("type","text"); 
						ubx.find(".amt").focus().setCursorPosition ( ubx.find(".amt").val().length );
						ubx.find(".amt").prop("type","number");
					},400);
					return; // 10+ 선택하면  포커스만가고 리턴
				}
			}
			if( mod == "inp" ){
				val = ubx.find(".amt").val();
				if( ubx.find(".amt").val() < 1 ){
					ubx.find(".amt").val(1);
				}
				var max = ubx.data("max");
				ubx.find(".amt").val(val).attr("value",val);
				ubx.find(".slt").val(val).prop("selected",true);				
				if( ubx.find(".amt").val() > max ){
					ubx.find(".amt").val(max).attr("value",max);
				}
				ubx.removeClass("bt");
			}
			val = ubx.find(".amt").val();
			this.set();
		},
		set:function(){
			var html = 
			'<div class="bx sel">'+
			'	<select class="val slt" title="수량선택"></select>'+
			'</div>'+
			'<div class="bx num">'+
			'	<button type="button" class="bt mod">변경</button>'+
			'</div>';

			$(".uispined").each(function(){
				var ubx = $(this);
				var val = ubx.find(".amt").val();
				var max = ubx.data("max") || 1;
				var min = ubx.data("min") || 1;
				var oplist = "";
				var m = "";
				ubx.find(".amt").attr("autofocus",true);
				for( var i = min; i < max+1 ; i++ ){
					if( i >= 10){
						m = "+";
					}
					if( i <= 10){
						oplist += '<option type="button" value="'+i+'">'+m+i+'</option>';
					}
				}
				if(!ubx.is(".load") ) {
					ubx.append(html);
					ubx.find(".slt").append(oplist);
					ubx.find(".slt").val(val).prop("selected",true);
				}
				if( val > 9) {
					ubx.addClass("nm").removeClass("st");
					ubx.find(".amt").val(val);
				}else{
					ubx.addClass("st").removeClass("nm");
				}
				if( ubx.find(".amt").val() < 1 ){
					ubx.find(".amt").val(1);
				}
				if( ubx.find(".amt").is(":disabled") ) {
					ubx.find(".slt").prop("disabled",true);
				}else{
					ubx.find(".slt").prop("disabled",false);
				}
				ubx.addClass("load");
				ubx.find(".amt").attr("title","수량입력");
			});
		}
	},
  // 현재 열려있는 팝업이 존재하는지 체크 (alert, confirm 팝업 제외)
  isPopupOpened: function() {
    const $body = document.querySelector('body');
    const popLists = ['isUiPdOrdPan', 'isPopBot', 'isPopLayer', 'isPopSelect'];
    let isPopupOpened = false;
    popLists.forEach(function(item, index) {
      if ( $body.classList.contains(item) ) {
        isPopupOpened = true;
      }
    });
    return isPopupOpened;
  },
	alert:function(msg,params){ // 커스텀 알럿

		var opt = $.extend({
			msg:msg,
			tit:"",
			cls:"",
			ycb:"",
			ybt:"확인"
		}, params);

		if( $(".popAlert").length ) return;
		
		if ( ui.isPopupOpened() == false ) {
      ui.scrollLock(true);
    }

		var lyAlert =
		'<article class="popAlert '+opt.cls+'" tabindex="0">'+
		'	<div class="pbd">'+
		'		<div class="phd"><span class="tit">'+opt.tit+'</span></div>'+
		'		<div class="pct">'+opt.msg+'</div>'+
		'		<div class="pbt">'+						
		'			<button type="button" class="btn btnConfirm">'+ opt.ybt +'</button>'+
		'		</div>'+
		// '	<button type="button" class="btnClose">닫기</button>'+
		'	</div>'+
		'</article>';
		$("body").append(lyAlert);
		if (opt.tit) {
			$(".popAlert>.pbd>.phd").addClass("isTit");
		}
		$(".popAlert:visible").focus();

		$(".popAlert").find(".btnConfirm").on("click",function(){
			window.setTimeout(opt.ycb);
		});
		$(".popAlert").find(".btnClose , .btnConfirm").on("click",alertClose);

		function alertClose(){
			$(".popAlert").remove();
			if ( ui.isPopupOpened() == false ) {
        ui.scrollLock(false);
      }
		}
	},
	confirm:function(msg,params){ // 커스텀 컨펌

		var opt = $.extend({
			msg:msg,
			tit:"",
			cls:"",
			ycb:"",
			ybt:"확인",
			ncb:"",
			nbt:"취소"
		}, params);

		if( $(".popConfirm").length ) return;
		
		if ( ui.isPopupOpened() == false ) {
      ui.scrollLock(true);
    }

		var lyConfirm =
		'<article class="popConfirm '+opt.cls+'" tabindex="0">'+
		'	<div class="pbd">'+
		'		<div class="phd"><span class="tit">'+opt.tit+'</span></div>'+
		'		<div class="pct">'+opt.msg+'</div>'+
		'		<div class="pbt">'+
		'			<button type="button" class="btn btnCancel">'+ opt.nbt +'</button>'+
		'			<button type="button" class="btn btnConfirm">'+ opt.ybt +'</button>'+
		'		</div>'+
		// '	<button type="button" class="btnClose">닫기</button>'+
		'	</div>'+
		'</article>';
		$("body").append(lyConfirm);
		if (opt.tit) {
			$(".popConfirm>.pbd>.phd").addClass("isTit");
		}
		$(".popConfirm:visible").focus();

		$(".popConfirm").find(".btnConfirm").on("click",function(){
			window.setTimeout(opt.ycb);
		});

		$(".popConfirm").find(".btnCancel").on("click",function(){
			window.setTimeout(opt.ncb);
		});

		$(".popConfirm").find(".btnConfirm, .btnClose , .btnCancel").on("click",confirmClose);

		function confirmClose(){
			$(".popConfirm").remove();
			if ( ui.isPopupOpened() == false ) {
        ui.scrollLock(false);
      }
		}
	},
	toast:function(msg,params){ // 토스트창 
		var _this = this;
		_this.opt = $.extend({
			msg:msg,
			cls:"",
			sec:3000,
			bot:74,
			ccb: null,
			zIndex:1000,
			setTime:true
		}, params);
		
		//if ( $(".popToast:visible").length ) { return; }
		/*
		var lyToast =
		'<article class="popToast ' + _this.opt.cls + '">' +
		'	<div class="pbd">' +
		'		<div class="pct">' + _this.opt.msg + '</div>' +
		'	</div>' +
		'</article>';
		*/
		let $div = document.createElement("article");
		$div.setAttribute("class","popToast " + _this.opt.cls);
		$div.innerHTML = '<div class="pbd"><div class="pct">' + _this.opt.msg + '</div></div>';
		//$("body").append(lyToast);
		$("body").append($div);
		if( $(".preview_area").length ) {
			$(".preview_area").closest(".textarea").append($div);
		}
		window.setTimeout(function() {
			/*
			$(".popToast:visible").addClass("on").css({"bottom" : _this.opt.bot});
			$(".popToast:visible").addClass("on").css({"z-index" : _this.opt.zIndex});
			*/
			$($div).addClass("on").css({"bottom" : _this.opt.bot});
			$($div).addClass("on").css({"z-index" : _this.opt.zIndex});
		});
		if(_this.opt.setTime){
			window.setTimeout(function() {
				/*
				$(".popToast:visible").removeClass("on").on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd",function(){
					$(".popToast").remove();
					if( typeof _this.opt.ccb == "function" ){
						_this.opt.ccb();
					}
				});
				*/
				$($div).removeClass("on").on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd",function(){
					$($div).remove();
					if( typeof _this.opt.ccb == "function" ){
						_this.opt.ccb();
					}
				});
			}, _this.opt.sec);
		}
		
	},
	lock:{ // 스크롤 막기,풀기
    // 해당 메서드는 더이상사용하지 않습니다.
    // 하단의 ui.scrollLock() 을 사용해 주세요
		sct: 0,
		stat: false,
		els: '.popLayer:visible, .popConfirm:visible, .popAlert:visible',
		set: function() {
			if(	$(this.els).length <= 0 ) {
				this.using(false);
			}
		},
		using:function(opt){
      const $body = document.querySelector('body'); // 스크롤 고정/해제 대상
      const scrollPos = window.pageYOffset;         // 현재 스크롤 위치
			if( opt === true && this.stat === false ){
				// lock body scroll
				this.stat = true;
        // 팝업 중목노출 필터링
        if ( !$body.hasAttribute('data-scroll') ) {
          $body.style.overflow = 'hidden';
          $body.style.position = 'fixed';
          $body.style.top = `-${scrollPos}px`;
          $body.style.left = '0';
          $body.style.right = '0';
          $body.setAttribute('data-scroll', scrollPos);
        }
				
				// APETQA-7693 21.12.21 LSY 팝업창열릴때 ViewPort수정
				if ( location.pathname.indexOf("/goods/indexGoodsDetail") > -1 ) {
					$("meta[name=viewport]").attr("content","width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no");
        }
			}
			if( opt === false && $(this.els).length <= 0 && !$("body").is(".gnbOn") ){
				// unlock body scroll
				this.stat = false;
        $body.style.removeProperty('overflow');
        $body.style.removeProperty('position');
        $body.style.removeProperty('top');
        $body.style.removeProperty('left');
        $body.style.removeProperty('right');
        if ( $body.hasAttribute('data-scroll') ) {
          $(window).scrollTop($body.getAttribute('data-scroll'));
          $body.removeAttribute('data-scroll');
        }
				
				// APETQA-7693 21.12.21 LSY 팝업창열릴때 ViewPort수정
				if ( location.pathname.indexOf("/goods/indexGoodsDetail") > -1 ) {				    
          $("meta[name=viewport]").attr("content",  "width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=4,  user-scalable=yes");
        }
			}
		}
	},
  // body scroll lock / unlock
  // stat: true / false
  scrollLock: function(stat) {
    const $body = document.querySelector('body');
    const scrollPos = window.pageYOffset;
    if ( stat == true ) {
      // lock body scroll
      if ( !$body.hasAttribute('data-scroll') ) {
        $body.style.overflow = 'hidden';
        $body.style.position = 'fixed';
        $body.style.top = `-${scrollPos}px`;
        $body.style.left = '0';
        $body.style.right = '0';
        $body.setAttribute('data-scroll', scrollPos);
      }
    } else {
      // unlock body scroll
      $body.style.removeProperty('overflow');
      $body.style.removeProperty('position');
      $body.style.removeProperty('top');
      $body.style.removeProperty('left');
      $body.style.removeProperty('right');
      if ( $body.hasAttribute('data-scroll') ) {
        $(window).scrollTop($body.getAttribute('data-scroll'));
        $body.removeAttribute('data-scroll');
      }
    }
  },
	tog:{ // 토글 UI
		init: function() {
			this.evt();
			this.set();
		},
		set:function(id){
			$("[data-ui-tog='ctn']").hide();
			$("[data-ui-tog='ctn'].open").show();
			var _this = this;
			if (id) var togid = id.split(",");
			$("[data-ui-tog='btn']").each(function(idx){
				// $("[data-ui-tog='btn'][href='#"+togid[idx]+"']").trigger("click");
				if(togid)_this.open(togid[idx]);
				if( $(this).is(".open")){
					$(this).attr("title","닫기");
				}else{
					$(this).attr("title","열기");
				}
			});
		},
		open:function(id){
			$("[data-ui-tog='btn'][data-ui-tog-val='"+id+"']").addClass("open").attr("title","닫기");
			$("[data-ui-tog='ctn'][data-ui-tog-val='"+id+"']").slideDown(0,function(){
				$(this).addClass("open").attr("tabindex","-1").focus();
			});
		},
		close:function(id){
			$("[data-ui-tog='btn'][data-ui-tog-val='"+id+"']").removeClass("open").attr("title","열기");
			$("[data-ui-tog='ctn'][data-ui-tog-val='"+id+"']").slideUp(0,function(){
				$(this).removeClass("open");
			});
		},
		evt:function(){
			var _this = this;
			$(document).on("click", "[data-ui-tog='btn']", function(e) {
				var id = $(this).data("ui-tog-val");
				var bt = $(this);
				if( bt.is(".open") ) {
					_this.close(id);
				}else{
					_this.open(id);
				}
				e.preventDefault();
			});
		}
	},
	accd:{ // 아코디언 UI
		init: function() {
			this.evt();
			this.set();
		},
		set:function(){
			$(".uiAccd>li>.cBox").hide();
			$(".uiAccd>li.open>.cBox").show();
			$(".uiAccd>li.except>.cBox").show();
		},
		evt: function() {
			/*$(document).on("click", ".uiAccd>li:not(.except)>.hBox>.btnTog", function() {*/
			$(document).on("click", ".uiAccd>li:not(.except)>.hBox", function(e) {
				var type = $(this).closest(".uiAccd").attr("data-accd");
				var $pnt = $(this).closest("li");

				e.stopPropagation();

				if (type === "tog") {
					//tog : 여러항목을 열어 놓을 수 있음
					if( $pnt.is(".open") ) {
						
						$pnt.find(".cBox").slideUp(100,function(){
							$pnt.removeClass("open");
						});
					} else {
						$pnt.find(".cBox").slideDown(100,function(){
							$pnt.addClass("open");
						});
					}
				}
				if (type === "accd") {
					//accd : 한번에 한 항목만 열림
					$(this).closest(".uiAccd").find(">li").removeClass("open").not("li.except").find(".cBox").slideUp(100);
					if ($pnt.find(".cBox").is(":hidden")) {
						$pnt.addClass("open").find(".cBox").slideDown(100);
					}
				}

				// 탭내 아코디언시 탭 높이값 재 계산 - CSR-2732
				if( $(".uiTab_content").length ) {
					ui.tapTouchAc.tab_height($(".uiTab_content > ul"));
				}

			});
			
			$(document).on("click", ".uiAccd>li:not(.except)>.hBox .info", function(e) {
				e.stopPropagation();
			});

		}
	},
	tab:{ // 탭 UI
		init: function() {
			var _this = this;
			_this.evt();
			_this.set();
		},
		set:function(id){
			if( id ) var tabid = id.split(",");
			$("[data-ui-tab-btn][data-ui-tab-val]").each(function(idx){
				if( tabid ) {
					$("[data-ui-tab-btn][data-ui-tab-val='"+tabid[idx]+"']").prop("checked",true).trigger("click");
				}
				//$("[data-ui-tab-btn][data-ui-tab-val]:checked").trigger("click");
			});
		},
		evt:function(){
			var _this = this;
			$(document).on("click", "[data-ui-tab-btn]", function(e){
				if( $(this).data("ui-tab") == "disabled" ) {
					return false;
				}
				_this.using(this);
			});
		},
		using:function(els){
			var btn = $(els).data("ui-tab-val");
			var ctn = $(els).data("ui-tab-btn");
			$("[data-ui-tab-btn="+ctn+"]").removeClass("active").closest("li").removeClass("active");
			$(els).addClass("active").closest("li").addClass("active");
			$("[data-ui-tab-ctn="+ctn+"]").removeClass("active");
			$("[data-ui-tab-ctn]#"+btn).addClass("active");
			$("[data-ui-tab-ctn][data-ui-tab-val='"+btn+"']").addClass("active");
		}
	},
	popLayer:{ // 레이어팝업
		init: function() {
			var _this = this;
			$(document).on("click", ".popLayer:not(.win) .btnPopClose:not(.none)", function(e) {
        e.preventDefault();
				var id = $(this).closest(".popLayer").attr("id");
				alert("안녕");
				_this.close(id);
				setTimeout(function(){
					if($('.logmain .header') && $('.logmain .header').css("pointer-events") == 'none') {
						$('.logmain .header').css("pointer-events","auto");
					}
					if($('.container.page.logmain') && $('.container.page.logmain').css("pointer-events") == 'none') {
						$('.container.page.logmain').css("pointer-events","auto");
					}
				}, 150);
			});
			
			$(document).on("touchend", ".popLayer:not(.win) .btnPopClose:not(.none)", function(e) {
				if( $(".pc_popSize_500").length) {
          e.preventDefault();
					var id = $(this).closest(".popLayer").attr("id");
					_this.close(id);
					setTimeout(function(){
						if($('.logmain .header') && $('.logmain .header').css("pointer-events") == 'none') {
							$('.logmain .header').css("pointer-events","auto");
						}
						if($('.container.page.logmain') && $('.container.page.logmain').css("pointer-events") == 'none') {
							$('.container.page.logmain').css("pointer-events","auto");
						}
					}, 150);
				}
			});

			$(document).on("click", ".popLayer", function(e) {
				var id = $(this).closest(".popLayer").attr("id");
				if ( $(e.target).is(".popLayer") && !$(this).is(".noClickClose")) {
					// _this.close(id);
				}
			});
			
			//필터 팝업시 바디 고정 - APETQA-7583
      /*
			$(document).on("click", ".filt", function() {
				$("html, body").addClass("bfix");
			});
      */
			
			_this.resize();
			$(window).on("load resize",function(){
				_this.resize();
			});
			// 레이어팝업내에서 입력시 스크롤 조정
			// var elsInput =  ".popLayer:visible .input input ,"+
			// 				".popLayer:visible .textarea textarea";
			// $(document).on("click focus", elsInput  , function(e) {
			// 	var els = $(this).closest(".input , .textarea") ;
			// 	var id = $(this).closest(".popLayer").attr("id");
			// 	window.setTimeout(function(){
			// 		var myTop = els.offset().top + $("#"+id+" .pct").scrollTop() - $(window).scrollTop() - $("#"+id+">.pbd").position().top  ;
			// 		var myMax = $("#"+id+" .poptents").outerHeight() * 0.5  ;
			// 		var phdH = $("#"+id+" .phd:visible").outerHeight() + 20 || 0 ;
			// 		$("#"+id+" .pct").scrollTop(myTop - phdH);
			// 		if ( myTop >= myMax ) {
			// 		}
			// 		_this.resize();
			// 	},600);
			// });


		},
		callbacks:{},
		open: function(id,params) {
			var _this = this;
			if ( $("#" + id).length  <= 0  ) return ;   // id 호출팝업이 없으면 리턴

			_this.opt = $.extend({
				ocb: null ,
				ccb: null,
				zIndex: "",
			}, params);

			_this.callbacks[id] = {} ;
			_this.callbacks[id].open  = _this.opt.ocb ? _this.opt.ocb : null ;
			_this.callbacks[id].close = _this.opt.ccb ? _this.opt.ccb : null ;

			if( !$("#" + id).is(".noLock") ){ ui.scrollLock(true); }
			
			//이미지보기 팝업시 lock 사용 안함 - APETQA-7190 211104 lju02
			if( $(".popLayer").hasClass("at") == true ){
				if ( ui.isMo() ){	//mo 체크
					ui.scrollLock(false);
				}
			}
			
			//pc배송정보보기 팝업시 lock 사용 안함 - APETQA-7775 220209 lju02
			if( $(".popBot").hasClass("popDelInfo") == true ){
				if ( ui.isMo() ){	//mo 체크
				} else {
					ui.scrollLock(false);
				}
			}

			$("body").addClass("isPopLayer "+ "is_"+id);

			$("#" + id).css({ zIndex: _this.opt.zIndex });
			$("#" + id).fadeIn(100,function(){
				if(_this.callbacks[id].open)  _this.callbacks[id].open();
				$(this).addClass("on").attr("tabindex","0").focus();
				_this.resize();
			});
			
			window.setTimeout(function(){
				_this.resize();
			});

		},
		close: function(id,params) {
			var _this = this;
			_this.closOpt = $.extend({
				ccb: null,
			}, params);

			$("#"+id).removeClass("on").fadeOut(0,function(){
				_this.resize();
				// if( typeof _this.callbacks[id].close == "function" ){ _this.callbacks[id].close(); }
				try{ _this.callbacks[id].close(); }catch(error){}
				// if( typeof _this.closOpt.ccb == "function") { _this.closOpt.ccb(); }
				try{ _this.closOpt.ccb(); }catch(error){}

				if( !$(".popLayer:visible").length ){ 
					ui.scrollLock(false);
					$("body").removeClass("isPopLayer").removeClass("is_"+id);
          /*
					$("html, body").removeClass("bfix");	//필터 팝업시 바디 고정 해제 - APETQA-7583
          */
				}
				
				//(이벤트팝업 노출시 닫기버튼누르면 앱팝업의 lock까지 풀어지는 현상 잡음) APETQA-6721 2021.09.29 수정함 start
        /*
				if( !$(".popEventLayer.on").length ){ 
					if( $(".commentBoxAp.app.logpet.up.ton").length){
						ui.scrollLock(true);
					} else if($(".commentBoxAp.bodylock").length){
						//[CSR-2580] PET TV 연관상품 노출 개선
						ui.scrollLock(true);
					}
				}
        */
				//APETQA-6721 2021.09.29 end
				
				setTimeout(function(){
					if($('.logmain .header') && $('.logmain .header').css("pointer-events") == 'none') {
						$('.logmain .header').css("pointer-events","auto");
					}
					if($('.container.page.logmain') && $('.container.page.logmain').css("pointer-events") == 'none') {
						$('.container.page.logmain').css("pointer-events","auto");
					}
				}, 150);
				
			}).css({"z-index":""});
			
		},
		resize:function(){
 			$(".popLayer:not(.win):visible").each(function(){
				 var $pop = $(this);
				 var pctnH =  $pop.outerHeight();
				 var pbtnH =  $pop.find(".pbt:visible").outerHeight() || 0 ;
				 var h = $pop.find(".pct").attr("data-h");
				pctnH = pctnH - ( $pop.find(".phd").outerHeight() || 0 );
				if( ui.check_brw.pc() && $pop.is(".dn") ){ 
					$pop.find(".pct").css({"height":h, "max-height": pctnH - 70 });
				}else if( $pop.is(".a") ){
					$pop.find(".pct").css({"height": pctnH - pbtnH  });
				}
				if ( $pop.is(".popRequest") ){
					$pop.find(".pct").css({"height": ""});
				}
				if( $pop.is(".b") ){ $pop.find(".pct").css({"max-height": pctnH - 70 });}
				if( $pop.is(".c") ){ $pop.find(".pct").css({"max-height": pctnH - 70 });}
			 });
		},
		scroll:{}
	},
	popSelect:{ // 셀렉트 메뉴 팝업
		init:function(){
			this.evt();
			this.set();
		},
		evt:function(){
			var _this = this;

			// $(document).on("click", ".pop-select", function(e) {
			// 	$(this).find(".btnPopSelClose").trigger("click");
			// }).on("click", ".pop-select>.pbd", function(e) {
			// 	e.stopPropagation();
			// });


			$(document).on("click",function(e) {
				_this.close();
				if ( !$(e.target).closest(".pop-select") ) {
				}
			}).on("click", ".pop-select>.pbd , .select-pop .btSel", function(e) {
				e.stopPropagation();
			});

			$(document).on("click",".select-pop .btSel:not(.open)",function(){
				var $pop = $(this).closest(".select-pop");
				var name = $pop.find(".sList").attr("name");
				var tit =  $pop.find(".sList").data("select-title") || "옵션선택";
				var sel =  $pop.find(".sList").val();
				var list = [];
				$pop.find(".sList option").each(function(){
					list.push( { v:$(this).val() ,t:$(this).text() } );
				});
				_this.open(name,tit,list,sel);
				$(".uisort").removeClass("open");
			});

			$(document).on("click",".pop-select .list>li button",function(e){
				var sel = $(this).attr("value");
				var txt = $(this).text();
				var name =  $(this).closest(".pop-select").data("select-pop");
				$("select[name='"+name+"']>option[value='"+sel+"']").prop("selected",true);
				$("select[name='"+name+"']").val(sel).prop("selected",true);
				$("select[name='"+name+"']").closest(".select-pop").find(".btSel").text(txt) ;
				$("select[name='"+name+"']").trigger("change");
				_this.close();
			});

			$(document).on("click",".pop-select .btnPopSelClose",function(){
				_this.close();
			});
		},
		set:function(){
			$(".select-pop").each(function(){
				if( !$(this).find(".btSel").length ) {
					$(this).prepend('<button class="btSel" type="button"></button>');
				}
				if( !$(this).is(".set").length ) {
					$(this).addClass("set");
				}
				var $btSel = $(this).find(".btSel");
				var tit = $(this).find(".sList").data("select-title") || "옵션선택";
				var txt = $(this).find(".sList option:selected").text() || tit;
				var dis = $(this).find(".sList").prop("disabled");
				var list = [];
				$(this).find(".sList option").each(function(){
					list.push( { v:$(this).val() ,t:$(this).text() } );
				});
				$btSel.text(txt);
				if( dis==true ) {
					$btSel.prop("disabled",true);
				}else{
					$btSel.prop("disabled",false);
				}
			});
		},

		// 2021.05.06 수정함 start
		open:function(name,tit,list,sel){
			$(".pop-select.on").remove();
			if ( $(".pop-select:visible").length ) { return; }
			var blist="";
			for(var i in list) {
				blist += '<li><button type="button" value="'+list[i].v+'">'+list[i].t+'</button></li>';
			}
			var lyPop =
			'<article class="pop-select popNoDim" data-select-pop="'+name+'">' +
			'	<div class="pbd">' +
			'		<div class="phd"><h3 class="tit">'+tit+'</h3></div>' +
			'		<button type="button" class="btnPopSelClose">닫기</button>' +
			'		<div class="pct">' +
			'			<main class="poptents">' +
			'				<ul class="list">'+blist+'</ul>' +
			'			</main>' +
			'		</div>' +
			'	</div>' +
			'</article>';
			$(".pop-select .pct").removeAttr("style");	// APETQA-6712 210824 lju02 - 전체 팝업내에서 호출 할때 팝업 높이값 적용 오류 제거
			$("[name='"+name+"']").closest(".select-pop").after(lyPop);
			$("[name='"+name+"']").closest(".select-pop").find(".btSel").addClass("open");
			$(".cusDim").addClass('dimOn');

			$(".pop-select").fadeIn(100,function(){	
				$(this).addClass("on").attr("tabindex","0").focus();
				$("[data-select-pop='"+name+"'] .list button[value='"+sel+"']").addClass("active");
				
				//APETQA-6150 주석처리함 2021.07.21 수정 start
				if( ui.isMo() ){
					ui.scrollLock(true); //APETQA-5916 2021.06.28 추가함
				}
				//APETQA-6150 주석처리함 2021.07.21 수정 start
			});
			// ui.scrollLock(true);
			$("body").addClass("isPopSelect");

			//APETQA-4924 2021.07.28 수정함
			if($(".uireviews .revalls .selopts .pop-select:visible").length){
				$(".floatNav").css("display","none");
			}
			
			$(".isPc .uireviews .revalls .selopts").css("z-index","50");//APETQA-7637 211209 LSY
		},
		close:function(){
			var id = $(".pop-select:visible").data("select-pop");
			$(".pop-select").removeClass("on").fadeOut(100,function(){
				$(this).remove();
				ui.scrollLock(false);
				$(".cusDim").removeClass('dimOn');
			});    
			$("select[name="+id+"]").closest(".select-pop").find(".btSel").attr("tabindex","0").focus().removeClass("open");
			$("body").removeClass("isPopSelect");
			$(".floatNav").css("display","block");//APETQA-4924 2021.07.28 수정함
			
			$(".isPc .uireviews .revalls .selopts").css("z-index","30");//APETQA-7637 211209 LSY
		}
	},
	// 2021.05.06 수정함 end

	popBot:{ // 바닥에서 올라오는 팝업
		init:function(){
			var _this = this;
      $(document).off("click", ".popBot:not(.win) .btnPopClose");
			$(document).on("click", ".popBot:not(.win) .btnPopClose", function() {
				var id = $(this).closest(".popBot").attr("id");
				_this.close(id);
			});
      $(document).off("click", ".popBot");
			$(document).on("click", ".popBot", function(e) {
				var id = $(this).closest(".popBot").attr("id");
				if ( $(e.target).is(".popBot")  && !$(this).is(".noClickClose") ) {
					_this.close(id);
				}
			});
			$(window).on("load resize",function(){
				_this.resize();
			});

		},
		callbacks:{},
		open: function(id,params) {
			var _this = this;
      const _target = $('#' + id);

			if ( $("#" + id).length  <= 0  ) return ;   // id 호출팝업이 없으면 리턴
			_this.opt = $.extend({
				ocb: null,
				ccb: null,
				zIndex: "",
				pop: false
			}, params);
      if (_this.opt.ccb != null && typeof _this.opt.ccb == 'function') {
        _target.data('ccb', _this.opt.ccb);
      }
			_this.callbacks[id] = {} ;
			_this.callbacks[id].open = _this.opt.ocb ? _this.opt.ocb() : null;

			if (ui.isMo()) {
				ui.scrollLock(true);
			}
      if (_this.opt.zIndex != '') {
        _target.css({ zIndex: _this.opt.zIndex });
      }
			/* 번쩍거림 때문에 삭제 */
			if(ui.check_brw.mo() || (_this.opt.pop && ui.check_brw.pc())){
				_target.fadeIn(100,function(){
					if(_this.callbacks[id].open)  _this.callbacks[id].open();
					$(this).addClass("on").attr("tabindex","0").focus();
					$("body").addClass("isPopBot "+ "is_"+id);
				});
			}
			
			window.setTimeout(function(){
				_this.resize();
			});

		},
		close: function(id,params) {
			var _this = this;
      const _target = $('#' + id);
			_this.closOpt = $.extend({
				ccb: null,
			}, params);
      if (_this.closOpt.ccb == null) { _this.closOpt.ccb = _target.data('ccb'); }

			$("#"+id).removeClass("on").fadeOut(150,function(){
				_this.resize();
				// if( typeof _this.callbacks[id].close == "function" ){ _this.callbacks[id].close(); }
				try{ _this.callbacks[id].close(); }catch(error){}
        if (typeof _this.closOpt.ccb == 'function') {
          try { _this.closOpt.ccb(); } catch (error) {}
        }

				if( !$(".popBot:visible").length ){ 
					ui.scrollLock(false);
					$("body").removeClass("isPopBot");
				}
				$("body").removeClass("is_"+id);
			}).css({"z-index":""});
			$("#"+id).find(".pct").removeAttr("style");	/* APETQA-5913 210630 lju02 - 바텀시트 닫을때 들고 있던 높이값 지우기 */ 
		},
		resize:function(){
			$(".popBot:visible").each(function(){
				if( typeof window.visualViewport != "undefined" ) {
					var maxht = window.visualViewport.height - 130 ;
					$(this).find(".pct").css({"max-height":maxht+"px"});
				}
			});
		}
	},

	// ↓↓↓↓↓↓↓ 여기서 부터 김강민 차장 ↓↓↓↓↓↓↓↓↓↓


	tab2: function(el){
		var $this = $(el);
		var ind = $this.index();
		var $con = $this.parents(".tabWrap").find(".con > ul");
		$this.addClass("active").siblings().removeClass("active");
		$con.css({left:(ind * -100)+"%"});	
	},
	selAc: {
		open: function(el){
			var $box = $(el);
			$box.removeAttr("style");
			var h = $box.innerHeight();
			var max = (window.innerHeight - 10) - $box.children(".head").height();
			if(h >= max){
				$box.removeClass("ton").css({height:h+"px"});
			}
			$box.removeClass("ton").css({"bottom":"-"+h+"px"});
			$box.addClass("ton").css("bottom","0px");
			if(ui.check_brw.mo()) ui.dim.set();
		},
		liClick:function(el){
			var $this = $(el);
			var $input = $(el).parents(".acSelect").find(".acSelInput");
			var val = $this.text();
			$this.addClass("active").siblings().removeClass("active");
			$input.val(val);
			this.close(el);
		},
		close:function(el){
			var $box = $(el).parents(".acSelect");
			$box.addClass("ton");
			var h = $box.innerHeight();
			$box.css("bottom","-100%");
			if(ui.check_brw.mo()) ui.dim.close();
		},
	},
	commentBox: {
		open: function(el){
			openInit(el);
			$(window).off("resizeInit").resize(function(){
				resizeInit(el)
			});
			function resizeInit(el){
				var $box = $(el);
				var $hand = $box.find(".head");
				var $wrap = $hand.closest(".commentBoxAp");
				setMinMax($box);
				//$wrap.removeClass("up").css({height:$hand.data("min-price")+"%"});    //21.06.16 APETQA-5819 lcm01
			}
			function openInit(el){
//				if($(el).length) return;
				var $box = $(el);
				var $hand = $box.find(".head");
				var $textarea = $box.find(".input > textarea");
				var $v = $(".videoAndListWrap > .video-area");
				var top = ""
				var autoOpen = ($(el).attr("data-autoOpen") !== undefined)?$(el).attr("data-autoOpen"):false;
				var check_mo = ui.check_brw.mo();
				var h = ($(el).data("priceh") !== undefined)?$(el).data("priceh"):"90%";
				var closePrice = ($(el).data("close") !== undefined)?$(el).data("close"):false;
				var autoCloseUp = ($(el).attr("data-autoCloseUp") !== undefined)?$(el).attr("data-autoCloseUp"):false;
				var max = (window.innerHeight - 10) / (window.innerHeight * 0.01);
				var checkOpen = ($box.hasClass("open") === false)?true:false;
				var only = ($box.attr("data-only") !== undefined)?$box.attr("data-only"):false;
/*
				if(!autoOpen && ui.check_brw.mo()){
					ui.dim.set();
					ui.scrollLock(true);
				}
*/				
				if(only){
					$(".commentBoxAp").removeClass("open").css("bottom","-100%");
					$(".commentBoxAp").remove();
				}
				setMinMax($box);
				$hand.off("touchstart");
				$hand.off("touchmove");
				$hand.off("touchend");
				$hand.off("mousedown");
				if(String(h).indexOf("px") > -1){
					var n = h.replace(/px/g,'');
					h =  (n / (window.innerHeight * 0.01));
					if(h >= max) h = max;
					h +="%";
				}
				if(String(h).indexOf("%") > -1){
					h = h.replace(/\%/g,'');
					if(h >= max) h = max;
					h +="%";
				}
				if(!autoOpen) $box.addClass("open");
//				$box.trigger("popCloseEvent");
				if($box.closest(".lcbWebRconBox")){
//					$(".lcbWebRconBox").css("z-index",1);
//					$box.closest(".lcbWebRconBox").css("z-index",101);
				}
				if($v.length){
					var horizontal = window.matchMedia('(orientation: landscape)').matches;
					$(".top-area, .pageHead").hide();
					$(".video-area").height($(".video-area .video-palyer").innerHeight());
					var $video = ($(".video-area .video-palyer .video > div").length)?$(".video-area .video-palyer .video > div"):$v;
					top = "-" + $video.offset().top + 'px';
					h = (100 - $video.height() / ($(window).height() * 0.01)) + "%";
					if(horizontal) h = "85%";
					$(".videoAndListWrap").css("top",top);
				}
				/* APETQA-4809 210623 lju02 시작 */
				var winH = $(window).height();
				// var pageH = ($(".paging-wrap:visible").offset().top);/* APETQA-4809 210623 lju02 긴급배포 */
				var pageH = 0;
				if($(".paging-wrap:visible").length > 0){
					pageH = ($(".paging-wrap:visible").offset().top);/* APETQA-4809 210623 lju02 긴급배포 */
				}
				var vedeoCommH = winH - pageH;
				var agent = navigator.userAgent.toLowerCase(); // 디바이스 정보 체크
				if(checkOpen) $box.removeClass("ton").css({"bottom":"-100%","height":h});
				if(agent.indexOf('sm-f916n')>-1){ //폴드2일때
					if(checkOpen) $box.removeClass("ton").css({"bottom":"-100%","height":vedeoCommH});
				}/* APETQA-4809 210623 lju02 긴급배포 */
				$box.addClass("ton").css("bottom","0");
				/* APETQA-4809 210623 lju02 끝 */
				/*
				if($box.find(".uiTab_content").length > 0){
					setTimeout(function(){
						let f = ($("#contents .pbt.fixed:last-child, .menubar > .inr").length)?$("#contents .pbt.fixed:last-child, .menubar > .inr").innerHeight():0;
						let h = "calc(100% - "+(f+58)+"px)";
						$box.children().eq(1).css({"height":h}) ;
					},500);
				}
				*/
				$hand.bind("touchstart",function(e){
					s(e,$(this));
				}).bind("touchmove",function(e){
					m(e,$(this));
				}).bind("touchend",function(e){
					ee(e,$(this));
				}).bind("mousedown",function(e){
					var $that = $(this);
					var eb = ($(this).closest(".commentBoxAp").attr("data-bubble") !== undefined)?$(this).closest(".commentBoxAp").attr("data-bubble"):false;
					s(e,$(this));
					$(window).bind("mousemove",function(e){
						m(e,$that);
					});
					$(window).bind("mouseup",function(e){
						ee(e,$that);
						$(window).off("mousemove");
						$(window).off("mouseup");
					});
				}).bind("click",function(e){
					e.stopPropagation();
				});
				if($textarea.length){
					$textarea.focus(function(){
						$(this).closest(".con").addClass("focusReheight");
						if ($(this).closest(".tvcommentBox").style !== undefined) {
							$(this).closest(".tvcommentBox").style("top","0");
						}
					}).blur(function(){
						$(this).closest(".con").removeClass("focusReheight");
					});
				}
				function s(e,el){
					var y = (e.pageY !== undefined)?e.pageY:e.originalEvent.touches[0].screenY;
					var ph = (el.closest(".commentBoxAp").height() / ($(window).height() * 0.01));
					el.data({"data-h":ph,"data-sy":y});
				}
				function m(e,el){
					e.stopPropagation();
					e.preventDefault();
					var y = (e.pageY !== undefined)?e.pageY:e.originalEvent.touches[0].screenY;
					var diff = el.data("data-sy") - y;
					var wih = window.innerHeight;
					var wsh = window.screen.availHeight;
					var sh = window.screen.height;
					var hDiff = ((wsh - wih) == 63)?63:0;
					var p = (diff - hDiff) / ($(window).height() * 0.01);
					var ah = (el.data("data-h") + p);
					if(ah >= el.data("max-price")) ah = el.data("max-price");
					if(ah <= el.data("min-price")) ah = el.data("min-price");
					el.closest(".commentBoxAp").stop().height(ah + "%");
					el.data("ah",ah);
				}
				function ee(e,el){
					var ev = e.originalEvent;
					var ph = el.closest(".commentBoxAp").height();
					var $wrap = el.closest(".commentBoxAp");
					//[CSR-2580] PET TV 연관상품 노출 개선
					// if(!$wrap.hasClass('bodylock')) ui.scrollLock(false);
					if(ph <= 180){
						$(".top-area, .pageHead").show();
						$(".pageHead").css("position", "relative");
						$(".videoAndListWrap").css("top",0);
						$wrap.trigger("popCloseEvent");
/*						
						if(!autoOpen && ui.check_brw.mo()){
							ui.dim.close();
							ui.scrollLock(false);
						}
*/						
						if(!closePrice){
							$wrap.addClass("ton");
							$wrap.css("bottom","-100%");
							//라이브 채팅 상품보기 바텀시스 내릴시 객체 삭제 - APETQA-6340 211026 LSY
							if($(".popconTingBox").length > 0){
								$(".popconTingBox").remove();
								
								// 라이브 방송인 경우 
								if ( location.pathname.indexOf("/shop/indexLive") > -1 ) {

									// 라이브 화면일때 SGR측 바텀시트 닫기 콜백함수 실행
									sgrBottomSheetClosedCallback();

									// 바텀시트 제거
									fnHandHeadCloseLive(this);
								} else if(document.location.href.indexOf("/tv/series/indexTvDetail") > -1) {
									var newUrl = "/tv/series/indexTvDetail?vdId="+ nowVdId +"&sortCd="+ sortCd +"&listGb=HOME" + remainderQueryString;
									history.replaceState("", "", newUrl);
									storageHist.replaceHist(newUrl);
								}
							}
						}
						$wrap.removeClass("open");
						document.activeElement.blur(); //채팅입력시 바텀시트 내리면 입력창 포커스 아웃 - 21.10.21 APETQA-6668 LSY
//						if($(".commentBoxAp.open").length == 0) ui.scrollLock(false);
						$(".top-area, .pageHead").show();
						if($(".video-area").length) $(".video-area").removeAttr("style");
						//[CSR-2580] PET TV 연관상품 노출 개선 -> APET-1549 테스트 오류로 원복
						if($wrap.hasClass('bodylock')) ui.scrollLock(false);
					}
					if(autoCloseUp && closePrice !== false){
						var diff = el.data("data-h") - el.data("ah");
						// var $wrap = el.parents(".commentBoxAp");
						if(diff >= 5){
							$wrap.removeClass("up open").stop().animate({height:el.data("min-price")+"%"},300);
							$wrap.trigger("popEnd");
							$wrap.trigger("popEndClose");
//							if($(".commentBoxAp.open").length == 0) ui.scrollLock(false);
						}else if(el.data("ah") !== undefined){
							$wrap.addClass("up open").stop().animate({height:el.data("max-price")+"%"},300);
							$wrap.trigger("popEnd");
							$wrap.trigger("popEndOpen");
//							if(check_mo) ui.scrollLock(true);
						}
					}
					el.removeData("data-h");
					el.removeData("ah");
				}
			}
			function setMinMax(el){
				var $hand = el.find(".head");
				var max = (el.data("max") !== undefined)?el.data("max"):(window.innerHeight - 10) / (window.innerHeight * 0.01);
				var min = (el.data("min") !== undefined)?el.data("min"):false;
				var n ;
				if(String(min).indexOf("px") > -1){
					n = min.replace(/px/g,'');
					min =  n / (window.innerHeight * 0.01);
				}
				if(String(max).indexOf("px") > -1){
					n = max.replace(/px/g,'');
					max =  Number(n) / (window.innerHeight * 0.01);
				}
				$hand.data({"min-price":min,"max-price":max});
			}
		},
		close:function(el,event){
			var $box = $(el).closest(".commentBoxAp");
			$box.trigger("closeBtClickEvent");
			var check = ($(el).attr("disabled") !== undefined)?true:false;
			var $v = $(".videoAndListWrap > .video-area");
			var autoOpen = ($(el).attr("data-autoOpen") !== undefined)?$(el).attr("data-autoOpen"):false;
			if(event !== undefined) event.stopPropagation();
			$(".top-area, .pageHead").show();
			$(".videoAndListWrap").css("top",0);
			$box.addClass("ton");
			$box.css("bottom","-100%");
			$box.removeClass("open");
			ui.scrollLock(false);
//			if($(".commentBoxAp.open").length == 0) ui.scrollLock(false);
			$box.closest(".lcbWebRconBox").css("z-index",1);
			if($v.length) $(".video-area").removeAttr("style");
/*			
			if(!autoOpen && ui.check_brw.mo()){
				ui.dim.close();
				ui.scrollLock(false);
			}
*/			
		},
	},
	addInputDel : {
		init : function(){
			var $el = $(".commentBoxAp > .con > .input > input, .commentBoxAp > .con > .input > textarea");
			var that = this;
			$el.each(function(i,n){
				that.createAddSource($(n));
			});
		},
		createAddSource : function(el){
			var $this = $(el);
			var $btn = $this.parent().find("button");
			if($btn.length != 1) return;
			$btn.addClass("ac").wrap("<div class='btn_wrap'></div>").parent().prepend("<button class='del'>close</button>");
			checkDel($this);
			$this.closest(".input").find(".btn_wrap > .del").click(function(e){
				var $input = $(this).closest(".input").find("textarea");
				$input.val("");
				checkDel($input);
				auto_h(e);
				$(el).closest(".commentBoxAp").find(".tagList").hide();
			});
			$this.closest(".input").find(".btn_wrap > .ac").click(function(e){
				var $input = $(this).closest(".input").find("textarea");
				//$input.val(""); // 21.10.28 APETQA-7242 LSY 삭제함
				checkDel($input);
				auto_h(e);
				$(el).closest(".commentBoxAp").find(".tagList").hide();
			});
			$this.bind("keydown keyup blur paste",function(e){
				checkDel($(this));
				auto_h(e);
			});
			function checkDel(el){
				setTimeout(function(){
					var $this = $(el);
					var css = ($this.val().length > 0)?"block":"none";
					var $del = $(el).closest(".commentBoxAp").find(".input > .btn_wrap > .del");
					var pl = ($this.parent().find(".btn_wrap").width() > 100)?100:$this.parent().find(".btn_wrap").width();
					if(pl > 100) pl = 100;
					$this.css("padding-right",pl);
					$del.css("display",css);
				},50);
			}
			function auto_h(e){			// textarea 제어
				var $target = (e.target.tagName.toLowerCase() == "button")?$(e.target).closest(".input").find("textarea"):$(e.target);
				var key = e.keyCode;
				var time = (String(e.type).toLowerCase() == "blur")?100:0;
				var check_mo = ($("link[href *= 'style.mo.css']").length > 0)?true:false;
				var check_type1 = ($(e.target).closest(".commentBoxAp.type01").length > 0)?true:false;
				setTimeout(function(){
					var style = String($target.attr("style")).replace(/height ?\: ?\d+\w+\;/g,'');
					var $fixedBox = ($target.closest(".commentBoxAp").find(".fixed_box"))?$target.closest(".commentBoxAp").find(".fixed_box"):false;
					$target.attr("style",style);
					var pt = ($target.css("box-sizing") == "border-box")?$target.css("padding-top").replace(/\D/g,''):0;
					var pb = ($target.css("box-sizing") == "border-box")?$target.css("padding-bottom").replace(/\D/g,''):0;
					var h = $target.prop("scrollHeight") -  pt - pb;
					$target.height(h);
					var $box = $target.closest(".commentBoxAp").find(".con > .box");
					var variable_price = ($("link[href *= 'style.mo.css']").length)?0:2;
					var calcH = "calc(100% - "+(variable_price + $target.closest(".commentBoxAp").find(".con > .input").innerHeight())+"px)";
					var fixedBox_bottom = (2 + $target.closest(".commentBoxAp").find(".con > .input").innerHeight()); /* '4 +' -> '2 +' 로 변경 APETQA-6183 2021.08.06 수정함 */
					var varH = 5/*($(".menubar > .inr").length > 0)?($(".menubar > .inr").innerHeight() + 3):0*/;
					if(check_mo){
						calcH = "calc(100% - "+(varH + $target.closest(".commentBoxAp").find(".con > .input").innerHeight())+"px)";
						fixedBox_bottom = (varH + $target.closest(".commentBoxAp").find(".con > .input").innerHeight()) - 4;
					}
					$box.css("height",calcH);
					if((check_mo === false) && check_type1){
						var inputH = $target.closest(".commentBoxAp").find(".con > .input").innerHeight() + 2;
						//$target.closest(".commentBoxAp").find(".con > .box").css("padding-top",inputH);	// APETQA-6609 210810 lju02
					}
					if($fixedBox.length && check_type1 && !check_mo){
						// APETQA-6605 210809 lju02 - 이것도 화면 그려지는 속도 문제... 
						setTimeout(function() {	
							$fixedBox.css({"bottom":"auto",top:($fixedBox.innerHeight() * -1) + "px"});
						}, 300);
					}else if($fixedBox){
						$fixedBox.css("bottom",fixedBox_bottom);
					}
					if($target.val().length > 0){	// 태그 입력시 다음 객체에 active 클래스명 추가
						$target.next().addClass("active3");// 21.07.06 CSR-834 lcm01 수정
					}else{
						$target.next().removeClass("active3");// 21.06.24 CSR-834 lcm01 수정
					}
				},time);
			}
		}
	},
	popSel: {
		open: function(e,event){
			if(event !== undefined) event.stopPropagation();
			var leftMax = $(e).offset().left + $(e).find(".popSelInnerWrap > ul").width() + 2;
			var bottomMax = $(e).offset().top + $(e).find(".popSelInnerWrap > ul").height() + 2;
			var w = $("#container > .inr").width() ? $("#container > .inr").width() : $("#container").width();
			var h = $("#container").height() + $("#container").offset().top - 80;
			var comF = $(".commendListBox ul li").first();	//펫티비,이벤트 댓글 첫번째 댓글 제어용 - APETQA-6609 210810 lju02
			$(".popSelInnerWrap").not($(e).find(".popSelInnerWrap")).each(function(i,n){
				var check = $(n).parents(".popSelect").hasClass("up");
				$(n).stop().css({height:0});
				if(check) $(n).parents(".popSelect").stop().css({top:0});
			});
			if(h <= bottomMax){
				$(e).find(".popSelect").not($(e).find(".popSelect")).css({top:0});
			}
			if($(e).find(".popSelInnerWrap").height() > 0){
				$(e).find(".popSelInnerWrap").css({height:0});
				if($(e).find(".popSelect.up").length){
					$(e).find(".popSelect.up").css({"top":0});
				}
			}else{
				if(leftMax >= w){
					$(e).find(".popSelect").addClass("r").removeClass("l");
				}else{
					$(e).find(".popSelect").addClass("l").removeClass("r");
				}
				var price = $(e).find(".popSelInnerWrap > ul").innerHeight() + 2;
				$(e).find(".popSelInnerWrap").css({height:price});
				if(h <= bottomMax){
					$(e).find(".popSelect").addClass("up").css({top:price * -1});
				}else{
					$(e).find(".popSelect").removeClass("up");
				}
				if (comF){	//펫티비,이벤트 댓글 첫번째 댓글 일때 - APETQA-6609 210810 lju02
					$(e).find(".popSelect").removeClass("up").removeAttr("style");
				}
			}
			$(e).find(".popSelInnerWrap > ul > li").off("click").click(function(e){
				var val = $(this).text();
				$(this).addClass("active").siblings().removeClass("active");
				$(this).parents(".popSelInnerWrap").val(val);
			});
		},
		closeAll: function(){
			var $el = $(".popSelInnerWrap");
			$el.css({height:0});
			if($(".popSelect.up").length){
				$(".popSelect.up").css({"top":0});
			}
		}
	},
	toggleClassOn: {
		init : function(){
			this.on();
		},
		on : function(){
			var $el = $(".lcbPicture > .logBtnBasic28");
			this.tgClass($el,"on");
			var $el2 = $('.filter-item .tag button');
			this.tgClass(".filter-item .tag button","active");
		},
		tgClass : function(el,css){
			var $el = $(el);
			if($el.length){
				$el.not(".none_click").click(function(e){
					e.stopPropagation();
					e.preventDefault();
					$(this).toggleClass(css);
				});
			}
		},
		siClass : function(el,css){
			var $el = $(el);
			if($el.length){
				$el.click(function(e){
					$(el).removeClass(css);
					e.stopPropagation();
					$(this).toggleClass(css);
				});
			}
		}
	},
	dragPopAc: {
		init : function(){
			var $el = $(".popup-layer.typeB");
			if($el.length) this.drag($el);
		},
		drag : function($el){
			var w = window.innerWidth;
			$el.each(function(i,n){
				var $h = $(n).find(".top");
				$h.bind("touchstart",function(e){
					s(e,$(this));
				}).bind("touchmove",function(e){
					m(e,$(this));
				}).bind("touchend",function(e){
					ee(e,$(this));
				}).bind("mousedown",function(e){
					var w = window.innerWidth;
					if(w <= 1023){
						var that = $(this);
						s(e,that);
						$(window).mousemove(function(e){
							m(e,that);
						});
						$(window).mouseup(function(e){
							ee(e,that);
							$(window).off("mousemove");
							$(window).off("mouseup");
						});
					}
				});
				function s(e,t){
					var y = (e.pageY !== undefined)?e.pageY:e.originalEvent.touches[0].screenY;
					var h = Number(t.parents(".popup-layer").css("height").replace(/px/g,'')) / (window.innerHeight * 0.01);
					t.data("p",h);
					t.data("sy",y);
				}
				function m(e,t){
					e.stopPropagation();
					e.preventDefault();
					var my = (e.pageY !== undefined)?e.pageY:e.originalEvent.touches[0].screenY;
					var y = ((t.data("sy") - my) / (window.innerHeight * 0.01)) + t.data("p");
					var b = t.parents(".popup-layer").css("bottom").replace(/px/g,'');
					var max = (window.innerHeight - 10 - b) / (window.innerHeight * 0.01);
					if(y >= max){
						y = max;
					}else if(y <= 15){
						y = 15;
					}
					t.data("price",y).parents(".popup-layer").css("height",y+"%");
				}
				function ee(e,t){
					if(t.data("price") <= 15){
						t.parents(".popup-layer").hide();
					}
				}
			});
		}
	},
	countBoxInput : {
		init:function(){
			this.evt();
			this.set();
		},
		evt:function(){
			var _this = this;
			$(document).on("click",".uispiner .bt",function(){
				var els = $(this).closest(".uispiner");
				var n = els.find(".amt");
				var nv = parseInt( els.find(".amt").val() );
				var bt = $(this);
				if( bt.hasClass("plus") ){
					n.val( nv + 1 ) ;
				}
				if( bt.hasClass("minus") ){
					n.val( nv - 1 ) ;
				}
				_this.set();
			});
		},
		set:function(){
			$(".uispiner").each(function(){
				var els = $(this).closest(".uispiner");
				var nv 	= els.find(".amt").val();
				var max = parseInt(  els.data("max") ) || 9999;
				var min = parseInt(  els.data("min") ) || 1;
				if( els.data("disabled") == true) {
					els.find(".bt , .amt").attr("disabled",true);
					return;
				}else{
					els.find(".bt , .amt").attr("disabled",false);
				}
				if( nv <= min ){
					els.find(".minus").attr("disabled",true);
				}
				if( nv > min ){
					els.find(".minus").attr("disabled",false);
				}
				if( nv >= max ){
					els.find(".plus").attr("disabled",true);
				}
				if( nv < max ){
					els.find(".plus").attr("disabled",false);
				}
				if( nv == 0 ){
					els.find(".minus").attr("disabled",true);
					els.find(".plus").attr("disabled",true);
				}
			});
		}
	},
	setAutoh : {
		init : function(){
			var $el = $(".setAutoh");
			if($el.length) innerInit($el);
			function innerInit($el){
				ac($el);
				$(window).resize(function(){
					ac($el);
				});
				function ac($el){
					var el = $el;
					var d = (Number(el.attr("data-dh")) + Number(el.offset().top) + Number(el.css("padding-top").replace(/px/g,'')) + Number(el.css("padding-bottom").replace(/px/g,'')));
					var h = window.innerHeight - d;
					el.height(h);
				}
			}
		}
	},
	tapTouchAc : {
		init : function(){
			var $el = ui.isMo() ? $(".petTabContent:not(.swiper-mode)") : $(".petTabContent");
			var $box = $(".tabTx");
			var that = this;
			if($el.length) innerInit();
			function innerInit(){
				$el.each(function(idx,n){
					var $box = $(n).find(".uiTab_content");
					var ccc = String($(n).closest(".petTabContent").attr("class")).replace(/(petTab)Content/g,'$1Header').split(" ");
					var txtClass = "";
					for(var i=0; i<ccc.length; i++){
						txtClass += "." + ccc[i];
					}
					var $tHad = ($(n).find(".uiTab").length > 0)?$(n).find(".uiTab"):$(txtClass).find(".uiTab");
					var ind = ($tHad.find("li.active").length > 0)?$tHad.find("li.active").index():0;
					var $nav = $tHad.children();
					var autoCheck = ($(n).hasClass("hmode_auto") && $("link[href *= 'style.mo.css']").length > 0)?true:false;
					$tHad.children().eq(ind).addClass("active").siblings().removeClass("active");
					$box.children().eq(0).children().eq(ind).addClass("active").siblings().removeClass("active");
					$box.children().eq(0).css("left",(ind * -100)+"%");
					if($(n).hasClass("hmode_auto") && $("link[href *= 'style.mo.css']").length > 0){
						setTimeout(function() {				// 화면 그려주는 순서 문제로 settimeout으로 묶어줌 - APETQA-5598 210806 lju02 
							let footer = ($("#footer").length)?$("#footer").innerHeight():0;
							let min = window.innerHeight - footer - $box.children().eq(0).offset().top;
							let setH = ($box.children().eq(0).children().eq(ind).innerHeight() >= min)?$box.children().eq(0).children().eq(ind).innerHeight():min;
							// APETQA-6764 wrap 높이값 100vh로 변경하면서 사라진 하단 패딩영역으로 ul 높이값 수정
							let menubar = ($(".menubar > .inr").length)?$(".menubar > .inr").outerHeight():0;	//
							let newSetH = setH - menubar;
							$box.children().eq(0).height(newSetH);		// 초기 .uiTab_content > ui 높이
						},500);
						
					}
					$box.bind("touchstart",function(e){
						if($tHad.data("bizyn") != 'Y'){/*펫로그 제휴업체는 로그탭 이외 클릭 방지*/
							s(e,$(this));
						}						
					}).bind("touchmove",function(e){
						if($tHad.data("bizyn") != 'Y'){/*펫로그 제휴업체는 로그탭 이외 클릭 방지*/
							m(e,$(this));
						}	
					}).bind("touchend",function(e){
						if($tHad.data("bizyn") != 'Y'){/*펫로그 제휴업체는 로그탭 이외 클릭 방지*/
							ee(e,$(this));
						}	
					}).bind("mousedown",function(e){
						var $that = $(this);
						/*
						s(e,$that);
						$(window).bind("mousemove",function(e){
							m(e,$that);
						});
						$(window).bind("mouseup",function(e){
							ee(e,$that);
							$(window).off("mousemove");
							$(window).off("mouseup");
						});
						*/
					});
					$nav.click(function(){
						var ccc = String($(this).closest(".petTabHeader").attr("class")).replace(/(petTab)Header/g,'$1Content').split(" ");
						var txtClass = "";
						for(var i=0; i<ccc.length; i++){
							txtClass += "." + ccc[i];
						}
						var $box = ($(this).closest(".petTabContent").find(".uiTab_content > ul").length > 0)?$(this).closest(".petTabContent").find(".uiTab_content > ul"):$(txtClass).find("ul");
						var n = $(this).index();
						/*펫로그 제휴업체는 로그탭 이외 클릭 방지*/
						if($tHad.data("bizyn") == 'Y' ){
							if(n == 1){
								$(this).addClass("active").siblings().removeClass("active");	
								that.tab_height($box);							
							}							
							return;
						}
						var check = ($("link[href *= 'style.mo.css']").length > 0)?true:false;
						var left = n * -100;
						if(check){
							$box.stop().animate({left:left+"%"},500);
						}else{
							$box.children().eq(n).addClass('active').siblings().removeClass('active');
						}
						$(this).addClass("active").siblings().removeClass("active");
						that.tab_height($box);
						/*
						if($("html,body").scrollTop() >= 56){
							$("html,body").scrollTop(56);
						}
						*/
						$(".mode_fixed, .hdr").removeClass("active");
					});
					
					/*//APETQA-6580,APETQA-6354 210820 lju02 브랜드더보기 클릭시 ui 높이값 재설정
					var $brdMr = ($(n).find(".bt.more").length > 0)?$(n).find(".bt.more"):$(txtClass).find(".bt.more");	//해당 태그가 있는지 체크, 혹시 모를 오류 예방.
					$brdMr.click(function(){
						setTimeout(function(){
							ui.tapTouchAc.tab_height($(".uiTab_content > ul"));
						},300);
					});*/	//브랜드 영역 삭제하면서 삭제
				});
				$box.each(function(i,n){
					that.tabTouchBreak($(n));
				});
			}
			function s(e,el){
				var x = (e.pageX !== undefined)?e.pageX:e.originalEvent.touches[0].screenX;
				var y = (e.pageY !== undefined)?e.pageY:e.originalEvent.touches[0].screenY;
				var $box = el.children(":eq(0)");
				var css = Number(String($box.css("left").replace(/px/g,''))) / (window.innerWidth * 0.01);
				var tab = ($(window).data("tab") !== undefined)?$(window).data("tab"):true;
				el.data("mode",null);
				el.data({"sx":x,"sy":y,"p":css,"tab":tab});
			}
			function m(e,el){
				if(!el.data("tab")) return;
				if(e.pageX !== undefined){
					/*
					e.stopPropagation();
					e.preventDefault();
					*/
				}
				var x = (e.pageX !== undefined)?e.pageX:e.originalEvent.touches[0].screenX;
				var y = (e.pageY !== undefined)?e.pageY:e.originalEvent.touches[0].screenY;
				if(Math.abs(el.data("sy") - y) >= 5 && el.data("mode") === null){
					el.data("mode",false);
				}else if(el.data("sx") !== x && el.data("mode") === null){
					el.data("mode",true);
				}
				$(el).trigger("tabMoveEvent");
				if(el.data("mode") === true){
					// 21.11.09 APETQA-5733 LSY 좌우스와이프 대각선막기
					e.stopPropagation();
					e.preventDefault();
					var $box = el.children(":eq(0)");
					var max = returnMax($box);
					var min = 0;
					var diff = (el.data("sx") - x) / (window.innerWidth * 0.01);
					var moveX = el.data("p") - diff;
					if(moveX <= max){
						moveX = max;
					}else if(moveX >= min){
						moveX = min;
					}
					$box.stop().css("left",moveX + "%");
					el.data("moveX",moveX);
				}
			}
			function ee(e,el){
				if(el.data("mode") === true && el.data("tab") === true){
					var $box = el.children(":eq(0)");
					
					var ccc = String($(el).closest(".petTabContent").attr("class")).replace(/(petTab)Content/g,'$1Header').split(" ");
					var txtClass = "";
					for(var i=0; i<ccc.length; i++){
						txtClass += "." + ccc[i];
					}
					$(el).trigger("tabEndEvent");
					var $tHad = ($(el).closest(".petTabContent").find(".uiTab").length)?$(el).closest(".petTabContent").find(".uiTab"):$(txtClass).find(".uiTab");
					var max = returnMax($box);
					var min = 0;
					var target = 0;
					var sw = (el.data("p") > el.data("moveX"))?"next":"prev";
					if(sw == "next"){
						target = Math.ceil(Math.ceil(el.data("moveX") - 100) * 0.01) * 100;
					}else if(sw == "prev"){
						target = Math.ceil(Math.ceil(el.data("moveX")) * 0.01) * 100;
					}
					var sw2 = Math.abs(el.data('moveX') - el.data("p"));
					if(sw2 < 15) target = Math.ceil(el.data("p") * 0.01) * 100;
					if(target <= max) target = max;
					if(target >= min) target = min;
					$box.stop().animate({left: target + "%"},500,function(){
						var n = Math.abs(Math.ceil(target * 0.01));
						$tHad.children().eq(n).addClass("active").siblings().removeClass("active");
						that.tab_height($box);
						
						//APETQA-7622
						if($("#divTabModeTit").length > 0 && $("ul.uiTab li").eq(1).hasClass('active') ){
							cartGoods.reloadMiniCart()
						}
						
						/*
						if($("html,body").scrollTop() >= 56){
							$("html,body").scrollTop(56);
						}
						*/
					});
					
					
				}
				for(var key in el.data()){
					el.data(key,null);
				}
			}
			function returnMax(el){
				var max = (el.children().length - 1) * -100;
				return max;
			}
		},
		tabTouchBreak : function(el){
			var $el = (typeof el == "object")?el:$(el);
			$el.bind("touchstart",function(){
				$(window).data("tab",false);
			}).bind("touchend",function(){
				$(window).data("tab",true);
			});
		},
		tab_height : function(el){		// 탭 이동후 uiTab_content > ul 높이
			setTimeout(function(){		// 첫번째 탭 높이값 없을시 생기는 오류 막기 위한 딜레이 처리 CSR-1651 210820 lju02
				var autoCheck = ($(el).closest(".petTabContent.hmode_auto").length)?true:false;
				var $tHad = $(el).closest(".petTabContent").find(".uiTab");		// tab 메뉴
				var check = ($("link[href *= 'style.mo.css']").length)?true:false;
				if(!autoCheck || (check === false)) return;
				let ind = $tHad.find("li.active").index();
				let h = $(el).children().eq(ind).innerHeight();
				// 21.11.02 APETQA-6833 LSY
				var winH = $(window).height();
				var moHeadH = $(".isMo .header > .hdr:visible").outerHeight() || 0;
				var uiTH = $(".uiTab:visible").outerHeight() || 0;
				var resulth = winH - moHeadH - uiTH;
								
				if (h < resulth) {
					$(el).height(resulth + 15);
				} else {
					$(el).height(h);
				}				
				// 21.11.02 APETQA-6833 LSY
				
				
				setTimeout(function(){
					ui.floatNav.init();
				},500);
			},300);
		}
	},
	headerScroll : {
		init : function(){
			setTimeout(function(){
				var check = ($('link[href *= "style.mo.css"]').length && (String(window.location).indexOf("/guide/header_cu.html") == -1)) ? true : false;
				if(check) {
					let point_min = 150;
					let point_min2 = 56; // 21.10.26 APETQA-6690 LSY
					let logCheck = ($(".logHeaderAc").length > 0) ? true : false;
					var searchCheck = ($(".searchChkHeader").length > 0) ? true : false;	// 검색진입페이지인지 체크하기 위함 - APETQA-7441 211117 lju02
					let header = $('.header > .hdr');
					let fixedBox = $(".mode_fixed, .tabMenu");
					let noneAc = ( $('.header.noneAc > .hdr').length ) ? true : false;
					let noneBorder = ($('.subtopnav .inr, .mnschbox, .petTabContent.mode_fixed').length) ?  true : false;
					let currentScroll = 0;
					let checkScroll = null;
					let selectBox = [".menushop"]; // select 선택자
					let removeClass = ["open"];    // remove class
					let border_style = '1px solid #ecedef';
					var timer1;
					$(window).scroll(function(e){
						/* 모바일 시 셀럭터 박스 close */
						for(var i=0; i<selectBox.length; i++){
							for(var j=0; j<removeClass.length; j++){
								$(selectBox[i]).removeClass(removeClass[j]);
							}
						}
						var scroll = $(this).scrollTop();
						var check = (scroll > currentScroll) ? "down" : "up" ;
						
						//로그 화면일 때
						if(logCheck){
							//2021.08.11 start 로그 header관련 수정사항(김준형) 요청함
							let $h = ($(".pageHead").length)?$(".pageHead .inr"):$(".header .hdr");
							if($(".logPicMetric").length>0){
								let diff = ($(".mylog_area.con > .logPicMetric").length)?8:0;
								let point = ($(".logPicMetric").offset().top - $h.innerHeight() - diff);
								if(scroll >= point){
									$h.addClass("add_bb");
									$("body").addClass("sc_had_on");
								}else{
									$h.removeClass("add_bb");
									$("body").removeClass("sc_had_on");
								}
							currentScroll = scroll;
							}//2021.08.11 end 로그 header관련 수정사항(김준형) 요청함
						}
						
						// 21.12.10 검색화면 분기 스크롤 전체 수정 Start 
						else {
							var num1 = 0;
							if($(".allcheck.scroll_fixed").length) header = $(".allcheck.scroll_fixed .inr");
							
							if(searchCheck){ 
							    var checkPointMin = point_min2;
							} else { 
							    var checkPointMin = point_min;
							}

							if(scroll > checkPointMin && $(".sticky_filter_top").length == 0){
								header.css({
									borderBottom : border_style
								});
								if (noneBorder){
									header.css({
										borderBottom : 0
									});
								}
								if (!noneAc){
									if (scroll > currentScroll && (checkScroll != check || check === null)){
										// header.addClass('active');
										fixedBox.addClass('active');
										$("body").addClass("sc_had_on");
									} else if ((checkScroll != check || check === null)){
										// header.removeClass('active');
										fixedBox.removeClass('active');
										$("body").removeClass("sc_had_on");
									}
									checkScroll = check;
								}
							}else {
								header.css({
									borderBottom : 0
								});
							}
							currentScroll = scroll;

						}
						// 21.12.10 검색화면 분기 스크롤 전체 수정 End
						
						if($(".scroll_tit_ac").length){
							let variable_tit = ($(".scroll_tit_ac").length)?$(".scroll_tit_ac").text():"";
							let targetTop = $(".scroll_tit_ac").offset().top - $(".header").innerHeight() + $(".scroll_tit_ac").innerHeight();
							if(targetTop < scroll){
								$(".mo-heade-tit").text(variable_tit);
							}else{
								$(".mo-heade-tit").text("");
							}
						}
						if($(".scroll_tit_ac").length){
							let variable_tit = ($(".scroll_tit_ac").length)?$(".scroll_tit_ac").html():"";
							variable_tit = String(variable_tit).replace(/\<span .*\>.*\<\/span\>/g, '');
							let targetTop = $(".scroll_tit_ac").offset().top - $(".header").innerHeight() + $(".scroll_tit_ac").innerHeight();
							if(targetTop < scroll){
								$(".mo-heade-tit").text(variable_tit);
							}else{
								$(".mo-heade-tit").text("");
							}
						}
						if($(".scroll_move_wrap").length){
							let targetTop = $(".scroll_move_wrap").offset().top - $(".header").innerHeight() + $(".scroll_move_wrap").innerHeight();
							if(targetTop <= scroll){
								$(".mo-header-rightBtn").prepend($(".scroll_move_ac"));
								if($(".scroll_move_wrap .btn").text().indexOf('팔로우') > -1){
									$(".mo-header-btnType01").addClass("follow").text("팔로우");
								}
							}else{
								$(".scroll_move_wrap").append($(".scroll_move_ac"));
								if($(".scroll_move_wrap .btn").text().indexOf('팔로우') > -1){
									$(".mo-header-btnType01").removeClass("follow");
								}
							}
						}
						if($(".mn_bests_sld").length){
							/*
							let $target = $(".mn_bests_sld");
							let diff = $(".mnschbox .inr").innerHeight();
							let checkDiff = Number($(".mnschbox .inr").css("top").match(/\d+(\.\d+)?/g,''));
							let top = $target.offset().top - scroll - diff - checkDiff;
							let pointBoth = $(".ranklist .moreload").offset().top + $(".ranklist .moreload").innerHeight() - diff - checkDiff + ($(".mn_bests_sld.scroll_fixed .slide").innerHeight() || 0) - 120;
							let diff2 = (scroll >= pointBoth)?(scroll - pointBoth):0;
							let num1 = 0;
							if(top <= 0){
								num1 = 0;
								clearInterval(timer1);
								$(".mn_bests_sld").addClass("scroll_fixed").find(".slide").css("top",(diff + checkDiff - diff2)+"px");
								timer1 = setInterval(function(){
									num1++;
									
									let scroll = $(window).scrollTop();
									let diff = $(".mnschbox .inr").innerHeight();
									let checkDiff = Number($(".mnschbox .inr").css("top").match(/\d+(\.\d+)?/g,''));
									let pointBoth = $(".ranklist .moreload").offset().top + $(".ranklist .moreload").innerHeight() - diff - checkDiff + ($(".mn_bests_sld.scroll_fixed .slide").innerHeight() || 0) - 120;
									let diff2 = (scroll >= pointBoth)?(scroll - pointBoth):0;
									$(".mn_bests_sld").addClass("scroll_fixed").find(".slide").css("top",(diff + checkDiff - diff2)+"px");
									if(num1 >= 100){
										clearInterval(timer1);
									}
								},10);
							}else{
								clearInterval(timer1);
								$(".mn_bests_sld").removeClass("scroll_fixed").find(".slide").css("top",0);
							}
							*/
							if(window.timer3 !== undefined) clearInterval(window.timer3);
							window.countTime3 = 0;
							ac();
							window.timer3 = setInterval(function(){
								window.countTime3 ++;
								if(window.countTime3 >= 50) clearInterval(window.timer2);
								ac();

							});
							function ac(){
								let $target = $(".mn_bests_sld");
								let diff = $(".mnschbox .inr").innerHeight();
								let checkDiff = Number($(".mnschbox .inr").css("top").match(/\d+(\.\d+)?/g,''));
								let top = $target.offset().top - scroll - diff - checkDiff;
								let pointBoth = $(".ranklist .moreload").offset().top + $(".ranklist .moreload").innerHeight() - diff - checkDiff + ($(".mn_bests_sld.scroll_fixed .slide").innerHeight() || 0) - 120;
								let diff2 = (scroll >= pointBoth)?(scroll - pointBoth):0;
								let num1 = 0;
								if(top <= 0){
									num1 = 0;
									$(".mn_bests_sld").addClass("scroll_fixed").find(".slide").css("top",(diff + checkDiff - diff2)+"px");
								}else{
									clearInterval(timer1);
									$(".mn_bests_sld").removeClass("scroll_fixed").find(".slide").css("top",0);
								}

							};
						}
						if($(".best_category_wrap").length){		//베스트20 신규 코드용
							
							if(window.timer3 !== undefined) clearInterval(window.timer3);
							window.countTime3 = 0;
							ac();
							window.timer3 = setInterval(function(){
								window.countTime3 ++;
								if(window.countTime3 >= 50) clearInterval(window.timer2);
								ac();

							});
							function ac(){
								let $target = $(".best_category_wrap");
								let diff = $(".mnschbox .inr").innerHeight();
								let checkDiff = Number($(".mnschbox .inr").css("top").match(/\d+(\.\d+)?/g,''));
								let top = $target.offset().top - scroll - diff - checkDiff;
								let pointBoth = $(".best20 .moreload").offset().top + $(".best20 .moreload").innerHeight() - diff - checkDiff + ($(".best_category_wrap.scroll_fixed .slide").innerHeight() || 0) - 120;
								let diff2 = (scroll >= pointBoth)?(scroll - pointBoth):0;
								let num1 = 0;
								if(top <= 0){
									num1 = 0;
									$(".best_category_wrap").addClass("scroll_fixed").find(".slide").css("top",(diff + checkDiff - diff2)+"px");
								}else{
									clearInterval(timer1);
									$(".best_category_wrap").removeClass("scroll_fixed").find(".slide").css("top",0);
								}

							};
						}
						if($(".sticky_bar").length){
							if(window.timer2 !== undefined) clearInterval(window.timer2);
							window.countTime = 0;
							ac();
							window.timer2 = setInterval(function(){
								window.countTime ++;
								if(window.countTime >= 50) clearInterval(window.timer2);
								ac();
							},10);
							function ac(){
								let $box = $(".sticky_bar .sect.dm.plan.set > .hdts");
								let diffTop1 = 46 + (56 - Number($(".header > .hdr").css("top").match(/\d+(\.\d+)?/g)));
								let diffTop2 = diffTop1 + 40;
								let p = $box.eq(0).offset().top - diffTop1;
								for(var i=($box.length - 1); i>-1; i--){
									let point_top = (i==0)?(Number($box.eq(i).offset().top) - Number(diffTop1)):(Number($box.eq(i).offset().top) - Number(diffTop2));
									let diff_top = ((scroll - point_top) >= 40)?40:(scroll - point_top);
									$(".hdts.fixed").removeClass("fixed").find(".tits").css("top","");
                  if(i == 0){
                    if(scroll >= point_top){
                      $box.eq(i).addClass("fixed").find(".tits").css("top",diffTop1);
                    }else{
                      $box.eq(i).removeClass("fixed").find(".tits").css("top","");
                    }
                    break;
                  }else if(i >= 1 && scroll >= point_top){
                    if(scroll >= point_top){
                      $box.eq(i).addClass("fixed").find(".tits").css("top",(diffTop2 - diff_top));
                      $box.eq((i-1)).addClass("fixed").find(".tits").css("top",(diffTop1 - diff_top));
                    }else{
                      $box.eq(i).removeClass("fixed").find(".tits").css("top","");
                    }
                    header.css({
                      borderBottom : border_style
                    });
                    break;
                  }
								}
							};
						}
						if($(".sticky_filter").length){
							if(window.timer2 !== undefined) clearInterval(window.timer2);
							window.countTime = 0;
							ac();
							window.timer2 = setInterval(function(){
								window.countTime ++;
								if(window.countTime >= 50) clearInterval(window.timer2);
								ac();
							},10);
							function ac(){
								let $box = $(".sticky_filter");
								let differ_h = ($(".subtopnav").length)?46:0;
								let diffTop1 = differ_h + (56 - Number($(".header > .hdr").css("top").match(/\d+(\.\d+)?/g)));
								let p = $box.eq(0).offset().top - diffTop1 - 20;
								if(scroll >= p && p > point_min){
									$box.addClass("fixed").children().eq(0).css("top",diffTop1);
									if($(".uifiltbox.on").length){
										$box.removeClass("size-1");
									}else{
										$box.addClass("size-1");
									}
								}else if(p > point_min){
									$box.removeClass("fixed").children().eq(0).css("top","");
								}else if(scroll < point_min && p <= point_min){
									$box.removeClass("fixed ani");
								}else if(scroll > 0 && p <= point_min){
									$box.addClass("fixed ani");
								}
							}
						}
					});
				}
			},50);
		},

	},
	addPopPic : function (el){
		var src = $(el).attr("src");
		var source = "<div class='pop-pic-wrap'><div class='inr'><div class='had'><button class='close' onClick='$(this).closest(\".pop-pic-wrap\").remove();'>닫기</div><div class='con'><img src='"+src+"'/></div></div></div>";
		$("body").append(source);
	},
	bubble_pop : {
		init : function(){
			var $el = $(".alert_pop");
			if($el.length) this.open($el);
		},
		open : function(el){
			var $el = $(el);
			$el.click(function(e){
				var check = ($("link[href*='style.mo.css']").length > 0)?true:false;
				var cl = ($(this).attr("data-pop") !== undefined)?$(this).attr("data-pop"):false;
				var $par = $(".bubble_par");
				var ind = $par.find(".alert_pop").index($(this));
				$par.css("z-index","").eq(ind).css("z-index",10);
				e.stopPropagation();
				$(".bubble_open").not($(this)).removeClass("bubble_open");
				if(check && (cl !== false)){
					/*
					var that = $(this);
					var $pop = $(this).find(".bubble_txtBox");
					var css = {
						width : (window.innerWidth - 36) + "px",
						left : "-" + (that.offset().left - 18) + "px"
					};
					$pop.css(css);
					*/
					ui.popBot.open(cl);
				}else if(!check){
					$(this).toggleClass("bubble_open");
				}
			});
			$el.each(function(i,n){
				$(n).children().eq(0).click(function(e){
					e.stopPropagation();
				});
			});
		}
	},
	input_viewPort : {
		init : function(){
			var that = this;
			var $el = $("input[type='text'],input[type='password'],textarea");
			$el.each(function(i,n){
				that.focus($(n));
			});
		},
		focus : function(el){
			var $input = $(el);
			$input.focus(function(){
				if($("link[href*='style.pc.css']").length > 0) return;
				var $viewport = $("meta[name='viewport']");
				var content = String($viewport.attr("content")).replace(/(user\-scalable\ ?=) ?yes/g,'$1 no');
				$viewport.attr("content",content);
			}).blur(function(){
				if($("link[href*='style.pc.css']").length > 0) return;
				var $viewport = $("meta[name='viewport']");
				var content = String($viewport.attr("content")).replace(/(user\-scalable\ ?=) ?no/g,'$1 yes');
				$viewport.attr("content",content);
			});
		}
	},
	headerSearech_input : {
		set : function(){
			// var w = $(".mo-header-btnType01").width() + 70; common/co_04_01_06.html 검색 영역 짧아서 수치 조정
			var w = $(".mo-header-btnType01").width() + 60;
			var $form = $(".header.cu.mode14 > .hdr .cdt .schs .form");
			if(ui.check_brw.mo()) $form.attr("style","width:calc(100vw - "+ w +"px)");
			if(ui.check_brw.mo()){
				if($(".header .mo-heade-tit").length <= 0) return;
				setTimeout(function(){
					try{
						$(".header").each(function(i,n){
							var $input = $(n).find(".mo-heade-tit");
							var check = $input.css("justify-content");
							var diff1 = ($(n).find(".hdr .cdt").css("display").toLowerCase() != "none")?$(window).width() - $(n).find(".hdr .cdt").offset().left:($(n).find(".mo-header-rightBtn").css("display").toLowerCase() != "none")?$(window).width() - $(n).find(".mo-header-rightBtn").offset().left:20;
							var sum = (diff1 + $input.offset().left);
							if(check == "center") return;
							var style_width = "calc(100vw - " + sum + "px)";
							$input.css("width",style_width);

						});
					}catch(e){
					}
				},500);
			}
		}
	},
	nodata_set : {
		init : function(){
			var $el = $(".no_data.auto_h");
			if($el.length) this.setHeight($el);
		},
		setHeight : function(el){
			var $box = $(el);
			window.setHNum = 0;
			if(ui.check_brw.mo()){
				if(window.setHTimer !== undefined) clearInterval(window.setHTimer);
				window.setHTimer = setInterval(function(){
					window.setHNum++;
					$box.each(function(i,n){
						var $box = $(n).parent();
						var f = ($("#footer").length)?$("#footer").innerHeight():0;
						var check = ($("link[href*='style.mo.css']").length)?true:false;
						var popCheck = ($box.closest(".popLayer").length)?true:false;
						var variablePrice = $box.offset().top;
						var h = "auto";
						var varH = ($(".menubar > .inr").length > 0)?($(".menubar > .inr").innerHeight() + 3):0;
						if(!check && !popCheck){
							variablePrice = ($box.closest(".uiTab_content").length)?145:0;
						}
						h = (window.innerHeight - variablePrice);
						if(!check && popCheck){
							h = ($box.closest(".popLayer > .pbd").innerHeight() - $box.offset().top + $box.closest(".popLayer > .pbd").offset().top - 10) - varH;
						}
						h -= varH;
						var menubarH = $(".menubar .inr:visible").outerHeight() || 0;
						$box.height(h - menubarH);
					});
					if(window.setHNum >= 100) clearInterval(window.setHTimer);
					$(".no_data.auto_h .inr").addClass("none");/* 20.10.26 APETQA-6526 LSY */
				});
			}else if(ui.check_brw.pc()){
				/* APETQA-6526 211019 lju02 */
				setTimeout(function(){	
					var w_hh = $(window).height();
					var no_oft = $(".no_data.auto_h").parent().offset().top;
					var no_h = w_hh - no_oft;
					$(".no_data.auto_h").parent().height(no_h);
				},50);
				setTimeout(function(){	
					$(".no_data.auto_h").addClass("view");
				},500);
			}
		}
	},
	paging: {
		init: function(){
			var $el = $(".paginate");
			if($el.length) this.set($el);
		},
		set: function(el){
			let $el = $(el);
			$el.each(function(i,n){
				$(n).find("button").click(function(){
					var check =  $(this).hasClass("n");
					var val = $(this).closest(".paginate").find(".curr").text();
					if(check){
						var max = Number($(this).closest(".paginate").find(".max").text().replace(/\D/g,''));
						val++;
						if(val >= max) val = max;
					}else{
						val--;
						if(val <= 1) val = 1;
					}
					$(this).closest(".paginate").find(".curr").text(val);
				});
			});
		}
	},
	setTextarea_height: {
		init : function(){
			let $el = $(".log_tagTextBox textarea");
			if($el.length) this.set($el);
		},
		set : function(el){
			let $el = $(el);
			$el.each(function(i,n){
				$(n).bind("keydown keyup plur paste",function(e){
					auto_h(e);
				});
			});
			function auto_h(e){
				var $target = $(e.target);/*(e.target.tagName.toLowerCase() == "button")?$(e.target).closest(".input").find("textarea"):$(e.target)*/
				var key = e.keyCode;
				var time = (String(e.type).toLowerCase() == "blur")?100:0;
				var check_mo = ($("link[href *= 'style.mo.css']").length > 0)?true:false;
				var check_type1 = ($(e.target).closest(".commentBoxAp.type01").length > 0)?true:false;
				setTimeout(function(){
					$target.removeAttr("style");
					var pt = ($target.css("box-sizing") == "border-box")?$target.css("padding-top").replace(/\D/g,''):0;
					var pb = ($target.css("box-sizing") == "border-box")?$target.css("padding-bottom").replace(/\D/g,''):0;
					var h = $target.prop("scrollHeight") -  pt - pb;
					$target.height((h - 1));
					if($(".dim_box_w").length) $(".dim_box_w").css("top",($(".log_tagTextBox").offset().top + $(".log_tagTextBox").innerHeight() + 20));
				},time);
			}
		}
	},
	setFooter: {
		init : function(){
			var href = location;
			var checkDev = (String(href).indexOf("_html") > -1)?true:false;
			var checkCategory = (String(href).indexOf("_html/log") > -1 || String(href).indexOf("_html/my") > -1 || String(href).indexOf("_html/MY") > -1)?true:false;
			var checkFooter = ($("#footer").length == 0 && $("include.footer").length == 0)?true:false;
			var source = '<nav class="floatNav"><div class="inr"><div class="bts"><div class="pd tp"><button type="button" class="bt tops">페이지위로</button></div><div class="pd tk"><button type="button" class="bt talk">상담톡</button><div class="tpn"><div class="txt"><div class="tt">24시간 언제나</div><div class="ss">궁금할땐 톡!</div></div></div></div></div></div></nav><footer class="footer" id="footer"><div class="inr"><div class="link"><ul class="list"><li><a href="javascript:;">서비스 이용약관</a></li><li><a href="javascript:;">개인정보 처리방침</a></li><li><a href="javascript:;">입점/제휴 문의</a></li></ul></div><div class="info"><ul class="list"><li>(주)어바웃펫   대표 : 홍길동</li><li>사업자 등록번호 : 000-00-00000</li><li class="dn">통신판매등록번호 : 제0000-서울서초-0000호</li></ul><p class="adr">서울특별시 강남구 논현로 508 GS강남타워(역삼679번지 GS타워)</p></div><div class="copy">&copy; GS Retail Co.,LTD. All rights reserved.</div></div></footer>';
			var checkEtc = true;
			var etc = ["LOG_02_01_02_01.html","LOG_01_pop.html","co_05_01.html","MY_05_02_11.html","LOG_commentBox.html","LOG_02_02.html","LOG_02_02_01.html","MY_01_01_05","LOG_02_01_01.html","LOG_02_01_01_01.html"];
			for(var i=0; i<etc.length; i++){
				if(String(href).indexOf(etc[i]) > -1){
					checkEtc = false;
					break;
				}
			}
			var defaults = {
				footer_option : "",
				talk_mo : "",
				foot_pc : "",
				talk_pc : "",
				zindex : ""
			};
			try{
				if(pageFoption !== undefined){
					for(var key in pageFoption){
						defaults[key] = pageFoption[key];
					}
				}
			}catch(e){
			}
			if(checkDev && checkCategory && checkFooter && checkEtc){
				$("#wrap").append(source);
				if( defaults.foot_mo == "hide" && uiHtml.isMo() ) {
					$("#footer").remove();
				}
				if( defaults.talk_mo == "hide" && uiHtml.isMo() ) {
					$(".floatNav>.inr .pd.tk").remove();
				}
				if( defaults.foot_pc == "hide" && !uiHtml.isMo() ) {
					$("#footer").remove();
				}
				if( defaults.talk_pc == "hide" && !uiHtml.isMo() ) {
					$(".floatNav>.inr .pd.tk").remove();
				}
				if(defaults.zindex !== ""){
					$("#footer").css("z-index",defaults.zindex);
				}
			}
		}
	},
	check_brw: {
		mo: function(){
			return ($("link[href *= 'style.mo.css']").length)?true:false;
		},
		pc: function(){
			return ($("link[href *= 'style.pc.css']").length)?true:false;
		}
	},
	dim: {
		set: function(options){
			let defult = {
				zIndex:100
			};
			let settings = $.fn.extend({},defult,options);
			let style = "<style class='cu_style'>body.dim:after{z-index:"+settings.zIndex+";</style>";
			$("body").addClass("dim");
			$("head link:last").after(style);
		},
		close: function(){
			$("style.cu_style").remove();
			$("body").removeClass("dim");
		},
		setDim: function(options){
			let defult = {
				box: $("body"),
				css: {
					"z-index":100
				}
			};
			let settings = $.fn.extend({},defult,options);
			let div = document.createElement("div");
			div.classList.add('dim_back');
			for(var key in settings.css){
				div.style[key] = settings.css[key];
			}
			$("body").append(div);
			settings.box.trigger("evClick");
			$(div).click(function(){
				settings.box.trigger("evClick");
			});
		},
		setDimClose: function(){
			$(".dim_back").remove();
		}
	},
	allViewBt: {
		init: function(){
			let that = this;
			$(window).scroll(function(){
				that.scroll();
			}).resize(function(){
				that.set();
			});
			this.set();
		},
		set: function(){
			let $box = $(".delivery-oder-area");
			let $bt = $(".btn-fixed-round");
			$bt.css({left:$box.offset().left + ($box.width() / 2),"transform":"translate(-50%,0)"});
		},
		scroll: function(){
			let $bt = $(".btn-fixed-round");
			let left = $(window).scrollLeft();
			$bt.css({"margin-left":"-"+left+"px"});
		}
	},
  // -------------------------------------------------
  // swiper
  // -------------------------------------------------
  prdSwiper: {
    // swiper 초기 클래스 주입
    set: function(_el) {
      const _swiper = $(_el).find('.gd-unit');
      const _swiperWrapper = $(_el).find('.gd-unit > .inner');
      const _swiperSlides = $(_el).find('.gd-unit .gd-item');
      const _isBestRank = $(_el).hasClass('gd-rank') ? true : false;  // 베스트랭킹 템플릿인 경우
      if (_isBestRank == false) {
        if (_swiper.hasClass('swiper') == false) _swiper.addClass('swiper');
        if (_swiperWrapper.hasClass('swiper-wrapper') == false) _swiperWrapper.addClass('swiper-wrapper');
        _swiperSlides.each(function() {
          if ($(this).hasClass('swiper-slide') == false) $(this).addClass('swiper-slide');
        });
      }
    },
    // init swiper instance
    init: function(_el, optParams, initParams) {
      const _this = this;
      const _isBestRank = $(_el).hasClass('gd-rank') ? true : false;  // 베스트랭킹 템플릿인 경우
      const _isTimedeal = $(_el).hasClass('gd-timedeal') ? true : false;  // 타임딜 템플릿인 경우
      this.set(_el);  // swiper 초기 클래스 주입 후 swiper 실행
      _this.setOpt = $.extend({
        nav: true,            // navigation 유무
        pag: true,            // pagination 유무
        scrollbar: false,     // scrollbar 유무
        pagType: 'bullets',   // pagination type
        icb: null,            // swiper callback: init 후 실행될 함수
      }, optParams);
      _this.initOpt = $.extend({
        watchSlidesProgress: true,
        observer: true,
        observeParents: true,
        autoHeight:false,
        slidesPerView: 'auto',
        freeMode: false,
        slideActiveClass: 'active',
		navigation: _this.setOpt.nav ? {prevEl: _el + ' .swiper + .sld-navigation .sld-nav.prev', nextEl: _el + ' .sld-nav.next'} : false,
		pagination: _this.setOpt.pag ? {el: _el + ' .swiper + .sld-pagination', type: _this.setOpt.pagType,} : false,
		scrollbar: _this.setOpt.scrollbar ? {el: _el + ' .swiper + .sld-scrollbar', draggable: true,} : false,
        on: {
          // swiper callback: 초기화 완료
          init: function() {
            // 베스트 렝킹 상품 그룹인 경우 카테고리 동작 설정
            if (_isBestRank) _this.setRankCate(_el);
            // 타임딜 상품 그룹인 경우 카테고리 동작 설정
            if (_isTimedeal) _this.setTimedeal(_el);
            // callback
            if (typeof _this.setOpt.icb == 'function') {
              try { _this.setOpt.icb(); } catch (error) {}
            }
            this.update();
          },
          update: function() {
            _this.setMoreBtn(_el);
          },
          // swiper callback: 슬라이드 변경
          slideChange: function() {
            // 베스트 렝킹 상품 그룹인 경우 카테고리 동작 설정
            if (_isBestRank) _this.setRankChangeEvent(_el);
          },
          // swiper callback: lazy loading 이미지 로드 완료 (슬라이드 변경될 때 마다 호출됨)
          lazyImageReady: function() {

          },
        },
      }, initParams);
      if (_isBestRank) {
        const _cateSwiperEl = '.wrap-rank-category[data-target="' + _el + '"] .swiper';
        const _prdSwiperEl = _el + ' .wrap-gd-rank';
        const _cateSwiperOpt = {
          watchSlidesProgress: true,
          observer: true,
          observeParents: true,
          autoHeight:false,
          slidesPerView: 'auto',
          spaceBetween: 8,
          freeMode: true,
          on: {
            init: function() {

            },
          }
        }
        // 베스트 랭킹 카테고리 스와이프
        try {
          _this.slide = new Swiper(_cateSwiperEl, _cateSwiperOpt);
        } catch(e) {}
        // 베스트 랭킹 상품 스와이프
        try { _this.slide = new Swiper(_prdSwiperEl, _this.initOpt); } catch(e) {}
      } else {
		  if ( $(_el).find('.gd-cont-item').length > 0 ) {
			  // 베스트 랭킹 상품 스와이프 외에 'gd-cont-item' 클래스로 구분된 멀티 스와이프 처리 (예: 타임딜)
			  try {
				  for (let i = 0; i < $(_el + ' .gd-cont-item').length; i++) {
					  _this.initOpt.navigation = _this.setOpt.nav ? {prevEl: _el + ' .gd-cont-item:nth-child(' + (i + 1) + ') .swiper + .sld-navigation .sld-nav.prev', nextEl: _el + ' .gd-cont-item:nth-child(' + (i + 1) + ') .swiper + .sld-navigation .sld-nav.next'} : false;
					  _this.initOpt.pagination = _this.setOpt.pag ? {el: _el + ' .gd-cont-item:nth-child(' + (i + 1) + ') .swiper + .sld-pagination', type: _this.setOpt.pagType,} : false;
					  _this.scrollbar = _this.setOpt.scrollbar ? {el: _el + ' .gd-cont-item:nth-child(' + (i + 1) + ') .swiper + .sld-scrollbar', draggable: true,} : false;
					  _this.slide = new Swiper(_el + ' .gd-cont-item:nth-child(' + (i + 1) + ') .swiper', _this.initOpt);
				  }
			  } catch(e) {}
		  } else {
			  try {
				  _this.slide = new Swiper(_el + ' .swiper', _this.initOpt);
			  } catch(e) {}
		  }
      }
    },
    // 베스트랭킹 카테고리 동작
    setRankCate: function(_el) {
      const _cateSwiperEl = '.wrap-rank-category[data-target="' + _el + '"] .swiper';
      const _prdSwiperEl = _el + ' .wrap-gd-rank';
      const cateSwiperInstance =  document.querySelector(_cateSwiperEl).swiper;
      const prdSwiperInstance =  document.querySelector(_prdSwiperEl).swiper;
      if (cateSwiperInstance != undefined && prdSwiperInstance != undefined) {
        // 카테고리 버튼 클릭 이벤트
        const _btn = $(_cateSwiperEl).find('.btn-best-cate');
        $(document).off('click', _cateSwiperEl + ' .btn-best-cate');
        $(document).on('click', _cateSwiperEl + ' .btn-best-cate', function() {
          _btn.removeClass('active');
          $(this).addClass('active');
          const _idx = $(this).parent().index();
          cateSwiperInstance.slideTo(_idx);
          prdSwiperInstance.slideTo(_idx);
        });
        // 스크롤시 카테고리 버튼 위치 보정은 스크롤 이벤트 발생시 'vScrollAction()' 함수에서 처리
      }
    },
    // 베스트랭킹 상품그룹 스와이프 동작
    setRankChangeEvent: function(_el) {
      const _cateSwiperEl = '.wrap-rank-category[data-target="' + _el + '"] .swiper';
      const _prdSwiperEl = _el + ' .wrap-gd-rank';
      const cateSwiperInstance =  document.querySelector(_cateSwiperEl).swiper;
      const prdSwiperInstance =  document.querySelector(_prdSwiperEl).swiper;
      if (cateSwiperInstance != undefined && prdSwiperInstance != undefined) {
        const _idx = prdSwiperInstance.activeIndex;
        const _btn = $(_cateSwiperEl).find('.btn-best-cate');
        _btn.removeClass('active');
        _btn.eq(_idx).addClass('active');
        cateSwiperInstance.slideTo(_idx);
      }
    },
    // 타임딜 상품 그룹인 경우 카테고리 동작 설정
    setTimedeal: function(_el) {
      const _timeDealBtn = $(_el).find('.wrap-gd-tab .btn-timedeal');
      const _timeDealCont = $(_el).find('.wrap-gd-cont .gd-cont-item');
      $(document).off('click', _el + ' .wrap-gd-tab li .btn-timedeal');
      $(document).on('click', _el + ' .wrap-gd-tab li .btn-timedeal', function(e) {
        e.preventDefault();
        const _idx = $(this).parent('li').index();
        _timeDealBtn.removeClass('active');
        $(this).addClass('active');
        _timeDealCont.removeClass('active');
        _timeDealCont.eq(_idx).addClass('active');
      });
    },
    // 더보기 버튼 설정
    setMoreBtn: function(_el) {
      const $el = $(_el);
      const $moreBtn = $el.find('.btn-x');
      const _isBestRank = $(_el).hasClass('gd-rank') ? true : false;  // 베스트랭킹 템플릿인 경우
      // 버튼 위치 지정
      const _h = $el.find('.swiper-wrapper').outerHeight();
      const _btnH = $moreBtn.outerHeight();
      $moreBtn.css('top', ((_h/2) - (_btnH/2)) + 'px');
      // 더보기 버튼이 없는 스와이프는 더보기 버튼 제거
      if ($el.hasClass('is-more') == false && _isBestRank == false) {
        const swiperInstance = ui.prdSwiper.chkInstance(_el) ? document.querySelector(_el + ' .swiper').swiper : null;
        if (swiperInstance != null && $moreBtn.length > 0) {
			if ($el.find('.gd-item.gd-more').length > 0) {
				$el.find('.gd-item.gd-more').remove();
				swiperInstance.update();
			}
        }
      }
    },
    // swiper instance 존재하는지 확인 (return true/false)
    chkInstance: function(_el) {
      let _returnValue = false;
      const _isBestRank = $(_el).hasClass('gd-rank') ? true : false;  // 베스트랭킹 템플릿인 경우
      const _swiperEl = _isBestRank ? _el + ' .wrap-gd-rank' : _el + ' .gd-unit';
      const swiperInstance = document.querySelector(_swiperEl).swiper;
      if (swiperInstance != undefined) _returnValue = true;
      return _returnValue;
    },
    // 내장된 슬라이드 전체 삭제
    removeAllSlides: function(_el) {
      const _isBestRank = $(_el).hasClass('gd-rank') ? true : false;  // 베스트랭킹 템플릿인 경우
      const _swiperEl = _isBestRank ? _el + ' .wrap-gd-rank' : _el + ' .gd-unit';
      const swiperInstance = document.querySelector(_swiperEl).swiper;
      if (swiperInstance != undefined) swiperInstance.removeAllSlides();
    },
    // update swiper instance
    update: function(_el) {
      const _isBestRank = $(_el).hasClass('gd-rank') ? true : false;  // 베스트랭킹 템플릿인 경우
      const _swiperEl = _isBestRank ? _el + ' .wrap-gd-rank' : _el + ' .gd-unit';
      const swiperInstance = document.querySelector(_swiperEl).swiper;
      if (swiperInstance != undefined) swiperInstance.update();
    },
    // destroy swiper instance
    destroy: function(_el) {
      const _isBestRank = $(_el).hasClass('gd-rank') ? true : false;  // 베스트랭킹 템플릿인 경우
      const _swiperEl = _isBestRank ? _el + ' .wrap-gd-rank' : _el + ' .gd-unit';
      const swiperInstance = document.querySelector(_swiperEl).swiper;
      if (swiperInstance != undefined) swiperInstance.destroy();
    },
  },
};

//펫TV 영상상세 재생영상 표시 및 스크롤 이동
var scrollActive = function(id){
	//재생영상 표시
	$("[name=thumbBox_"+ id +"]").addClass("on");
	$("[name=thumbImg_"+ id +"]").children("div").hide();
	
	//스크롤 이동
	var ind = (/\d+/g.exec(String($(".tabWrap > .con > ul").attr("style"))) === null)?0:/\d+/g.exec(String($(".tabWrap > .con > ul").attr("style"))) / 100;
    var $box = $(".tabWrap > .con > ul > li:eq("+ind+") > .tvSlid");
    var check = ($("link[href *= '.mo.css']").length > 0)?"moblie":"pc";
	var target;
    if(check == "pc"){
        target = [($box.find(".thumb-box.on").offset().top - $box.offset().top),($box.find(".thumb-box.on").offset().top - $box.offset().top) + $box.find(".thumb-box.on").innerHeight()];
        var scrollTop = $box.scrollTop() + target[0] - 10;
        $box.stop().animate({"scrollTop":scrollTop+"px"},250);
    }else{
		$(".swiper-pagination > li:eq(0)").trigger('click');
		var $box = $(".swiper-slide-active .series_list_wrap");
        target = [($box.find(".thumb_box_tv.on").offset().left - $box.offset().left),($box.find(".thumb_box_tv.on").offset().left - $box.offset().left) + $box.find(".thumb_box_tv.on").innerWidth()];
        var scrollLeft = $box.scrollLeft() + target[0] - 20;
        $box.stop().animate({"scrollLeft":scrollLeft+"px"},250);
    }
};

$(document).ready(function(){
	// lock 걸때 height값 설정 - APETQA-6899 220217 lju02 -  - CSR-2491
	setScreenSize();
	window.addEventListener( 'resize', () => setScreenSize() );
  window.addEventListener('scroll', function() {
    // NOTE: 페이지 스크롤 방향 표시 ('up' or 'down' 값을 HTML 태그의 'data-scrolldir' attribute에 입력시킴)
    scrollDir();
  }, false);

	if( typeof uiHtml == "undefined" ){
		ui.init();
	}else{
		ui.times = setInterval(function(){
			if( uiHtml.html.incCom ){
				clearInterval(ui.times);
				ui.init();
			}
		});
	}
	/* 21.06.09 APET-1101 lcm01추가 */
	setTimeout(function() {
		window.dispatchEvent(new Event('resize')); // 2초 후 실행
	}, 2000);
	/* //21.06.09 APET-1101 lcm01추가 */
	
	// 스와이퍼 이미지 사이즈 맞추기 2021.06.22
	if($(".swiper-container").length > 0){
		resizeSwiper();
    };
	
	//맞춤추천 app에서 헤더 안보이는 현상
	if($(".recom .refresh").length > 0){
		recomRefresh();
	}

	//ios top fixed
	if($(".pc_popSize_500").length > 0){
		iosTopFixed();
	}
	
	/* APET-1258 210803 lju02 시작 */
	// mo/pc 구분할 쿼리들
	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;
	
	jQuery(document).ready(function($){
		
		//fold device 체크해서 클래스명 추가 - APETQA-6723 211108 lju02 
		var agent = navigator.userAgent.toLowerCase(); 
		if(agent.indexOf('sm-f916n')>-1){
			$("body").addClass("device_fold");
		}else if(agent.indexOf('sm-f926n')>-1){
			$("body").addClass("device_fold");
		}

		if(!isMobile) {
			//검색페이지 포커스out 처리 방식 변경		CSR-8 210819 ljw02
			$(window).scroll(function(e){ //
				if(document.activeElement.name == 'srchWord'){
					$("#srchWord").blur();
				}
			});
			
			setTimeout(function() {		//class 유무 체크 하는 경우 서버에서 데이타가 다 불러와 지지 않았을 경우가 생겨서 추가.
				//윈도우팝업 고정사이즈 호출
				if($(".fixWin").length > 0){
					timer = setTimeout(function(){
						winFixResize();
					}, 100);
				}
				
				// tab swiper	/* APET-1227 210730 lju02 */
				if($(".tabSwiper").length > 0){
					callTabSwiperPc();
				}
			}, 500);
			
			
			
			// 하단 네비 버튼 클릭시 상단으로 스크롤 이동 - APETQA-7016 211102 lju02
			$("nav.menubar>.inr .menu>li .bt").on("click", function(){
				$('html, body').scrollTop(0);
			});
			
		}
		else {
			//검색페이지 포커스out 처리 방식 변경		CSR-8 210819 ljw02
			$(".contents").bind("touchstart",function(e){ //
				if(document.activeElement.name == 'srchWord'){
					$("#srchWord").blur();
				}
			});
			
			setTimeout(function() {		//class 유무 체크 하는 경우 서버에서 데이타가 다 불러와 지지 않았을 경우가 생겨서 추가.
				// tab swiper	/* APET-1227 210730 lju02 */
				if($(".tabSwiper").length > 0){
					callTabSwiperMo();
				}
				
				// 모바일 2줄 스와이퍼
				if($(".swiper2line").length > 0){
					callSwiper2LineMo();
				}
			}, 500);
			
			//운영에서 2줄 더보기 버튼 위치 못잡아서 swiper-slide 터치시 호출한번 더줌
			if($(".shop.main").length > 0){
				$(document).on("touchstart", ".swiper-slide", function() {
					//if($(this).parent(".swiper-wrapper").hasClass("morePosition") === false){			//상품 새로 불러올 경우 해당 클래스를 지워주지 않아서 주석 처리함. 버튼 클릭이벤트시 리무브 하는것보단 간단하겠지...
						$(this).parent(".swiper-wrapper").addClass("morePosition");
						callSwiper2LineMo();
					//}
				});
			}
			
			// 하단 네비 버튼 클릭시 상단으로 스크롤 이동 - APETQA-7016 211102 lju02
			$("nav.menubar>.inr .menu>li .bt").on("click", function(){
				$('html, body').scrollTop(0);
			});
			
		}
	
	});
	/* APET-1258 210803 lju02 끝 */
	
	
	

});

$(window).resize( function() {
	// 21.11.02 APETQA-6833 LSY
	if($(".uiTab_content").length > 0){
		ui.tapTouchAc.tab_height($(".uiTab_content > ul"));
	}
	
	//로그사진높이 다시 세팅 - APETQA-7189 211126 lju02
	if($(".lcbPicture").length > 0){
		resizeLogImg();
		$(".swiper-container.logMain .swiper-slide .inr").css({"height":""});
	}
	
});

//스와이퍼 이미지 사이즈 맞추기 2021.06.22
function resizeSwiper() {
	setTimeout(function() {
		window.dispatchEvent(new Event('resize')); // 2초 후 실행
	},100);
} 


//팔로우 닉네임 14글자 이상시 말줄임 2021.06.24 추가함
$('.follow-listBox > ul > li > a > .nick').each(function () {
	var length = 13;
	$(this).each(function(){
		if( $(this).text().length >= length ){
			$(this).text($(this).text().substr(0,length)+'...');
		}
	});
});

/* APET-1258 210803 lju02 시작 */
// 윈도우팝업 사이즈 고정 - 우주멤버쉽에서 처음 사용
function winFixResize(){
	$(document).ready(function() {
		// 팝업 창 크기를 HTML 크기에 맞추어 자동으로 크기를 조정하는 함수.
		var strWidth;
		var strHeight;
	
		//innerWidth / innerHeight / outerWidth / outerHeight 지원 브라우저 
		if ( window.innerWidth && window.innerHeight && window.outerWidth && window.outerHeight ) {
			strWidth = $('article').outerWidth() + (window.outerWidth - window.innerWidth);
			strHeight = $('article').outerHeight() + (window.outerHeight - window.innerHeight);
		}
		else {
			var strDocumentWidth = $(document).outerWidth();
			var strDocumentHeight = $(document).outerHeight();
			window.resizeTo ( strDocumentWidth, strDocumentHeight );
	
			var strMenuWidth = strDocumentWidth - $(window).width();
			var strMenuHeight = strDocumentHeight - $(window).height();
			strWidth = $('.popLayer').outerWidth() + strMenuWidth;
			strHeight = $('.popLayer').outerHeight() + strMenuHeight;
		}
	
		//resize 
		window.resizeTo( strWidth, strHeight );
		var delay = 400;
		var timer = null;
		$(window).on('resize', function(){
			//clearTimeout(timer);
			timer = setTimeout(function(){
				window.resizeTo( strWidth, strHeight );
			}, delay);
		});
	});
}
/* APET-1258 210803 lju02 끝 */


function callTabSwiperMo(){	/* APET-1227 210730 lju02 */
	var winH = $(window).innerHeight();
	var headH = $(".header").outerHeight() || 0;
	var menubarH = $(".menubar>.inr:visible").outerHeight() || 0;
	var swTab = $(".swiper-pagination:visible").outerHeight() || 0;
	var slidH = winH - headH - menubarH - swTab;
	$('.tabSwiper .swiper-slide').css({"height": slidH});
	
	var tabSwiper = new Swiper ('.swiper-container.tabSwiper', {
		// If we need pagination
		pagination: {
			el: '.swiper-pagination',
			clickable: true,
			renderBullet: function (index, className) {
				return '<li class="' + className + '"><span>' + (tabName[index]) + '</span></li>';
			},
		},
		on: {	//APETQA-6751 210823 lju02 - 슬라이드 이동시 아코디언 닫기
			slideChange: function () {
				$(".my-accd .qalist > li .cBox").slideUp(100,function(){
					$(this).closest("li").removeClass("open");
				});
			}
		}
	});
	var swiper_chg = $(".tabSwiper").data('el');	//활성화할 스와이퍼값 받아오기
	tabSwiper.slideTo(swiper_chg, 10);	//활성화할 스와이퍼로 이동
}

function callTabSwiperPc(){	/* APET-1227 210730 lju02 */
	setTimeout(function() {
		var winH = $(window).innerHeight();
		var swpT = $(".tabSwiper").offset().top;
		var swTab = $(".swiper-pagination:visible").outerHeight() || 0;
		var footH = $(".footer:visible").outerHeight() || 0;
		
		var slidH = winH - swpT - swTab - footH;
		$('.tabSwiper .swiper-slide').css({"min-height": slidH,"height": ""});	// auto_h 가 주는 높이값 제거 - APETQA-7471 211110 lju02 
	}, 300);
	
	var tabSwiper = new Swiper ('.swiper-container.tabSwiper', {
		// If we need pagination
		slidesPerView: "auto",
		spaceBetween: 0,
		resizeObserver: true,
		effect: "fade",
		fadeEffect: {
		    crossFade: true
		  },
		allowTouchMove: false,
		autoHeight:true,
		pagination: {
			el: '.swiper-pagination',
			clickable: true,
			renderBullet: function (index, className) {
				return '<li class="' + className + '"><span>' + (tabName[index]) + '</span></li>';
			},
			
		},
		on: {	//APETQA-6751 210823 lju02 - 슬라이드 이동시 아코디언 닫기
			slideChange: function () {
				$(".my-accd .qalist > li .cBox").slideUp(100,function(){
					$(this).closest("li").removeClass("open");
				});
			}
		}
	});
	var swiper_chg = $(".tabSwiper").data('el');	//활성화할 스와이퍼값 받아오기
	tabSwiper.slideTo(swiper_chg, 300);	//활성화할 스와이퍼로 이동
	setTimeout(function() {
		window.dispatchEvent(new Event('resize')); // 스와이퍼 사이즈 조정
	}, 300);
	
	$(document).on("click", ".my-accd .qalist>li .hBox .tit, .btnTog", function() {
		setTimeout(function() {
			tabSwiper.updateAutoHeight(300);
		}, 100);
				
	});
	
}

function recomRefresh(){
	$(".refresh").bind("touchend", function(e){
		$("body").removeClass("sc_had_on");
		$(".header .hdr").removeClass("active").css("border-bottom","");
		
	});
}



//모바일 2줄 스와이퍼 일때 더보기 버튼 위치 - APETQA-7504 211119 lsy 
function callSwiper2LineMo(){
	
	$(".swiper2line").each(function(index, element){
		var $this = $(this);
		$this.addClass('swiper' + index);
	
		var s2lineHeight = $(".swiper2line.swiper" + index + " .swiper-wrapper").height();
		var s2lineMoreHeight = $(".swiper2line.swiper" + index + " .more_box").height();
		$(".swiper2line.swiper" + index + " .more_box").css("position","absolute");
		$(".swiper2line.swiper" + index + " .more_box").css("top", (s2lineHeight/2) - (s2lineMoreHeight/2));
	
	});
}

// lock 걸때 height값 설정 - APETQA-6899 220217 lju02
// 이 항목 전체 적용 요망 - CSR-2491
function setScreenSize() {
	let vh = window.innerHeight * 0.01;
	document.documentElement.style.setProperty('--vh', `${vh}px`);

	var agent = navigator.userAgent.toLowerCase();
	//우리아이등록 버튼 위치
	if( $(".pet-wrap").length ) {
		if( vh < 5 ){
			$(".btnSet").removeClass("fix_bottom").addClass("fix_bot");
			$(".step-area").css("padding-bottom", "0");
		} else {
			$(".btnSet").removeClass("fix_bot").addClass("fix_bottom");
			$(".step-area").removeAttr("style");
		}
		if(agent.indexOf('iphone')>-1){
			$('.input input').on("focus", function(){
				$(".btnSet").removeClass("fix_bottom").addClass("fix_bot");
				$(".step-area").css("padding-bottom", "0");
			});
			$('.input input').on("blur", function(){
				$(".btnSet").removeClass("fix_bot").addClass("fix_bottom");
				$(".step-area").removeAttr("style");
			});
		}else if(agent.indexOf('sm-f916n')>-1){
			$("#step2 .btnSet, #step3 .btnSet").removeClass("fix_bottom").addClass("fix_bot");
				$(".step-area").css("padding-bottom", "0");
		}else if(agent.indexOf('sm-f926n')>-1){
			$("#step2 .btnSet, #step3 .btnSet").removeClass("fix_bottom").addClass("fix_bot");
				$(".step-area").css("padding-bottom", "0");
		}
	}
}

// 페이지 스크롤 방향 감지 ('up' or 'down' 값을 HTML 태그의 'data-scrolldir' attribute에 추가)
let lastPageScrollTop = 0;
let currentPageScrollTop = 0;
function scrollDir() {
  const st = window.pageYOffset || document.documentElement.scrollTop;
  let _dir;
  if (st > lastPageScrollTop) {
    // downscroll
    _dir = 'down';
    if ($('html').attr('data-scrolldir') != 'down') {
      $('html').attr('data-scrolldir', 'down');
    }
  } else {
    // upscroll
    _dir = 'up';
    if ($('html').attr('data-scrolldir') != 'up') {
      $('html').attr('data-scrolldir', 'up');
    }
  }
  lastPageScrollTop = st <= 0 ? 0 : st;
  const windowHeight = $(window).height();
  const bodyHeight = $('body').height();
  const scrollLength = Math.round(bodyHeight - windowHeight);
  if (lastPageScrollTop > 0 && scrollLength <= lastPageScrollTop) {
    // 스크롤이 최하단인 경우 하단 메뉴 숨김처리 (일부 iOS 이슈 보정)
    vScrollAction('down', lastPageScrollTop);
  } else {
    vScrollAction(_dir, lastPageScrollTop);
  }
}
// 페이지 스크롤 방향 변경시 실행되는 함수
function vScrollAction(direction, lastPageScrollTop) {
  const $header = $('header.header-mo').length > 0 ? $('header.header-mo') : null;
  const $bottomNav = $('#bottomNav').length > 0 ? $('#bottomNav') : null;
  const $bottomFloatNav = $('.floatNav').length > 0 ? $('.floatNav') : null;
  const $btnTop = $('.floatNav').find('.pd.tp').length ? $('.floatNav').find('.pd.tp') : null;
  const mainStickyEl = '.sect.mn .wrap-rank-category';  // 메인 콘텐츠 내 sticky 속성을 가지는 요소
  const headerHeight = $header != null ? $header.outerHeight() : 0;
  const chkNumTop = 400;    // 이벤트가 발생하는 top 스크롤 값

  // 스크롤이 시작되면 헤더 영역 하단 라인 추가
  if (lastPageScrollTop < 10) {
    if ($header != null) $header.removeClass('bottom-line');
  } else {
    if ($header != null) $header.addClass('bottom-line');
  }

  if (direction == 'up') {  // scroll up
    // header
    if ($header != null) $header.removeClass('hide');
    // bottom
    if ($bottomNav != null) $bottomNav.removeClass('hide');
    // bottom float nav
    if ($bottomFloatNav != null) $bottomFloatNav.removeClass('down');
    if (lastPageScrollTop < chkNumTop) {
      // bottom float nav > to top
      if (!$('body').is('[data-scroll]') && $btnTop != null) $btnTop.addClass('disabled');
    }
    // 메인 콘텐츠 내 sticky 속성을 가지는 요소
    if ($(mainStickyEl).length > 0) {
      $(mainStickyEl).css('top', headerHeight + 'px');
    }

  } else {  // scroll down
    // bottom
    if ($bottomNav != null) $bottomNav.addClass('hide');
    // bottom float nav
    if ($bottomFloatNav != null) $bottomFloatNav.addClass('down');
    if (lastPageScrollTop >= chkNumTop) {
      // header
      if ($header != null) $header.addClass('hide');
      // bottom float nav > to top
      if ($btnTop != null) $btnTop.removeClass('disabled');
    }
    // 메인 콘텐츠 내 sticky 속성을 가지는 요소
    if ($(mainStickyEl).length > 0) {
      $(mainStickyEl).css('top', '56px');
    }
  }
}

function topBanner(){
	timer = setTimeout(function(){
		var topBannerH = $(".top_banner_wrap").innerHeight();
		var moNavTopP = topBannerH + 56;
		var pcNavTopP = topBannerH + 138;
		// document.documentElement.style.setProperty('--tobBannerH', `${topBannerH}px`);

		$(".header .hdr").css({"top":topBannerH + "px"});
		$(".container").css({"padding-top":topBannerH + "px"});
		$("nav.lnb>.inr").css({"top":pcNavTopP + "px"});
		$("nav.subtopnav > .inr").css({"top":moNavTopP + "px"});
		$(".top_banner_wrap").addClass("open");
	}, 300);

	$(document).on("click", ".top_banner_close", function() {
		$(".top_banner_wrap").removeClass("open");
		$(".header .hdr, nav.subtopnav>.inr, .container, nav.lnb>.inr").removeAttr("style");
		try{
			var cookieName	= getTopbannerCookieName();
			setCookieTopBanner(cookieName, "done", 1);

			timer = setTimeout(function(){
				$(".top_banner_wrap").remove();
			}, 1000);
		}catch(e){}

	});
}

function setCookieTopBanner(name, value, expire){
	console.log("setCookieTopBanner name=["+name+"]");
	var todayDate 	= new Date();
	var newDate 	= new Date(todayDate.getFullYear(), todayDate.getMonth(), todayDate.getDate(), "23", "59", "59"); //당일 자정으로 셋팅
	document.cookie = escape(name) + "=" + escape( value ) + "; path=/; expires=" + newDate.toUTCString() + ";"

	console.log(name+"="+document.cookie.indexOf(name+"=done"));
}


function iosTopFixed(){
	var agent = navigator.userAgent.toLowerCase(); 
	$("textarea").each(function(){
		$(this).bind("focus", function(){
			if(agent.indexOf('iphone')>-1){
				$('.popLayer.a>.pbd>.phd>.in').css({
					'position': 'absolute',
					'transform': 'translate3d(0, ' + ($(window).scrollTop()) + 'px, 0)'
				});
				
				setTimeout(function() {
					$('.popLayer.a>.pbd>.phd>.in').css({
						'transform': 'translate3d(0, ' + $(window).scrollTop() + 'px, 0)',
					});
				}, 200);
			}
			$(window).scroll(function(){
				
				if(agent.indexOf('iphone')>-1){
					$('.popLayer.a>.pbd>.phd>.in').css({
						'transform': 'translate3d(0, ' + ($(window).scrollTop()) + 'px, 0)'
					});
				}
			});
		});
		$(this).bind("blur",function(){
			if(agent.indexOf('iphone')>-1){
				$('.popLayer.a>.pbd>.phd>.in').removeAttr('style');
			}
		});

		
	});
}