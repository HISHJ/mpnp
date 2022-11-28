<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="scriptlet의 사용" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자-로그인</title>
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
      <style type="text/css">
  	
  	body { background: navy !important; } /* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
</style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--제이쿼리-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
   	
    </head>
    <body class="bg-dark">
 
<script type="text/javascript">
$(function(){
	$('#id').keydown(function(evt){
		if(evt.which == 13){
		chkNull()
		};//end if
	});//keydown
	
	$('#pass').keydown(function(evt){
		if(evt.which ==13){
		chkNull()
		};//end if
		
	});//keydown

	$('#lobinBtn').click(function(){
		chkNull()
	});//click
})//end ready

function chkNull(){
	let id=$("#id").val();
	if(id.trim() == ""){
		alert("아이디를 입력해주세요.")
		$("#id").val(""); 
		$("#id").focus(); 
		return false; 
	}else{
		$("#pass").focus(); 
	}
	let pass = $("#lobinBtn").val();
	if(pass.trim() == ""){
		alert("비밀번호를 입력해주세요.");
		$("#lobinBtn").val("");	
		return false; 
	}//endif
	$("#adminLoginFrm").submit();
	
}//chkNull 

//null 유효성 검사 함수
</script>
  
        <div id="layoutAuthentication" >
            <div id="layoutAuthentication_content" >
                <main style="display:flex;justify-content: center;margin-top:10%;">
                    <div class="container" >
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <!-- <div class="card-header"></div> -->
                                    <div class="card-body">
                                     	<h1 class="text-center text-info fw-bold my-4 font_header " >C&nbsp;M&nbsp;S&nbsp;</h1>
                                    	<h6 class="text-center fw-bold my-4 ">관리자계정입니다.</h6>
                                        <form id="adminLoginFrm" name="adminLoginFrm" action="admin_login_process.do" method="get">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="id" name="id" type="text" placeholder="ID" autofocus="autofocus" value="admin"/>
                                                <label for="inputEmail">ID</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="pass" name="pass" type="password" placeholder="Password" value="wpqkfehofk@"/>
                                                <label for="inputPassword">Password</label>
                                            </div>

                                          
                                            
                                 

                                                <div class="d-grid">
                                                <input type="button" class="btn btn-info btn-block" id="lobinBtn" value="로그인" style="padding:13px 0px;font-size:18px;font-weight:bold;" >                  
                                                </div>
                                           
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3 bg-footer" >
                                        <div class="big"> 아이디/비밀번호 분실 및 로그인 관련 문의는<br/>
                                         전산정보실 담당자 홍길동<br/>
                                        연락처 02-312-4112로 문의하시기 바랍니다.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="http://localhost/mpnp/3rdAdmin/js/scripts.js"></script>
    </body>
</html>
