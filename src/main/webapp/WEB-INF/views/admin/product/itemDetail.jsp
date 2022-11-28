<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="showDetail.jsp"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>상품관리-상품상세내역</title>
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
        <style type="text/css">
        
        body{background-color : #fff;}
        
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--제이쿼리-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script type="text/javascript">
      //카테고리
      	 firstScreen=true;
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
   	   				
   						if(firstScreen){
   						$("#sub").val("${data.subid}").prop("selected",true);
   							 firstScreen=false;
   						}		
   					
   								
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
		

   		
		
        /* add page랑 유효성검증 완전 같지 않음. 추후 수정할 때 주의 */
        $(function() {
			//삭제하기
        	$("#removeBtn").click(function() {
        		var name=$("#name").val();
        		var delMsg=confirm("공연을 삭제하시겠습니까?");
        		
    			if(delMsg){
    				alert("'"+name+"'가 삭제되었습니다");
    				$("#deleteFrm").submit();	
    			}else{
    				return;
    			}
				
			});
			
			
        	$("#modifyBtn").click(function(){
        		
       		var productid=$("#productid").val();
        		
        		
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
    			
            	//파일은 focus 안돼서 뺌
    			var thImg=$("#thImg").val();
    		
    			var infoImg=$("#infoImg").val();
    			
    			if(thImg==""||infoImg==""){ //main이미지는 없는 것도 있으니까
    				alert("업로드할 파일을 선택해주세요");
    				return;
    			}
    			
    			var status=$("#status").val();
    			if(status.trim()==""){ //null 아니라 ""로 처리
    				alert("상태를 입력해주세요");
    			
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
    			
        		if(confirm("상품을 수정하시겠습니까?")){
        		
        			
        			var form=document.getElementById('frm')
        			var formData = new FormData(form);
        	
        		$.ajax({
        			url:"admin_prd_modify.do",
        			type : "POST",
        			data : formData,
        			enctype:'multipart/form-data',
        			processData: false,
  	               contentType: false,
        			
        		
        			 success: function (result) {
        		    		alert("상품이 변경되었습니다.")
        		    		
        		            },error : function(xhr){
        		            	alert(xhr.status+"에러")
        		            }//error
        			
        			
        		});//ajax  
        		}
			});//변경
			 
			
		});//ready
		
		
		
        
        
        </script>
        
    </head>
    <body>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <!-- col lg 5 - 크기 조정 -->
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header navyv bg-dark"><h3 class="text-start text-white font-weight-light my-4 " style="font-weight: bold;">상품 상세정보</h3></div>
                                    <div class="card-body">
                                       
                                    <form id="frm" name="frm" enctype="multipart/form-data" method="POST" action="admin_prd_modify.do">
                                    
                                    	
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                             <div class="col-4"><img id="thImgPreview" class="img-thumbnail" alt="썸네일이미지" src="http://localhost/mpnp/images/${data.thimg }"></div> 
                                        </div> 
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품코드</b></div> 
                                            <div class="col-6"><input id="productid" name="productid" type="text" class="dataTable-input" value="${data.productid }" placeholder="" readonly="readonly"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품명</b></div> 
                                            <div class="col-6"><input id="name" name="name" type="text" class="dataTable-input" value="${data.productname }" placeholder="공연명을 입력해주세요"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>분류1</b></div> 
                                            <div class="col-4">
                                             	<select name="main_id" id="main" class="dataTable-dropdown dataTable-selector">
			                                              <option value="none">---분류1---<option>
			                                             
			                                			 <option value="m0001" <c:if test="${data.mainid eq 'm0001' }">selected</c:if>>강아지</option>
			                                	         <option value="m0002" <c:if test="${data.mainid eq 'm0002' }">selected</c:if>>고양이</option>
												</select>
                                                
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>분류2</b></div> 
                                            <div class="col-4">
                                               <select name="sub_id" id="sub" class="dataTable-dropdown dataTable-selector">
                                                	<option value="none">---분류2---<option>
                                                <c:choose>
                                                	<c:when test="${data.mainid eq 'm0001' }">
                                                		<option ${data.subid eq 's0001'?"selected='selected'":""}>강쥐사료</option>
                                                		<option ${data.subid eq 's0002'?"selected='selected'":""}>간식</option>
                                                		<option ${data.subid eq 's0003'?"selected='selected'":""}>패션/의류</option>
                                                		<option ${data.subid eq 's0004'?"selected='selected'":""}>기타</option>
                                                		</c:when>
                                                	<c:when test="${data.mainid eq 'm0002' }">
                                                		<option ${data.subid eq 's0005'?"selected='selected'":""}>냥이사료</option>
                                                		<option ${data.subid eq 's0006'?"selected='selected'":""}>간식</option>
                                                		<option ${data.subid eq 's0007'?"selected='selected'":""}>패션/의류</option>
                                                		<option ${data.subid eq 's0008'?"selected='selected'":""}>기타</option>
                                                		</c:when>
                                            	   </c:choose>
												  </select>  
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>가격</b></div>
                                            <div class="col-4"><input type="text" name="price" id="price" value="${data.price }" class="dataTable-input" placeholder="숫자만 입력해주세요"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상태</b></div> 
                                            <div class="col-4">
                                                <select name="status" id="status" class="dataTable-dropdown dataTable-selector">
                                                <option value="Y">판매중</option>
                                                <option value="N">판매중지</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>썸네일이미지</b></div> <div class="col-4"><input type="file" name="thImg" id="thImg" onchange="thImgSet(this);" value="파일선택" ></div>
                                            <div class="col-2 my-1"><b>원본파일</b></div><div class="col-3 my-1">${data.thimg }</div>
                                        </div>
                                     
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품이미지</b></div> 
                                            <div class="col-4">
                                        		<input type="file"  name="multiImg0" id="multiImg0" value="파일선택" ></div>
                                        
                                   
                                       </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>     </b></div> 
                                            <div class="col-4">
                                        		<input type="file"  name="multiImg1" id="multiImg1" value="파일선택"></div>
                                       </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>     </b></div> 
                                            <div class="col-4">
                                        		<input type="file"  name="multiImg2" id="multiImg2" value="파일선택"></div>
                                   
                                       </div>
                                  
                                         
                              
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>소개이미지</b></div><div class="col-4"><input type="file" name="infoImg" id="infoImg" value="파일선택"></div>
                                            <div class="col-2 my-1"><b>원본파일</b></div><div class="col-3 my-1">${data.infoimg }</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                        	<div class="col-2"><b>상품추가일</b>:</div> <div class="col-6"> ${data.inputdate }</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-3"></div><div class="col-8 text-secondary">※jpg,jpeg,png,bmp,do 파일만 등록할 수 있습니다</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"></div><div class="col-8 text-secondary">※썸네일과 소개 이미지는 필수입니다</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="dataTable-top"></div>
                                     
                                   	</form>  
                                   	
                                        
                                        
                                         <div class="mt-4 mb-0">
                                            <div class="col text-center">
                                            <a class="btn btn-info btn-sm" id="modifyBtn" >변경</a>
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
