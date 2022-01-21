<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>마이페이지</title>
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" type="text/css" media="screen" href="./css/site.css">
	<script src="main.js"></script> 
	<script src="./js/project.js"></script>

</head>
<body>
	<div id="main">
	<form name="frm_mypage" id ="frm_mypage" method="post">
		
	</form> 
		<div class="mypage">
			<div class=head>
				<img class="thumb" src="./img/mypage.png"> 
			</div>
			<div class="text-area">
				<h1>일반회원</h1>
				<div class="desc">개인정보 설정 <br/></div>
			</div>
			
			<ul class="list">
				<li class="item">
					<div class="left">
						<div class="name">아이디</div>	
					</div>
					<div class="right">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" maxlength="20">
					</div>
					</div>
				</li>	
				
				<li class="item">
					<div class="left">
						<div class="name">이름</div>
					</div>
					<div class="right">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" maxlength="20">
					</div>
					</div>
				</li>	
				
				<li class="item">
					<div class="left">
						<div class="name">생년월일</div>
					</div>
					<div class="right">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="생년월일" maxlength="20">
					</div>
					</div>
				</li>	
				
				<li class="item">
					<div class="left">
						<div class="name">이메일</div>
					</div>
					<div class="right">
						<div class="form-group">
						<input type="text" class="form-control" placeholder="이메일" maxlength="50">
					</div>
					</div>
				</li>	
				
				<li class="item">
					<div class="left">
						<div class="name">전화번호</div>
					</div>
					<div class="right">
						<div class="form-group">
						<input type="text" class="form-control" placeholder="전화번호" maxlength="20">
					</div>
					</div>
				</li>	
				
				<li class="item">
					<div class="left">
						<div class="name">예매내역</div>
					</div>
					<div class="right">
						<div class="form-group">
						<input type="text" class="form-control" placeholder="예매내역" maxlength="50"><input type="button" value="예매 취소" onclick="project.cancelReservation()">
					</div>
					</div>
				</li>	
			</ul>
			<div class="btn">
			<button type="button" name="btnSave" style="margin: 50px auto; width:20%; height:20%; display:block; text-align: center;"><a href="update2.jsp">수정하기</a></button>
			<button type="submit" onclick="alert('탈퇴하시겠습니까?.')" name="btnWithdraw" style="margin: 50px auto; width:20%; height:20%; display:block; text-align: center;"><a href="delete.jsp">회원탈퇴하기</a></button>	
	</div>
		</div>
	</div>
	<script src='mypage2.js'></script>

</body>
</html>