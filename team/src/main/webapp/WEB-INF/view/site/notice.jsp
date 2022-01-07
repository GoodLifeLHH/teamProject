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
		<div id="notice_header">
			<p>공지사항</p>
		</div>
		
		<div id="notice">
			<div class="gray">
				<!-- overflow: hidden 상태 < 더보기 하면 펼쳐지기 -->
				<div class="list_hidden">
					<p class="year">2022</p>
					<% for(int i=0; i<5; i++) { %>
					<div class="list_box">
						<p class="list_title">안내</p>
						<div onclick='project.noticeList()' class="list">2021 예술의전당 12월 청년미술상점 안내</div>
						<span class="date">2021-12-30</span>
					</div>
					<% } %>
					<p class="year">2021</p>
					<% for(int i=0; i<15; i++) { %>
					<div class="list_box">
						<p class="list_title">안내</p>
						<div onclick='project.noticeList()' class="list">2021 예술의전당 12월 청년미술상점 안내</div>
						<span class="date">2021-12-30</span>
					</div>
					<% } %>
				</div>
				<input type="button" value="+더보기"/>
			</div>
		</div>
	</div>
</body>
</html>