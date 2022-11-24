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
        <link href="css/styles.css" rel="stylesheet" />
        <style type="text/css">
        body{background-color : #fff;}
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--제이쿼리-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    	<script type="text/javascript">
    	
 		//카테고리
   		$(function(){
   			
   			$("#main").change(function(){
   				if($("select[name=main]").val()!="none"){
   					setSub();
   				}//end if
   			});//change
   		});//ready
   		
   		function setSub(){
   			
   			var data ={
   				mainid : $("select[name=main]").val()
   			}
   			
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
   							var categorySel=document.frm.sub;
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
     	
    var fileInput=document.getElementById("multiImg");
            
            var files=fileInput.files;
            var file ;
       
            for (var i = 0; i < files.length; i++) {
                file = files[i];
              
                console.log(file.name)
     
            
            }
            
  var fileRespository =[];
  $('input[type="file"]').on('change',function(){
	 fileRespository.push(this.files[0]); 
	 console.log( fileRespository )
  });

  var formData = new FormData();
  formData.append('imgFile[]',fileRespository);
  console.log()
    		
    		
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
			var mImg=$("#multiImg").val();
			var infoImg=$("#infoImg").val();
			
			if(thImg==""||infoImg==""){ //main이미지는 없는 것도 있으니까
				alert("업로드할 파일을 선택해주세요");
				return;
			}
			
		/* 	
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
			} */
			
	
		
			if(confirm("상품을 추가하시겠습니까?")){
				$("#frm").submit();
			} 
		 
			
		}//addBtn 
		
    
		/*  상품이미지  */
		//버튼 DIV 변수
 
    //이미지 추가 버튼 클릭시
    function addimg(){
    	alert("ㅇㅇㅇ");
    	 var addedFormDiv = document.getElementById("prdFrm");
    var count = 0;
    	 alert(count);
 	var fileTag = "<input type='file'  name='multiImg' id='multiImg'  value='파일선택'><button type='button'  onchange='addimg()''>추가</button><br/>"
 	if(count<3){
    		count++
    		alert(count);
    		fileTag+="<input type='file'  name='multiImg' id='multiImg_'"+count+1+" value='파일선택'>"
    		fileTag+="<button type='button'  onclick='addimg()''>추가</button>"
    		
 	}else{
 		alert("상품이미지는 최대 3개까지 추가 가능합니다!")
 	}
    		 addedFormDiv.innerHTML=fileTag;
     
    }
    
    
    
  /*   $(document).on("change", '#multiImg', function(event) {
 
        var target = $(this)[0];
        
 
        if(target != null){
            //------------------이미지 확장자 검사 시작--------------------------------//
            var fileNM = $(this).val();
 
            var ext = fileNM.slice(fileNM.lastIndexOf(".") + 1).toLowerCase();
 
            if (!(ext == "gif" || ext == "jpg" || ext == "png")) {
                alert("이미지파일 (.jpg, .png, .gif ) 만 업로드 가능합니다.");
                return false;
            }
            //------------------이미지 확장자 검사 종료--------------------------------//
            // 상위 요소
            var img_div = $(this).parent();
 
            var fileList = target.files ;
        
            // 파일리더기 생성
            var reader = new FileReader();
            
            // 파일 위치 읽기
            reader.readAsDataURL(fileList [0]);
            
       
            // 이미지 파일 첨부 버튼 추가 하기
            // 새로운 div 생성
            var div = document.createElement('div');
 
            index++;
 
            // 새로운 div의 className 지정
            div.className = 'image_div_'+index+'';
 
            div.innerHTML = '<label for ="image_plus_'+index+'"></label>\<input type="file" id="multiImg_'+index+'">';
            
            // 추가
            $('.image_swiper').append(div);
 
            
            // 테스트
            //alert($(this).parent().attr('class'));
            //alert(index);
            //$(this).parent().attr('class')
        }else{
            alert("이미지 없음");
        }
    }); */

		
		
		
		
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
                                     <form id="frm" name="frm" action="admin_prdinsert_process.do" enctype="multipart/form-data">
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
                                                	<select name="main" id="main" class="dataTable-dropdown dataTable-selector">
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
                                     
                                                <select name="sub" id="sub" class="dataTable-dropdown dataTable-selector">
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
                                            	<input type="file" name="thImg" id="thImg" onchange="thImgSet(this);"  value="파일선택"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>상품이미지</b></div> 
                                            <div class="col-4" id="prdFrm"> 
                                       
                                            	<input type="file"  name="multiImg" id="multiImg" value="파일선택" >
                                            	<button type="button" value="추가"  onchange="addimg()">추가</button>
                                            	</div>
                                            	
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>소개이미지</b></div><div class="col-4">
                                                <input type="file" name="infoImg" id="infoImg" value="파일선택">
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
        <script src="js/scripts.js"></script>
    </body>
</html>
