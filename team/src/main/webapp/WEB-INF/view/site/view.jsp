<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상세페이지</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/site.css">
	<script src = './js/board.js'></script>
</head>
<body>
	<div id="main">
		<div id="view_info">
			<span class="title">강남심포니오케스트라 제89회 정기연주회</span>
			<table>
				<tr>
					<td class="mdate">기간</td>
					<td>2021-12-29(수)</td>
				</tr>
				<tr>
					<td class="time">시간</td>
					<td>19:30</td>
				</tr>
				<tr>
					<td class="location">장소</td>
					<td>콘서트홀</td>
				</tr>
				<tr>
					<td class="age">입장연령</td>
					<td>8세 이상</td>
				</tr>
				<tr>
					<td class="minute">관람시간(분)</td>
					<td>120</td>
				</tr>
				<tr>
					<td class="price">가격</td>
					<td>R석 3만원 / S석 2만원 / A석 1만원</td>
				</tr>
				<tr>
					<td class="ask">문의</td>
					<td>02-6712-0533</td>
				</tr>
			</table>
			<img src="img/poster1.gif">
			<input type="button" value="예매" onclick='project.reserve();'>
		</div>
		<div id="view">
			<span>작품소개</span>
			<div class="gray">
				<img src="img/poster1.gif">
				<img src="img/poster1info.gif">
				<br/>
				<p></p>
				<a href="/">홈으로</a>
			</div>
		</div>
	</div>
</body>
</html>