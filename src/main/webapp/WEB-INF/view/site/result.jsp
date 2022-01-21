<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>결과</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/result.css">
	<script src = './js/project.js'></script> 
</head>
<body>
	<div id="resultMain">
		<div id="result_header">
		
		</div>
		<div id="result">
			<div id="result_box">
			<img src="img/login-logo.gif">
				<div class="box">
					<form name="frm_result" method="post" action="">
						<output id ='msg'>${msg }</output>
						<input type="button" value="홈으로" onclick='project.main();'>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>