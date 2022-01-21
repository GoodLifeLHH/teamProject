<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<span class="title">${vo.title }</span>
			<table>
				<tr>
					<td class="mdate">기간</td>
					<td>${vo.date }</td>
				</tr>
				<tr>
					<td class="time">시간</td>
					<td>${vo.startTime }</td>
				</tr>
				<tr>
					<td class="location">장소</td>
					<td>${vo.theater }</td>
				</tr>
				<tr>
					<td class="age">입장연령</td>
					<td>${vo.entryAge }</td>
				</tr>
				<tr>
					<td class="minute">관람시간(분)</td>
					<td>${vo.running_time }</td>
				</tr>
				<tr>
					<td class="price">가격</td>
					<td>${vo.rPrice }원 / ${vo.sPrice }원 / ${vo.aPrice }원</td>
				</tr>
				<tr>
					<td class="ask">문의</td>
					<td>${vo.ask }</td>
				</tr>
			</table>
			${vo.main_img }
			<input type="button" value="예매" onclick='project.reserve();'>
		</div>
		<div id="view">
			<span>작품소개</span>
			<div class="gray">
			<div id="doc_img">
				${vo.detail_img }
			</div>
				<a href="/">홈으로</a>
				<form id = "frm_project" action="post">
					<input type="hidden" name="serial" value='${vo.serial}'>
					<input type="hidden" name = 'detail' value ="${vo.detail }">
				</form>
				<c:choose>
				<c:when test = "${sessionScope.vo.mid =='root'}">
				<input type ='button' value='수정하기' onclick='project.insertPlayModify(${vo.serial})'>
				<input type ='button' value='삭제하기' onclick='project.deletePlayInfo()'>
				</c:when>
				</c:choose>
			</div>
		</div>
	</div>
</body>
</html>