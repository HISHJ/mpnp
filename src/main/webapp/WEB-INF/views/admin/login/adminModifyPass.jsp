<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
<!DOCTYPE html>
<html>
 <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>정보변경-비밀번호 변경</title>
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
        <style type="text/css">
        
        body{background-color : #fff;}

        section#header{
 	background: url("images/subvisual-common.jpg") no-repeat ; 
  	background-size: 100%; 
  	background-attachment: fixed;
  
	}
        
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
          <!--제이쿼리-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
   	
    
    </head>
    <body>
    <script type="text/javascript">
    
    
    //유효성검증 시작
    	/* //기존 비번 키코드
    	$("#pass").keydown(function(evt){
    		if(evt.which == 13){
    			passChk();
    		};//end if
    	});//keydown
    	
    	//새 비번 키코드
    	$("#newpass").keydown(function(evt){
    		if(evt.which == 13){
    			passChk();
    		};//end if
    	});//keydown
    	
    	$("#newpass2").keydown(function(evt){
    		if(evt.which == 13){
    			passChk();
    		};//end if
    	});//keydown */
    	
    	
    $(function(){
    	$("#changBtn").click(function(){
    		//passChk(); 
     		if(passChk()){ //이거 하는 자체가 함수를 부르는거야
	    		$("#changPassFrm").submit();
    		} 
    	})///end click
    })//ready
    
    function passChk(){
    	
    	var pass = $("#pass").val();
    	var newpass = $("#newpass").val();
    	var newpass2 = $("#newpass2").val();
    	
        var num = newpass.search(/[0-9]/);
		var eng = newpass.search(/[a-zA-Z]/);
		var spe=  newpass.search(/[~!@#$%^&*()_+|<>?:{}]/); 
    	
    	
    	if(pass.trim()==""){
    		alert("현재 비밀번호를 입력해주세요."); //왜 두번 불리지 ? 함수를 두번부르는 중 
    		$('#pass').focus();
    		return false;
    	}
    	
     	if(newpass.trim()==""){
    		alert("새로운 비밀번호를 입력해주세요");
    		$('#newpass').focus();
    		return false;
    	}
    	
    	if(newpass2.trim()==""){
    		alert("새로운 비밀번호를 입력해주세요");
    		$('#newpass2').focus();
    		return false;
    	}
    	
    	if(newpass.trim() != newpass2.trim()){
    		alert("비밀번호가 일치하지 않습니다.");
    		$('#newpass2').val("");
    		$('#newpass2').focus();
    		return false;
    	}
    	
    	 if(newpass.length<8||newpass.length>21){
    		 alert("8자리 ~ 21자리 이내로 입력해주세요.");
    		 $('#newpass').focus();
      		 return false;
    	}
    	
    	 if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
			  alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
			  $("#newpass").focus();
			  return false;
		}
    	
	return true;
    	
    }//passChk()
    </script>
    
    
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main style="display:flex;justify-content: center;margin-top:9%;">
                    <div class="container" >
                        <div class="row justify-content-center" >
                            <div class="col-lg-5"  style="height:500px;">
                                <div class="card shadow-lg border-0 rounded-lg mt-5" style="height:100%;border:2px solid #6c757d;">
                                    <div class="card-header navy bg-dark"><h3 class="text-start text-white font-weight-light my-4" style="font-weight: bold;">비밀번호 변경</h3></div>
                                    <form class="form-horizontal" id="changPassFrm" name="changePassFrm" action="admin_modify_pass_process.do" method="post">
                                    <div class="card-body">
                                            <div class="mt-4 mb-0">
                                                <div class="form-group">
                                                    <div class="col-mb-3">
                                                    <input class="form-control" id="pass" name="pass" type="password" placeholder="현재 비밀번호" autofocus="autofocus"  style="padding:15px;"/>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="form-group">
                                                    <div class="col-mb-3">
                                                        <input class="form-control" id="newpass" name="newpass" type="password" placeholder="새 비밀번호" style="padding:15px;"/>
                                                    </div>
                                                </div>
                                            <div class="mt-4 mb-0">
                                                <div class="form-group">
                                                    <div class="col-mb-3">
                                                        <input class="form-control" id="newpass2" name="newpass2" type="password" placeholder="새 비밀번호 확인" style="padding:15px;"/>
                                                        <label for="inputPassword" class="col-sm-12 breadcrumb-item small active">영문,숫자,특수문자 중 2종류 이상 8~12글자 이내</label>
                                                    </div>
                                                    </div>
                                                    </div>
                                            </div>
                                            
                                                <div class="mt-3 mb-0">
                                                    <div class="col text-center">
                                                        <input type="button" class="btn btn-info btn-sm" id="changBtn" value="변경" style="padding:10px 20px;font-weight:bold;font-size:16px;"/>
                                                        <input type="button" class="btn btn-light btn-sm" id="cancelBtn" onClick="javacript:history.back();" value="취소" style="padding:10px 20px;font-weight:bold;font-size:16px;background-color:whitesmoke;color:#6c757d;"/>
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                          </form>  
                                    </div>
                                </div>
                            </div>
                        </div>
                         </main>
                    </div>              
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="http://localhost/mpnp/3rdAdmin/js/scripts.js"></script>
    </body>
</html>
