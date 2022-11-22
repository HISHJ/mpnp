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
        <link href="css/styles.css" rel="stylesheet" />
        <style type="text/css">
        
        body{background-color : #fff;}
        
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--제이쿼리-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script type="text/javascript">
       
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
			
			
        	$("#modifyBtn").click(function() {
        		//유효성 검증 
        		var name=$("#name").val();
    			if(name.trim()==""){ //null 아니라 ""로 처리
    				alert("공연명을 입력해주세요");
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
    			var mImg=$("#mImg").val();
    			var infoImg=$("#infoImg").val();
    			
    			if(thImg==""||infoImg==""){ //main이미지는 없는 것도 있으니까
    				alert("업로드할 파일을 선택해주세요");
    				return;
    			}
            	
    			//이미지 파일 확장자 제한
    			var blockExt="jpg,jpeg,png,do".split(",");
    			var flag=false;
    			
    			var thImgExt=thImg.substring(thImg.lastIndexOf(".")+1);
    			var mImgExt=mImg.substring(mImg.lastIndexOf(".")+1);
    			var infoImgExt=infoImg.substring(infoImg.lastIndexOf(".")+1);
    			
    			//이렇게 하면 쓸데없이 많이 도는거 같은데 ...
    			for(var i=0; i<blockExt.length; i++){
    				for(var j=0; j<blockExt.length; j++){
    					for(var k=0; k<blockExt.length; k++){
    						if(blockExt[i]==thImgExt&&(blockExt[j]==mImgExt||mImgExt=="")&&blockExt[k]==infoImgExt){
    							flag=true;
    						}
    					}
    				}
    			}
    			
    			if(!flag){
    				alert("※파일 형식을 다시 확인해주세요");
    				return flag;
    			}
    			
        		if(confirm("공연을 수정하시겠습니까?")){
        			$("#updateFrm").submit();
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
                                       
                                    <form id="updateFrm" action="show_update.jsp">
                                    	
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                             <div class="col-4"><img id="thImgPreview" class="img-thumbnail" alt="썸네일이미지" src="img/no_img.jpg"></div> 
                                        </div> 
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품코드</b></div> 
                                            <div class="col-6"><input id="" name="" type="text" class="dataTable-input" value="${data.productid }" placeholder="" readonly="readonly"></div>
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
                                                <select name="" class="dataTable-dropdown dataTable-selector">
                                                <option></option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>분류2</b></div> 
                                            <div class="col-4">
                                                <select name="" class="dataTable-dropdown dataTable-selector">
                                                <option></option>
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
                                                <select name="" class="dataTable-dropdown dataTable-selector">
                                                <option>판매중</option>
                                                <option>판매중지</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>썸네일이미지</b></div> <div class="col-4"><input type="file" name="thImg" id="thImg" onchange="thImgSet(this);" value="파일선택" ></div>
                                            <div class="col-2 my-1"><b>원본파일</b></div><div class="col-4 my-1"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품이미지</b></div> <div class="col-4">
                                            	<input type="file"  name="multiImg" id="multiImg" multiple="multiple" value="파일선택"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>소개이미지</b></div><div class="col-4"><input type="file" name="infoImg" id="infoImg" value="파일선택"></div>
                                            <div class="col-2 my-1"><b>원본파일</b></div><div class="col-4 my-1"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"></div><div class="col-8 text-secondary">※jpg,jpeg,png,bmp,do 파일만 등록할 수 있습니다</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"></div><div class="col-8 text-secondary">※썸네일과 소개 이미지는 필수입니다</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                        	<div class="col-2"><b>상품추가일</b>: ${data.inputdate }</div> <div class="col-6"></div>
                                        </div>
                                     
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
        <script src="js/scripts.js"></script>
    </body>
</html>
