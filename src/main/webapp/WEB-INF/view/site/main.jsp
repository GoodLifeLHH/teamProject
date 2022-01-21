<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인 페이지</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script> 
	<link rel="stylesheet" type="text/css" href="./css/site.css">
	<script src = './js/project.js'></script>
</head>
<body>
	<div id="main">
		<div id="poster_info">
			<c:forEach var="vo" items="${list }"  end= "0">
				<p class="location">${vo.theater }</p>
				<a onclick="project.view(${vo.serial})" class="subject">${vo.title }</a>
				<p class="mdate">${vo.date} ${vo.startTime }</p>
				<a onclick="project.view(${vo.serial})" class="sub_info">자세히보기</a>
			</c:forEach>
		</div>
		<div id="poster">
			<c:forEach var="vo" items="${list }"  end= "5">
				<div id="mini_poster" onclick='project.view(${vo.serial})'>
					${vo.main_img }
					<div id ="miniPoster"></div>
				</div>
			</c:forEach>
			<c:forEach var="vo" items="${list }"  end= "0">
		<div id="big_poster" onclick="project.view(${vo.serial})">
				${vo.main_img }
			</div>
			</c:forEach>
		</div>
		
		<div id="items">
			<div id="item_list">
				<div onclick='project.notice()' class="title">공지사항</div>
				<% for(int i=0; i<5; i++) { %>
				<div id="item">
					<div onclick='project.noticeList()'
					class="subject">이상의 얼마나 전인 그들의 것은 싹이 반짝이는 있는 이것이다. 힘차게 내려온 밥을 눈에 위하여, 가는 철환하였는가?</div>
					<span class="mdate">2021-12-28</span>
				</div>
				<% } %>
			</div>
			
			<div id="item_list">
				<div onclick='project.ticket()' class="title">티켓오픈</div>
				<c:forEach var="vo" items="${list }"  end= "4">
					<div id="item" onclick="project.view(${vo.serial})">
						<div class="subject">${vo.title }</div>
						<span class="mdate">${vo.date }</span>
						<div class='serial' style="display:none;">${vo.serial }</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<form id='frm_project'>
			<input type='hidden' name='serial'>
		</form>
	</div>
</body>
</html>