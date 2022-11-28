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
        <title>등급관리-등급추가</title>
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
        <style type="http://localhost/mpnp/3rdAdmin/csstext/css">
        body{background-color : #fff;}
        textarea {height:90; resize: none;}
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--제이쿼리-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    	<script type="text/javascript">
/*     	$(function(){
    		$(".add_btn").click(function(){
    		//유효성 검증 
    			if(confirm("등급을 추가하시겠습니까?")){
    		var name=$("#gradeName").val();
			var gradeId=$("#gradeId").val();
			var level = $("#level").val();
			var discount = $("#discountRate").val()*1;
			var minPrice = $("#minPrice").val()*1;
			var maxPrice = $("#maxPrice").val()*1;
			var gradeInfo = $("#gradeInfo").val()
			
			if( gradeId.trim()==""){ //null 아니라 ""로 처리
				alert("등급코드를 입력해주세요");
				$("#gradeId").focus();	
				return false;
			}
			
			if(name.trim()==""){ //null 아니라 ""로 처리
				alert("등급명을 입력해주세요");
				$("#name").focus();	
				return false;
			}
			
			if( level.trim()==""){ //null 아니라 ""로 처리
				alert("등급레벨을 입력해주세요");
				$("#level").focus();	
				return false;
			}
			
			if( discount.trim()==""){ //null 아니라 ""로 처리
				alert("적용할 할인율을 입력해주세요");
				$("#discount").focus();	
				return false;
			}
			
			if(  minPrice.trim()==""){ //null 아니라 ""로 처리
				alert("적용할 최소금액을 입력해주세요");
				$("#minPrice").focus();	
				return false;
			}
			if(  maxPrice.trim()==""){ //null 아니라 ""로 처리
				alert("적용할 최소금액을 입력해주세요");
				$("#maxPrice").focus();	
				return false;
			}//
			if(  gradeInfo.trim()==""){ //null 아니라 ""로 처리
				alert("새로운 등급에 대한 소개를 작성해주세요");
				$("#gradeInfo").focus();	
				return false;
			}//
			
			alert("----------");
			$.ajax({
				url:"admin_g_add_process.do",
				data:"gradeName=" + gradeName+"&level=" + level + "&discountRate=" + discountRate	+ "&minPrice=" + minPrice + "&maxPrice=" + maxPrice + "&gradeId=" + gradeId,	
				dataType:"json",
				success:function(jsonObj){
					if(jsonObj.addFlag){
						alert("등급추가가 완료되었습니다");
						location.href="admin_g_list.do";
					}
				}
				error:function(xhr){
					alert(xhr.status);
					alert(xhr.statusText);
					alert(xhr.state());
				},
				
				
			})//ajax
    			}
    		})//click
    	})//ready */
    	
    	$(function(){
    		$(".add_btn").click(function(){
    		//유효성 검증 

    		var name=$("#gradeName").val();
			var gradeId=$("#gradeId").val();
			var level = $("#level").val();
			var discount = $("#discountRate").val();
			var minPrice = $("#minPrice").val();
			var maxPrice = $("#maxPrice").val();
			var gradeInfo = $("#gradeInfo").val()

	
			
			if( gradeId.trim()==""){ //null 아니라 ""로 처리
				alert("등급코드를 입력해주세요 ex) G7");
				$("#gradeId").focus();	
				return false;
			}
			
			if(!gradeId.startsWith( 'G', 0 )){ //null 아니라 ""로 처리
				alert("등급코드는 G로 시작해야 합니다.");
				$("#gradeId").focus();	
				return false;
			}
			
		/* 	if(!gradeId.startsWith( 'G'.toLowerCase(), 0 )){ //null 아니라 ""로 처리
				alert("등급코드는 G로 시작해야 합니다.");
				$("#gradeId").focus();	
				return false;
			}
			 */
		
			
			if(gradeId.length > 5 || gradeId.length < 2){ //null 아니라 ""로 처리
				alert("등급코드의 길이는 2자 이상 5자 이하로 제한되어있습니다.");
				$("#gradeId").focus();	
				return false;
			}
			
			if(name.trim()==""){ //null 아니라 ""로 처리
				alert("등급명을 입력해주세요 ex) SILVER ");
				$("#name").focus();	
				return false;
			}
			
			if( level.trim()==""){ //null 아니라 ""로 처리
				alert("등급레벨을 입력해주세요 ex) lev5");
				$("#level").focus();	
				return false;
			}
			
			 if( discount == ""){ //null 아니라 ""로 처리
					alert("적용할 할인율을 입력해주세요");
					$("#discount").focus();	
					return false;
				}
			
			 if( discount > 25){ //null 아니라 ""로 처리
					alert("고객에게 제공되는 최대 할인율은 25%입니다.");
					$("#discount").focus();	
					return false;
				}
			 
			 if(  minPrice.trim()==""){ //null 아니라 ""로 처리
					alert("적용할 최소금액을 입력해주세요");
					$("#minPrice").focus();	
					return false;
				}
				if(  maxPrice.trim()==""){ //null 아니라 ""로 처리
					alert("적용할 최대금액을 입력해주세요");
					$("#maxPrice").focus();	
					return false;
				}//
				if(minPrice*1 > maxPrice *1){
					alert("최소금액이 최대금액보다 클 수는 없습니다.");
					$("#minPrice").focus();	
					return false;
				}
					
					
				if(  gradeInfo.trim()==""){ //null 아니라 ""로 처리
					alert("새로운 등급에 대한 소개를 작성해주세요");
					$("#gradeInfo").focus();	
					return false;
				}//
				
				
				if(  gradeInfo < 10 || gradeInfo > 201){ //null 아니라 ""로 처리
					alert("최소 10자이상 200자 이하로 작성해주세요.");
					$("#gradeInfo").focus();	
					return false;
				}// 
				
			
			
			if(confirm("등급을 추가하시겠습니까?")){
				$("#gradeFrm").submit();
			} else{
				return false;
			}
			
		
			
			
    		})//click
    	})//ready
	
		
    	
    	</script>
    
    </head>
    <body>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                <form action="http://localhost/mpnp/admin_g_add_process.do" id="gradeFrm" name="gradeFrm" method="post"> 
                    <div class="container">
                        <div class="row justify-content-center">
                            <!-- col lg 5 - 크기 조정 -->
                            <div class="col-lg-6">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header navy bg-dark"><h3 class="text-start text-white font-weight-light my-4 " style="font-weight: bold;">등급 추가</h3></div>
                                    <div class="card-body">
                                       
                                        <div class="dataTable-top"></div>
                                         <div class="row">
                                            <div class="col-3"><b>등급코드</b></div> 
                                            <div class="col-4">
                                            <input id="gradeId"  style="text-transform: uppercase;" name="gradeId" type="text" class="dataTable-input"  onKeyup="this.value=this.value.replace(/[^a-zA-Z-_0-9]/g,'');" placeholder="등급코드" maxlength="5">
                                            <input type="hidden">
                                            </div>
                                        </div>
                                        <div class="row" style="margin-top:10px;">
                                            <div class="col-3"><b>등급명</b></div> 
                                            <div class="col-4">
                                            <input style="text-transform: uppercase;" onKeyup="this.value=this.value.replace(/[^a-zA-Z-_0-9]/g,'');" id="gradeName" name="gradeName" type="text" class="dataTable-input"  maxlength="10" placeholder="등급명">
                                             <input type="hidden">
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>등급레벨</b></div> 
                                            <div class="col-2">
                                                <input onKeyup="this.value=this.value.replace(/[^a-zA-Z-_0-9]/g,'');" id="level" name="level" type="text" class="dataTable-input"  maxlength="6"  placeholder="등급레벨"  style="width:100px">
                                             <input type="hidden">
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>할인율</b></div> 
                                            <div class="col-2">
                                            <input type="text" name="discountRate" id="discountRate" class="dataTable-input" maxlength="2" placeholder="할인율">
                                             <input type="hidden">
                                            </div>
                                            <div class="col-2 mt-2">(%)</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>구매금액</b></div>
                                            <div class="col-3">
                                            <input type="text" name="minPrice" id="minPrice" class="dataTable-input" maxlength="9" placeholder="시작값(원)">
                                             <input type="hidden">
                                            </div>
                                            <div class="col-1 mt-2">~</div>
                                            <div class="col-3"><input type="text" name="maxPrice" id="maxPrice" class="dataTable-input" maxlength="9" placeholder="끝값(원)">
                                             <input type="hidden">
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>설명</b></div> 
                                            <div class="col-8">
                                            <textarea class="dataTable-input" name="gradeInfo" id="gradeInfo" maxlength="150" placeholder="등급에 대한 정보를 입력해주세요"></textarea>
                                            
                                            </div>
                                        </div>
                                        </form>
                                        
                                             <div class="mt-4 mb-0">
                                                 <div class="col text-center">
                                                     <button class="btn btn-info btn-sm add_btn"  >추가</button>
                                                     <a class="btn btn-light btn-sm" onclick="history.back()">닫기</a>
                                                 </div>
                                             </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                </main>
                    </div>
                    
                   
            </div>
            
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                           
                           
                        </div>
                    </div>
                </footer>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
       <script src="http://localhost/mpnp/3rdAdmin/js/scripts.js"></script>
    </body>
</html>
