<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> 
	<title>ticket</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/site.css">
	<link rel="stylesheet" type="text/css" href="./css/button.css">
	<script src = './js/project.js'></script>
</head>
<body>
	<div id="main">
		<div id="ticket_header">
			<p>티켓오픈</p>
		</div>
		
		<div id="ticket">
			<div class="gray">
				<c:choose>
				<c:when test = "${sessionScope.vo.mid =='root'}">
				<input type="button" value="글쓰기" class="new" onclick='project.insertPlay()'/>
				</c:when>
				</c:choose>
				<!-- overflow: hidden 상태 < 더보기 하면 펼쳐지기 -->
				<div class="list_hidden">
					<p class="year">2022</p>
					<c:forEach var="vo" items="${list }">
						<div class='list_box' onclick="project.view(${vo.serial})">
						<div class="list">${vo.title }</div>
							<p class="list_ticket">티켓오픈일</p>
							<span class="date">${vo.date }</span>
							<input type='hidden' name='serial' value="${vo.serial }">
						</div>
					</c:forEach>
					<div id = 'btnZone'>
						<c:if test="${page.startPage>1 }">
							<input type ='button' value ='처음' id='btnFirst' onclick='project.page(1)'/>
							<input type ='button' value ='이전' id='btnPrev' onclick='project.page(${page.startPage-1})'/>
						</c:if>
						
						<c:forEach var='i' begin="${page.startPage }" end="${page.endPage }">
							<input type ='button' value ='${i}' class='${(i==page.nowPage)? 'here':''}' onclick='project.page(${i})'/>
						</c:forEach>
						
						<c:if test="${page.endPage<page.totPage }">
							<input type ='button' value ='다음' id='btnNext' onclick='project.page(${page.endPage+1})'/>
							<input type ='button' value ='끝' id='btnLast' onclick='project.page(${page.totPage})'/>
						</c:if>
					</div>
				</div>
				
			</div>
		</div>
		<form id='frm_project'>
			<input type='hidden' name='serial'>
			<input type ='hidden' name='nowPage' value='${page.nowPage}'>
		</form>
	</div>
</body>
</html>