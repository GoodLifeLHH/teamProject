<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/site.css">
	<script src = './js/project.js'></script>
</head>
<body>
	<div id="main">
		<div class="search_space">
			<input type="search" name="findStr" placeholder="검색어를 입력하세요."/>
			<input type="button" value="검색">
		</div>
		<div class="result_space">
			<p>
				<img src="./img/search-btn2.gif" class="search_btn">
				<span>"랑랑"</span>에 대한 검색결과는 <span>총 7건</span>입니다.
			</p>
			<div class="search_page">
				<div class="search_title">공연/전시
					<span>총 5건</span>
				</div>
				<table>
					<tr>
						<th>공연/전시</th>
						<th>기간</th>
						<th>장소</th>
						<th>링크</th>
					</tr>
					<% for(int i=0; i<5; i++) { %>
					<tr>
						<td>
							<span class="list_title">음악</span>
							랑랑 피아노 리사이틀
						</td>
						<td>2022/02/23(수) 19:30</td>
						<td>콘서트홀</td>
						<td onclick="project.view()">
							<input type="button" value="바로가기" class="view_btn"/>
						</td>
					</tr>
					<% } %>
				</table>
				
				<div id="page">

					<input type="button" value="처음" id="btnFirst" onclick=""/>
					<input type="button" value="이전" id="btnPrev" onclick=""/>
	
					<c:forEach var="i" begin="1" end="5">
						<input type="button" value="${i }" onclick="brd.page(${i})"
						class="${(i==page.nowPage)? 'here' : '' }"/>
					</c:forEach>
					<input type="button" value="다음" id="btnNext" onclick=""/>
					<input type="button" value="끝" id="btnLast" onclick=""/>
	
				</div>
			</div>
		</div>
	</div>
</body>
</html>