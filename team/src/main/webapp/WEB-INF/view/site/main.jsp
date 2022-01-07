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
		<div id="poster_info">
			<p class="location">콘서트홀</p>
			<a href="view" class="subject">강남심포니오케스트라 제89회 정기연주회</a>
			<p class="mdate">2021-12-29(수) 19:30</p>
			<a href="view" class="sub_info">자세히보기</a>
		</div>
		<div id="poster">
			<div id="mini_poster" onclick='project.view()'>
				<img src="img/poster1.gif">
				<img src="img/poster2.gif">
				<img src="img/poster3.gif">
				<img src="img/poster4.gif">
				<img src="img/poster5.gif">
				<img src="img/poster1.gif">
			</div>
			<div id="big_poster" onclick='project.view()'>
				<img src="img/poster1.gif">
			</div>
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
				<% for(int i=0; i<5; i++) { %>
				<div id="item">
					<div onclick="project.view()"
					class="subject">이상의 얼마나 전인 그들의 것은 싹이 반짝이는 있는 이것이다. 힘차게 내려온 밥을 눈에 위하여, 가는 철환하였는가?</div>
					<span class="mdate">2021-12-28</span>
				</div>
				<% } %>
			</div>
		</div>
	
	</div>
</body>
</html>