<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/site.css">
	<script src = './js/board.js'></script>
</head>
<body>
	<div id="main">
		<div id="login_header">
			<p>로그인</p>
		</div>
		<div id="login">
			<div id="login_box">
				<div class="box">
					<form name="frm_login" method="post" action="">
						<img src="img/login-logo.gif">
						<input type="text" placeholder="아이디를 입력하세요."/>
						<br/>
						<input type="password" placeholder="비밀번호를 입력하세요."/>
						<input type="submit" value="로그인">
						<br/>
						<a href="join">회원가입</a>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>