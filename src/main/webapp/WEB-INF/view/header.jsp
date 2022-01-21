<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<nav id="menu_btn"></nav>
	<!-- 메뉴바 display none 상태 -->
	<div id="menu_bar">
		<img src="img/close-btn.png" class="close_btn" id="close_btn"> 
		<div onclick='project.login()'>로그인</div>
		<div onclick='project.join()'>회원가입</div>
		<div onclick='project.mypage()'>마이페이지</div>
		<div onclick='project.information()'>예매 안내</div>
		<div onclick='project.qna()'>Q&amp;A</div>
		<div onclick='project.maps()'>오시는길</div>
	</div>
	<a href="/" id="logo"></a>
	
	<img src="img/search-btn.gif" class="search_btn" id='search_btn'>
	<!-- 서치바 display none 상태 -->
	<div id="search_bar">
		<form name="frm_search" method="post" id="frm_search">
			<input type="search" name="findStr" placeholder="검색어를 입력하세요." value='${page.findStr}'>
			<img src="img/search-btn.gif" class="search_btn" onclick="project.search()">
			<img src="img/close-btn.png" class="close_btn" id='close_searchBtn'>
			<input type="hidden" name = "nowPage" value='1'>
			<input type="hidden" name="mid" value="${sessionScope.vo.customerName }">
		</form>
	</div>
	<form name = "frm_login" id="frm_login" method = "post" action="logout">
		<input type="hidden" name="mid" value="${sessionScope.vo.customerName }">
		<input type="hidden" name="customerID" value="${sessionScope.vo.mid }">
		<c:choose>
			<c:when test = "${empty sessionScope.vo.customerName }">
				<a href="join" id="join">회원가입</a>
				<a id="login" onclick="project.login()">로그인</a>
			</c:when>
			<c:otherwise>
				<input id = "logOut" type = 'button' value = '로그아웃' id = 'btnLogout' onclick="project.logout()">
				<output id="customerName">${sessionScope.vo.customerName }님 안녕하세요!</output>
			</c:otherwise>
		</c:choose>
	</form>
	
</header>