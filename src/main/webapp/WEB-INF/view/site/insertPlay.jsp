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
	summer2();
})
</script>
</head>
<body>
<div id="main">
	<div id="insert_header">
		<p>공연 입력</p>
	</div>


	<div id = 'insert'>
		<form	name='frm_insert' id='frm_insertPlay' method='post'>
			<br/>
			<label>제목</label>
			<input type='text' name ='title' value ='제목' >
			<label style="margin-left:165px;">배우, 감독</label><input type='text' name ='detail' value='배우'>
			<br/>
			<label>공연 날짜</label>
			<input type='date' name ='date' >
			<br/>
			<label>시간</label>
			<input type='time' name ='startTime' width='30'>
			<div id='seatPrice'>
			<label>티켓 가격</label>
			<br/>
			<label>R석 </label><input type='number' name ='rPrice' >원
			<br/>
			<label>S석 </label><input type='number' name ='sPrice' >원
			<br/>
			<label>A석 </label><input type='number' name ='aPrice' >원
			</div>
			<br/>
			<label>장소</label>
			<input type='text' name ='theater'>
			<br/>
			<label>총 좌석</label><input type='number' name='seats' value='120' >
			<br/>
			<label>입장연령</label>
			<input type="text" name ='entryAge' >
			<br/>
			<label>관람시간(분)</label>
			<input type='number' name ='running_time' >
			<br/>
			
			<br/>
			<label>문의 연락처</label>
			<input type='text' name ='ask' >
			<br/>
			<br/>
			<label>메인 포스터</label>
			<textarea id="summernote" rows="10" cols="80" name ="main_img"></textarea>
			<label>상세 포스터</label>
			<textarea id="summernote2" rows="10" cols="80" name ="detail_img"></textarea>
		</form>
		
		<form name ='frm_upload' id ='frm_upload' method ='post'>
			<label>파일 첨부</label>
			<input type='file' name ='attFile' multiple='multiple'>
			<input type ='hidden' name='grp'>
			<br/>
		</form>
			<div id='btnZone'>
				<input type ='button' value ='연극 정보 저장' id='btnPlaySave' onclick='project.insertPlaySave()'>
				<input type ='button' value ='목록으로' id='btnNoticeSave' onclick='project.ticket()'>
			</div>
	</div>
</div>

</body>
</html>