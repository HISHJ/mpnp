<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="회원관리 상세내역"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    


    
  <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회원관리-상세보기</title>
        <link href="http://localhost/mpnp/3rdAdmin/css/styles.css" rel="stylesheet" />
        <style type="text/css">
        
        body{background-color : #fff;}
        
        </style>
        
               <!--제이쿼리-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
      <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
      <script type="text/javascript">
      $(function(){
    	  $("#btnRemoveMember").click(function(){
	    		$("#removeMemberFrm").submit();
  		 });
    	  
    	  $("#btnModifyGrade").click(function(){
    		$("#modifyGradeFrm").submit();
  		 });
      });
      
      
      </script>
      
    </head>
    <body>
     

        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <!-- col lg 5 - 크기 조정 -->
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header navy bg-dark "><h3 class="text-start text-white font-weight-light my-4" style="font-weight: bold;">회원정보 상세</h3></div>
                                    <div class="card-body">

                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>이름</b></div> <div class="col-4">${member.name }</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>아이디</b></div> <div class="col-4">${member.id }</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>닉네임</b></div> <div class="col-4">${member.nick }</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>휴대전화</b></div> <div class="col-4">${member.phone }</div>
                                        </div>
                                        <div class="dataTable-top"></div>
                                        <form id="removeMemberFrm" action="admin_m_remove_process.do" method="get">
                                        <div class="row">
                                        <input type="hidden" name="id" id="id" value="${member.id }">
                                            <div class="col-3"><b>상태</b></div><div class="col-3">${member.status }</div>
                                        	<c:if test="${ empty quitmember.id }">
                                            <div class="col-4"><input type="button" name="btnRemoveMember" id="btnRemoveMember" value="회원삭제"></div>
                                        	</c:if>
                                        </div>	
                                        </form>
                                        <div class="dataTable-top"></div>
                                        <form id="modifyGradeFrm" action="admin_m_grade_process.do" method="get">
                                        <div class="row">
                                        <input type="hidden" name="id" id="id" value="${member.id }">
                                            <div class="col-3"><b>회원등급</b></div> 
                                            <div class="col-3">
                                        	<c:if test="${ empty quitmember.id }">
	                                            <select name="gradeid" class="dataTable-dropdown dataTable-selector" >
	                                            <option ${member.gradeid eq 'G1'?"selected='selected'":""}>G1</option>
												<option ${member.gradeid eq 'G2'?"selected='selected'":""}>G2</option>
					 							<option ${member.gradeid eq 'G3'?"selected='selected'":""}>G3</option>
												<option ${member.gradeid eq 'G4'?"selected='selected'":""}>G4</option>
	                                            </select>
	                                        </c:if>
                                            </div>
                                        	<c:if test="${ empty quitmember.id }">
                                            <div class="col-4">
                                            	<input type="button" name="btnModifyGrade" id="btnModifyGrade" value="등급변경">
                                            </div>
                                            </c:if>
                                         </div>
                                         </form>
                                        <!-- 가입한 친구면 가입일, 탈퇴한 친구면 탈퇴일 보여주기 -->
                                        <c:if test="${ empty quitmember.id }">
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>가입일</b></div> <div class="col-4">${member.inputdate }</div>
                                        </div>
                                        </c:if>
                                        
                                        <c:if test="${ not empty quitmember.id }">
                                        <div class="dataTable-top"></div>
                                        <div class="row">
                                            <div class="col-3"><b>탈퇴일</b></div> <div class="col-4">${quitmember.inputdate }</div>
                                        </div>
                                        </c:if>
                                        
                                        
								
                                            
                                                <div class="mt-4 mb-0">
                                                    <div class="col text-center">
                                                        <button type="button" class="btn btn-light btn-sm" id="btnClose" onclick="history.back()">닫기</button>
                                                   
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
