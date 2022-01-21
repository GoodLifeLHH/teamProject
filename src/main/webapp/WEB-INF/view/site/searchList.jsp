<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/site.css">
	<link rel="stylesheet" type="text/css" href="./css/button.css"> 
	<script src = './js/project.js'></script>
</head>
<body>
	<div id="main">
		<form class="search_space" name="frm_searchList" method="post" id="frm_searchList">
				<input type="search" name="findStr" placeholder="검색어를 입력하세요." style="color:#000;" value='${page.findStr}'/>
				<input type="button" value="검색" onclick="project.searchList()">
				<input type="hidden" name = "nowPage" value='1'>
		</form>
		<div class="result_space">
			<p>
				<img src="./img/search-btn2.gif" class="search_btn">
				<span>${page.findStr }</span>에 대한 검색결과는 <span>총 ${page.totSize}건</span>입니다.
			</p>
			<div class="search_page">
				<div class="search_title">공연/전시
					<span>총 ${page.totSize}건</span>
				</div>
				<table>
					<tr>
						<th>공연/전시</th>
						<th>기간</th>
						<th>장소</th>
						<th>링크</th>
					</tr>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td>
								<span class="list_title">연극</span>
								${vo.title }
							</td>
							<td>${vo.date } / ${vo.startTime }</td>
							<td>${vo.theater }</td>
							<td onclick="project.view(${vo.serial})">
								<input type="button" value="바로가기" class="view_btn"/>
							</td>
						</tr>
					</c:forEach>
				</table>
				
				<div id = 'btnZone'>
						<c:if test="${page.startPage>1 }">
							<input type ='button' value ='처음' id='btnFirst' onclick='project.searchPage(1)'/>
							<input type ='button' value ='이전' id='btnPrev' onclick='project.searchPage(${page.startPage-1})'/>
						</c:if>
						
						<c:forEach var='i' begin="${page.startPage }" end="${page.endPage }">
							<input type ='button' value ='${i}' class='${(i==page.nowPage)? 'here':''}' onclick='project.searchPage(${i})'/>
						</c:forEach>
						
						<c:if test="${page.endPage<page.totPage }">
							<input type ='button' value ='다음' id='btnNext' onclick='project.searchPage(${page.endPage+1})'/>
							<input type ='button' value ='끝' id='btnLast' onclick='project.searchPage(${page.totPage})'/>
						</c:if>
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