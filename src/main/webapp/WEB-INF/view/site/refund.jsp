<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title> 
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/site.css">
	<script src = './js/board.js'></script>
</head>
<body>
	<div id="main">
		<div id="join_header">
			<p>예매취소</p>
		</div>
		<div id="join">
			<div id="join_box">
				<div class="box">
					<form name="frm_join" method="post" action="">
						<img src="img/login-logo.gif">
						<label>제목</label>
						<input type="text" readonly/>
						<br/>
						<label>날짜</label>
						<input type='text' readonly>
						<label>비밀번호</label>
						<input type="password" placeholder="비밀번호를 입력하세요." required/>
						<br/>
						<input type="submit" value="예매취소" onclick='project.refund();'>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>