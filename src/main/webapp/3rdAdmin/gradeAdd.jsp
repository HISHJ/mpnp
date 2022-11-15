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
        <title>등급관리-등급추가</title>
        <link href="css/styles.css" rel="stylesheet" />
        <style type="text/css">
        body{background-color : #fff;}
        textarea {height:90; resize: none;}
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--제이쿼리-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    	<script type="text/javascript">
    	
    	//추가하기버튼
    	function addBtn() {
    		
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
						if(blockExt[i]==thImgExt&& (blockExt[j]==mImgExt||mImgExt=="")&& blockExt[k]==infoImgExt){
							flag=true;
						}
					}
				}
			}
			
			if(!flag){
				alert("※파일 형식을 다시 확인해주세요");
				return flag;
			}
			
			
			if(confirm("공연을 추가하시겠습니까?")){
				$("#frm").submit();
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
                                    <div class="card-header navy bg-dark"><h3 class="text-start text-white font-weight-light my-4 " style="font-weight: bold;">등급 추가</h3></div>
                                    <div class="card-body">
                                       
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>등급명</b></div> 
                                            <div class="col-4"><input id="name" name="name" type="text" class="dataTable-input" value="등급명"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>등급레벨</b></div> 
                                            <div class="col-2">
                                                <input id="" name="" type="text" class="dataTable-input" value="" placeholder="">
                                            </div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>할인율</b></div> 
                                            <div class="col-2">
                                                <input id="" name="" type="text" class="dataTable-input" value="" placeholder="">
                                            </div>
                                            <div class="col-2 mt-2">(%)</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>구매금액</b></div>
                                            <div class="col-3"><input type="text" name="sPrice" id="sPrice" class="dataTable-input" placeholder="시작값(원)"></div>
                                            <div class="col-1 mt-2">~</div>
                                            <div class="col-3"><input type="text" name="ePrice" id="ePrice" class="dataTable-input" placeholder="끝값(원)"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>설명</b></div> 
                                            <div class="col-8">
                                            <textarea class="dataTable-input"></textarea>
                                            
                                            </div>
                                        </div>
                                        
                                             <div class="mt-4 mb-0">
                                                 <div class="col text-center">
                                                     <a class="btn btn-info btn-sm" onclick="addBtn()" >추가</a>
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
