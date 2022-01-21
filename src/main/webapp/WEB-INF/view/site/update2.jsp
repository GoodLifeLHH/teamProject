<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title> 
<link rel="stylesheet" type="text/css" media="screen" href="../css/update2.css">
</head>
<body>

	<div class="container">             <!--로그인 양식-->
				<form method="post" action="./userUpdate">
						<table class="table table-bordered table-hover" style="text-align: center; width:600px; height:650px; border: 1px soilid #dddddd; margin: 75px auto;">
								<thead>
									<tr>
											<th colspan="3"><h3>회원정보 수정 양식</h3></th>
									</tr>
								</thead>
									<tbody>
										<tr>
												<td style="width: 110px;"><h5>아이디</h5></td>
												<td><input class="form-control" type="text" id="userID" name="userID" maxlength="20" placeholder="아이디를 입력하세요."></td>
										</tr>	
										<tr>
												<td style="width: 110px;"><h5>비밀번호</h5></td>
												<td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="userPassword1" type="password" name="userPassword1" maxlength="20" placeholder="비밀번호를 입력하세요."></td>
										</tr>	
										<tr>
												<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
												<td colspan="2"><input onkeyup="passwordCheckFunction();" class="form-control" id="userPassword2" type="password" name="userPassword2" maxlength="20" placeholder="비밀번호확인을 입력하세요."></td>
										</tr>	
										<tr>
												<td style="width: 110px;"><h5>이름</h5></td>
												<td colspan="2"><input  class="form-control" id="userName" type="text" name="userName" maxlength="20" placeholder="이름을 입력하세요."></td>
										</tr>
										<tr>
												<td style="width: 110px;"><h5>생년월일</h5></td>
												<td colspan="2"><input  class="form-control" id="userAge" type="number" name="userAge" maxlength="20" placeholder="생년월일을 입력하세요."></td>
										</tr>
											<tr>
												<td style="width: 110px;"><h5>성별</h5></td>
												<td colspan="2">
														<div class="form-group" style="text-align: center; margin: 0 auto;">
																<div class="btn-group" data-toggle="buttons">
																		<label class="btn btn-primary active">
																				<input type="radio" name="userGneder" autocomplete="off" value="남자" checked>남자
																		</label>
																			<label class="btn btn-primary">
																				<input type="radio" name="userGneder" autocomplete="off" value="여자">여자
																		</label>
																</div>
														</div>
												</td>
										</tr>		
										<tr>
												<td style="width: 110px;"><h5>이메일</h5></td>
												<td colspan="2"><input  class="form-control" id="userEmail" type="email" name="userEmail" maxlength="50" placeholder="이메일을 입력하세요."></td>
										</tr>		
									</tbody>													
						</table>
			<button type="submit" onclick="alert('수정되었습니다.')" name="btnUpdate" style="margin: 50px auto; width:20%; height:20%; display:block; text-align: center;"><a href="mypage2.jsp">수정하기</a></button>
			
</body>
</html>