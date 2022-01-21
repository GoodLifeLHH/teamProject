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
			<p>회원가입</p>
		</div>
		<div id="join">
			<div id="join_box">
				<div class="box">
					<form name="frm_join" method="post" action="">
						<img src="img/login-logo.gif">
						<label>아이디</label>
						<input type="text" placeholder="아이디를 입력하세요." required/>
						<input type="button" value="중복확인"/>
						<br/>
						<label>비밀번호</label>
						<input type="password" placeholder="비밀번호를 입력하세요." required/>
						<br/>
						<label>비밀번호 확인</label>
						<input type="password" placeholder="비밀번호를 입력하세요." required/>
						<output>✔️</output> <!-- display: noen 상태 -->
						<br/>
						<label>이름</label>
						<input type="text" placeholder="이름을 입력하세요." required/>
						<br/>
						<label>이메일</label>
						<input type="text" placeholder="이메일을 입력하세요." required/>
						<br/>
						<input type="submit" value="회원가입">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>