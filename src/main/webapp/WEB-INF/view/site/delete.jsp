<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>삭제페이지</title>
<link rel="stylesheet" type="text/css" media="screen" href="../css/delete.css">
</head>
<body>

<div class="container">             <!--탈퇴 양식-->
				<form method="post" action="./userDelete">
						<table class="table table-bordered table-hover" style="text-align: center; width:300px; height:350px; border: 1px soilid #dddddd; margin: 20px auto;">
								<thead>
									<tr>
											<th colspan="3"><h2>회원정보 탈퇴</h2></th>
									</tr>
								</thead>
									<tbody>							
										<tr>
												<td style="width: 70px;"><h5>비밀번호</h5></td>
												<td colspan="1"><input onkeyup="passwordCheckFunction();" class="form-control" id="userPassword1" type="password" name="userPassword1" maxlength="20" placeholder="비밀번호를 입력하세요."></td>
										</tr>	
										<tr>
												<td style="width: 70px;"><h5>비밀번호 확인</h5></td>
												<td colspan="1"><input onkeyup="passwordCheckFunction();" class="form-control" id="userPassword2" type="password" name="userPassword2" maxlength="20" placeholder="비밀번호확인을 입력하세요."></td>
										</tr>										
									</tbody>													
						</table>
			<div class= "btn" >
			<button type="button" name="btnCancel" style="margin: 50px auto; width:20%; height:20%; display:block; text-align: center;"><a href="mypage2.jsp">취소</a></button>
			<button type="submit" onclick="alert('탈퇴되었습니다.')" name="btnDelete" style="margin: 50px auto; width:20%; height:20%; display:block; text-align: center;"><a href="/team/index.jsp">탈퇴하기</a></button>
			</div>
			

</body>
</html>