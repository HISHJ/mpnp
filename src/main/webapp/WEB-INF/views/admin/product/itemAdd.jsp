<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="showAdd"%>
    
    

    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>상품관리-상품추가</title>
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
        <style type="text/css">
        body{background-color : #fff;}
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--제이쿼리-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script type="http://localhost/mpnp/3rdAdmin/text/javascript" src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    	<script type="text/javascript">
    	
 		//카테고리
   		$(function(){
   			
   			$("#main").change(function(){
   				if($("select[name=main_id]").val()!="none"){
   					setSub();
   				}//end if
   			});//change
   		});//ready
   		
   		function setSub(){
   			
   			var data ={
   				mainid : $("select[name=main_id]").val()
   			}
   			console.log(data)
   			
   			$.ajax({
   				
   				url: "admin_category.do",
   				data : data,
   				dataType: "json",
   				type:"get",
   				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
   				error : function(xhr){
   					alert("잠시후 다시 시도해주세요")
   					console.log("에러 : " + xhr.status);
   				},
   				success : function(jsonObj){
   					if(jsonObj.resultFlag){
   							var categorySel=document.frm.sub_id;
   	   						categorySel.length=1;
   						$.each(jsonObj.subData,function(i,json){
   	   						
   	   							categorySel.options[i+1]=new Option(json.subname,json.subid)
   	   						
   	   				
   						});
   					}//end if
   					
   				}//success
   				
   				
   			});//ajax 
   			
   		}//subid
    	
    	
    	//썸네일이미지 미리보기
		function thImgSet(input) {
			  if (input.files && input.files[0]) {
			    var reader = new FileReader();
			    reader.onload = function(e) {
			      document.getElementById('thImgPreview').src = e.target.result;
			    };
			    reader.readAsDataURL(input.files[0]);
			  } else {
			    document.getElementById('thImgPreview').src = "";
			  }
		}
    	
    	//추가하기버튼

     	function addBtn() {
     	
 
          
            var main=$("#main").val();
            if(main.trim()==""){
            	alert("대분류를 입력해주세요.")
            }
            
            
            var sub=$("#sub").val();
            if(sub.trim()==""){
            	alert("소분류를 입력해주세요")
            	}

    		
     		//유효성 검증 
    		var name=$("#name").val();
			if(name.trim()==""){ //null 아니라 ""로 처리
				alert("상품명을 입력해주세요");
				$("#name").focus();	
				return;
			}
			
			
			var price=$("#price").val();
			if(price.trim()==""){
				alert("금액을 입력해주세요");
				$("#price").focus();	
				return;
			}
			
			if(price<1000){
				alert("금액은 최소 1,000원 부터입니다");
				$("#price").focus();	
				return;
			}
			var thImg=$("#thImg").val();
			var infoImg=$("#infoImg").val();
			
			
			//파일은 focus 안돼서 뺌
		
			//썸네일, 정보이미지 확장자 확인
			if(thImg==""||infoImg==""){ //main이미지는 없는 것도 있으니까
				alert("업로드할 파일을 선택해주세요");
				return;
			}
			  

		//이미지 파일 확장자 제한
			var blockExt="jpg,jpeg,png,do".split(",");
			var flag1=false;
			
			var thImgExt=thImg.substring(thImg.lastIndexOf(".")+1);
			var infoImgExt=infoImg.substring(infoImg.lastIndexOf(".")+1);
			
			//이렇게 하면 쓸데없이 많이 도는거 같은데 ...
		for(var i=0; i<blockExt.length; i++){
				for(var j=0; j<blockExt.length; j++){
					for(var k=0; k<blockExt.length; k++){
						if(blockExt[i]==thImgExt&&blockExt[k]==infoImgExt){
							flag1=true;
						}
					}
				}
			} 
			 
	 	if(!flag1){
			alert("※파일 형식을 다시 확인해주세요");
				return flag;
			} 
			 
	
	 	
	 	//상품이미지 확장자 확인
 	 		var mImg0=$("#multiImg0").val();
			var mImg1=$("#multiImg1").val();
			var mImg2=$("#multiImg2").val();
			
			
		
			
		 	if( mImg0 != "" ){

				var ext = mImg0.split('.').pop().toLowerCase();

				      if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1) {

					 alert('※파일 형식을 다시 확인해주세요');

					 return;

				      }

				} 
			
		 	if( mImg1 != "" ){

				var ext = mImg1.split('.').pop().toLowerCase();

				      if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1) {

					 alert('※파일 형식을 다시 확인해주세요');

					 return;

				      }

				} 
			
		 	if( mImg2 != "" ){

				var ext = mImg2.split('.').pop().toLowerCase();

				      if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1) {

					 alert('※파일 형식을 다시 확인해주세요');

					 return;

				      }

				} 
			
			
			
	
			 
	 	

		
			if(confirm("상품을 추가하시겠습니까?")){
				var form=document.getElementById('frm')
    			var formData = new FormData(form);
    	
    		$.ajax({
    			url:"admin_prdinsert_process.do",
    			type : "POST",
    			data : formData,
    			enctype:'multipart/form-data',
    			processData: false,
	               contentType: false,
    			 success: function (result) {
    		    		alert("상품이 추가되었습니다.")
    		    	
    		    		
    		            },error : function(xhr){
    		            	alert(xhr.status+"에러")
    		            }//error
    			
    			
    		});//ajax  
				
				
				
			} 
		 
     	
		}//addBtn 
	
		

		
		
		
    	</script>
    
    </head>
    <body>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <!-- col lg 5 - 크기 조정 -->
                            <div class="col-lg-6">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header navy bg-dark"><h3 class="text-start text-white font-weight-light my-4 " style="font-weight: bold;">상품추가</h3></div>
                                    <div class="card-body">
                                       
                                       <!-- 추가안되면 close form위치 바꾸기  -->
                                     <form id="frm" name="frm" action="admin_prdinsert_process.do" enctype="multipart/form-data" method="post" >
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-4"><img id="thImgPreview" class="img-thumbnail" src="img/no_img.jpg" alt="썸네일이미지"></div>
                                        </div>  
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품명</b></div> 
                                            <div class="col-6"><input id="name" name="name" type="text" class="dataTable-input" value="제발돼라" placeholder="상품명을 입력해주세요"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>분류1</b></div> 
                                            <div class="col-4">
                                                	<select name="main_id" id="main" class="dataTable-dropdown dataTable-selector">
			                                              <option value="none">---분류1---<option>
			                                			 <option value="m0001">강아지</option>
			                                	         <option value="m0002">고양이</option>
												</select>
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>분류2</b></div> 
                                            <div class="col-4">
                                     
                                                <select name="sub_id" id="sub" class="dataTable-dropdown dataTable-selector">
                                                	<option value="none">---분류2---<option>
												  </select>
									
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>가격</b></div>
                                            <div class="col-4"><input type="text" name="price" id="price" class="dataTable-input" placeholder="숫자만 입력해주세요"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품상태</b></div> 
                                            <div class="col-4">
                                                <select name="status" id="status" class="dataTable-dropdown dataTable-selector">
                                                <option value="Y">판매중</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>썸네일이미지</b></div> <div class="col-4">
                                            	<input type="file" name="thImg" id="thImg" onchange="thImgSet(this);"  value="파일선택" accept="jpg,jpeg,png"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품이미지</b></div> 
                                            <div class="col-4" id="__add"> 

                                            	<input type="file"  name="multiImg0" id="multiImg0" value="파일선택" >
                                            	<input type="file"  name="multiImg1" id="multiImg1" value="파일선택">
                                            	<input type="file"  name="multiImg2" id="multiImg2" value="파일선택">
                                    
                                            	
                                            	</div>
                                            	
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>소개이미지</b></div><div class="col-4">
                                                <input type="file" name="infoImg" id="infoImg" value="파일선택" accept="jpg,jpeg,png">
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"></div><div class="col-8 text-secondary">※jpg,jpeg,png 파일만 등록할 수 있습니다</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"></div><div class="col-8 text-secondary">※썸네일 이미지와 소개 이미지는 필수입니다</div>
                                        </div>
                                    </form>
                                    
                                   	<form id="imgfrm" name="imgfrm" action="admin_prdinsert_process.do" >
                                   		<input type="hidden" id="prdimg">
                                   		
                                   		
                                   		
             
                                   	</form>
                                       
                                        
                                        
                                             <div class="mt-4 mb-0">
                                                 <div class="col text-center">
                                                     <a class="btn btn-info btn-sm" onclick="addBtn()">추가</a>
                                                     <a class="btn btn-light btn-sm" onclick="history.back()">닫기</a>
                                                 </div>
                                             </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
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
