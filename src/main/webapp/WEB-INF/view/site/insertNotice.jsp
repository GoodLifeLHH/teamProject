<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>입력</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<link rel='stylesheet' type='text/css' href='./css/insert.css'>
<script src = './js/project.js'></script>
<script src = './js/insert.js'></script>
<script>
$(function(){
	summer();
})
</script>
</head>
<body>
<div id="main">
	<div id="insert_header">
		<p>공지사항 입력</p>
	</div>


	<div id = 'insert'>
		<form	name='frm_insert' id='frm_insert' method='post'>
			<br/>
			<label>작성자</label>
			<input type='text' name ='mid' value='' required>
			<br/>
			<label>제목</label>
			<input type='text' name ='title' value ='' required>
			<br/>
			<label>날짜</label>
			<input type='date' name ='date' required>
			<br/>
			<label></label>
			<textarea id="summernote" rows="10" cols="80" name ="doc"></textarea>
			
			<input type ='hidden' name ='nowPage' value ='${page.nowPage}'>
			<input type ='hidden' name ='findStr' value ='${page.findStr}'>
	
		</form>
		
		<form name ='frm_upload' id ='frm_upload' method ='post'>
			<label>파일 첨부</label>
			<input type='file' name ='attFile' multiple='multiple'>
			<input type ='hidden' name='grp'>
			<input type ='hidden' name ='nowPage' value ='${page.nowPage}'>
			<br/>
		</form>
			<div id='btnZone'>
				<input type ='button' value ='연극 정보 저장' id='btnPlaySave' onclick='project.result()'>
				<input type ='button' value ='목록으로' id='btnNoticeSave' onclick='project.noticeList()'>
			</div>
	</div>
</div>

</body>
</html>