<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인페이지</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/index.css">
	<script src = './js/project.js'></script>
	<link rel="icon" href="./img/login-logo.gif">
</head>
<body>
	<%
	String sub="site/main.jsp";
	if( request.getParameter("sub") != null){
		sub = request.getParameter("sub");
	}
	%>
	
	<div id="index">
	<%@include file="header.jsp" %>
	
	<section>
		<jsp:include page="<%=sub %>"></jsp:include>
		<div class="top-btn">
			<a href="#top">TOP</a>
		</div>
	</section>
	
	<%@include file="footer.jsp" %>
	</div>
</body>
</html>