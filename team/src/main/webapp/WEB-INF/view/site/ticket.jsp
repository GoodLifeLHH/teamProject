<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/site.css">
	<script src = './js/project.js'></script>
</head>
<body>
	<div id="main">
		<div id="ticket_header">
			<p>티켓오픈</p>
		</div>
		
		<div id="ticket">
			<div class="gray">
				<!-- overflow: hidden 상태 < 더보기 하면 펼쳐지기 -->
				<div class="list_hidden">
					<p class="year">2022</p>
					<% for(int i=0; i<5; i++) { %>
					<div class="list_box">
						<div onclick='project.view()' class="list">강남심포니오케스트라 제89회 정기연주회</div>
						<p class="list_ticket">티켓오픈일</p>
						<span class="date">2021-12-10</span>
					</div>
					<% } %>
					<p class="year">2021</p>
					<% for(int i=0; i<15; i++) { %>
					<div class="list_box">
						<div onclick='project.view()' class="list">강남심포니오케스트라 제89회 정기연주회</div>
						<p class="list_ticket">티켓오픈일</p>
						<span class="date">2021-12-10</span>
					</div>
					<% } %>
				</div>
				<input type="button" value="+더보기"/>
			</div>
		</div>
	</div>
</body>
</html>