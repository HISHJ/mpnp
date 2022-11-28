<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="설빈" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://211.63.89.142/spring_mvc/common/css/main_v1_220901.css">
<style type="text/css">

</style>
<!--JQuery Google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 <c:if test="${ cnt eq 1 }">
<script type="text/javascript">
$(function(){
	alert("주문상태가 성공적으로 변경되었습니다.");
	location.href="http://localhost/mpnp//admin_orderMain_list.do";
})
</script>
</c:if>
 <c:if test="${ cnt ne 1 }">
 <script type="text/javascript">
$(function(){
	alert("주문상태가 변경되지 않았습니다.");
	location.href="orderMain_list.do";
})
</script>
</c:if>
</head>
<body>

</body>
</html>