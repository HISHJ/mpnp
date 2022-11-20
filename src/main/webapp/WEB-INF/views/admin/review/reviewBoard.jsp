<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info="scriptlet의 사용"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>상품관리-메인</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="http://localhost/mpnp/3rdAdmin/css/styles.css"
	rel="stylesheet" />

<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!--제이쿼리-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>


</head>
<body class="sb-nav-fixed">
	<script type="text/javascript">
		$(function() {
			$("#signDateSearchBtn").click(function() {
				$("#rsrvtDate").submit();
			})//end get date parameter

			$("#showSatusSearchBtn").click(function() {
				$("#rsrvtStatus").submit();
			})//end get status parameter
		})//ready
	</script>

	<script>
		function getHiddenVal(reviewId) {
			alert(reviewId);
			$("#reviewId").val(reviewId);
			
			$("#resultFrm").submit();

		}//getHiddenVal
	</script>
	
	
	<script>
	$(function(){
		$("#searchBtn").click(function(){
			//alert("asdfasdfasdf");
			$("#searchKeywordFrm").submit();
		})
	})
	</script>

	<!-- 여기서부터 <nav>-->
	<c:import url="http://localhost/mpnp/3rdAdmin/admin_common_header.jsp" />
	<!-- -여기까지 <div id="layoutSidenav_content"> 전  -->


	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4">후기관리</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">review management board</li>
				</ol>



				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> 후기조회
					</div>
					<div class="card-body">

						<!-- 다 검색으로 조회가능 하지만 우선 만듬 -->
						<div class="searchForm" style="margin-top:20px;">
						<form name="searchKeywordFrm" id="searchKeywordFrm" action="admin_review_list.do">
							<div class="dataTable-top">
							<label>닉네임 </label>
							<input type="text" name="nick" class="dataTable-input"	style="width: auto; display: inline-block;">
							<!-- <input type="button" id="nameSearchBtn" name="nameSearchBtn" value="검색"> -->
							</div>
							<div class="dataTable-top">
							<label>내용 </label>
							<input type="text" name="contents" class="dataTable-input" style="width: auto; display: inline-block;">
							</div>
						</form>
							<input type="button" id="searchBtn" name="searchBtn" value="검색" style="float: right; margin-top: -50px; width:100px;">
						</div>
						<!-- <form name="" id=>
							<div class="dataTable-top"></div>
							<label>닉네임 </label> <input type="text" name="name"
								class="dataTable-input"
								style="width: auto; display: inline-block;"> <input
								type="button" id="nameSearchBtn" name="nameSearchBtn" value="검색">
						</form>

						<form name="" id=>
							<div class="dataTable-top"></div>
							<label>내용 </label> <input type="text" name="name"
								class="dataTable-input"
								style="width: auto; display: inline-block;"> <input
								type="button" id="nameSearchBtn" name="nameSearchBtn" value="검색">
						</form> -->

						<!-- <form name="" id="">
							<div class="dataTable-top"></div>
							<div>
								<label>신고수 </label> <select name="genreId"
									class="dataTable-selector" aria-label="Default select example">
									<option>높은순</option>
									<option>적은순</option>
									<option></option>
								</select> <input type="button" id="genreSearchBtn" name="genreSearchBtn"
									value="검색">
							</div>
						</form> -->


					</div>
				</div>


				<form id="resultFrm" name="resultFrm" action="admin_review_detail_form.do"	method="get">
					<input type="hidden" name="reviewId" id="reviewId">

					<table id="datatablesSimple">

						<thead>
							<tr>
								<th>후기코드</th>
								<th>닉네임</th>
								<th>내용</th>
								<th>등록일자</th>
								<th>신고수</th>
								<th>관리</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>후기코드</th>
								<th>닉네임</th>
								<th>내용</th>
								<th>등록일자</th>
								<th>신고수</th>
								<th>관리</th>
							</tr>
						</tfoot>
						<tbody>
						<c:choose>
						<c:when test="${ reviewList.size() > 0 }">
							<c:forEach var="review" items="${reviewList }">
								<%-- <input type="hidden" value="${review.reviewId }"> --%>
							<tr>
								<!-- <td>R_1234556</td> -->
								<td><c:out value="${review.reviewId }"/></td>
								<td><c:out value="${review.nick }"/></td>
								<td><c:out value="${review.contents }"/></td>
								<td><c:out value="${review.inputDate }"/></td>
								<td>12</td>
								<td><input type="button" value="상세보기"
									onClick="getHiddenVal('${review.reviewId }')"></td>
							</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="6">조회된 후기가 없습니다.</td>
							</tr>
						</c:otherwise>
						</c:choose>
						</tbody>
					</table>

				</form>
			</div>
		</main>
	</div>
	<!-- 여기서부터<footer -->
	<c:import url="http://localhost/mpnp/3rdAdmin/admin_common_footer.jsp" />
	