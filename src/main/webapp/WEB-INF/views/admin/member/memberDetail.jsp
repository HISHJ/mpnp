<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="회원관리 상세내역"%>
    


    
  <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회원관리-상세보기</title>
        <link href="css/styles.css" rel="stylesheet" />
        <style type="text/css">
        
        body{background-color : #fff;}
        
        </style>
        
               <!--제이쿼리-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
      <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
      <script type="text/javascript">
      $(function(){
    	 $("#btnClose").click(function(){
    		 	//location.href="";
    	 });//click
    	 
    	 $("#btnDelete").click(function(){
    		 	if(confirm("삭제하시겠습니까?")){
			 		 $("#userDetail").submit();  
				}//confirm 
				
    		 
    	 });//click
    	 
      });//ready
      
      
      </script>
      
    </head>
    <body>
     

	    
    <jsp:setProperty property="*" name="admVO"/> 
     
     
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
               <form name="userDetail" id="userDetail" method="post" action="">
                    <div class="container">
                        <div class="row justify-content-center">
                            <!-- col lg 5 - 크기 조정 -->
                            <div class="col-lg-8">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header navy bg-dark "><h3 class="text-start text-white font-weight-light my-4" style="font-weight: bold;">회원정보 상세</h3></div>
                                    <div class="card-body">

                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>이름</b></div> <div class="col-4"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>아이디</b></div> <div class="col-4"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>닉네임</b></div> <div class="col-4"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>이메일</b></div> <div class="col-4"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>휴대전화</b></div> <div class="col-4"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>성별</b></div> <div class="col-4"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>누적금액</b></div> <div class="col-4"></div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>상태</b></div><div class="col-2">정상</div>
                                            <div class="col-2">
                                            	<input type="button" name="userDeleteBtn" id="btnDelete" value="회원삭제">
                                            </div>
                                        </div>												
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-2"><b>회원등급</b></div> 
                                            <div class="col-2">
	                                            <select name="genreId" class="dataTable-dropdown dataTable-selector" >
	                                            <option>NEW</option>
												<option>SILVER</option>
												<option>GOLD</option>
												<option>VIP</option>
	                                            </select>
                                            </div>
                                            <div class="col-2">
                                            	<input type="button" name="userDeleteBtn" id="btnDelete" value="등급변경">
                                            </div>
                                        </div>
								
                                            
                                                <div class="mt-4 mb-0">
                                                    <div class="col text-center">
                                                        <button type="button" class="btn btn-light btn-sm"  id ="btnClose">닫기</button>
                                                   
                                                </div>
                                            </div>
                                    
                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  </form> 
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
