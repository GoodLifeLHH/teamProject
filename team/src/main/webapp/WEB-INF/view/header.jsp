<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
	<nav id="menu_btn"></nav>
	<!-- 메뉴바 display none 상태 -->
	<div id="menu_bar">
		<img src="img/close-btn.png" class="close_btn" id="close_btn">
		<div onclick='project.login()'>로그인</div>
		<div onclick='project.join()'>회원가입</div>
		<div>마이페이지</div>
		<div>예매 안내</div>
		<div>Q&amp;A</div>
		<div onclick='project.maps()'>오시는길</div>
	</div>
	<a href="/" id="logo"></a>
	
	<img src="img/search-btn.gif" class="search_btn" id='search_btn'>
	<!-- 서치바 display none 상태 -->
	<div id="search_bar">
		<form name="frm_search" method="post" id="frm_search">
			<input type="search" name="findStr" placeholder="검색어를 입력하세요.">
			<img src="img/search-btn.gif" class="search_btn" onclick="project.search()">
			<img src="img/close-btn.png" class="close_btn" id='close_searchBtn'>
		</form>
	</div>
	<a href="join" id="join">회원가입</a>
	<a href="login" id="login">로그인</a>
	
</header>